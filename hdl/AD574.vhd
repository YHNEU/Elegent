--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: AD574.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::ProASIC3> <Die::A3P1000> <Package::208 PQFP>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity AD574 is
  port (
    sys_clk   : in std_logic; --! 时钟
    sys_rest  : in std_logic; --! 复位
    sts       : in std_logic; --! 转换结束标志位 0 -> 1(buf)
    conver    : in std_logic; --! 转换开始标志，高电平读取
    data_in   : in std_logic_vector(11 downto 0); --! 接收的AD574数据(AD采样输入数据)
    addr_over : in std_logic; --! 所有通道选通结束(addr_manage)
    data_ad   : out std_logic_vector(11 downto 0); --! 输出的数据(buf)
    ce        : out std_logic; --! 使能信号，高有效			
    cs        : out std_logic; --! 使能信号（不用，常置0），低有效
    rc        : out std_logic; --! 读和转换使能，低电平转换，高电平读取
    ad_over   : out std_logic --! 读取结束标志位，高电平读取结束。(buf)

  );
end AD574;

architecture architecture_AD574 of AD574 is

  type state is (S0, S1, S2, S3, S4, pr_S1);
  signal pr_state, nx_state                                      : state;
  signal cnt_rc                                                  : std_logic_vector(3 downto 0);
  signal sts_ris, sts_ris1, sts_ris2, sts_ris3                   : std_logic;
  signal pr_S1_flag, S0_flag, S1_flag, S2_flag, S3_flag, S4_flag : std_logic;
  signal conver_ris, conver_ris1, conver_ris2, conver_ris3       : std_logic;
begin

  process (sys_rest, sys_clk) --! 判断sts下降沿
  begin
    if (sys_rest = '0') then
      sts_ris  <= '0';
      sts_ris1 <= '0';
      sts_ris2 <= '0';
      sts_ris3 <= '0';
    elsif (sys_clk'event and sys_clk = '1') then
      sts_ris1 <= sts;
      sts_ris2 <= sts_ris1;
      sts_ris3 <= sts_ris2;
      sts_ris  <= (not sts_ris2) and sts_ris3;
    end if;
  end process;
  process (sys_rest, sys_clk) --! 判断conver上升沿
  begin
    if (sys_rest = '0') then
      conver_ris  <= '0';
      conver_ris1 <= '0';
      conver_ris2 <= '0';
      conver_ris3 <= '0';
    elsif (sys_clk'event and sys_clk = '1') then
      conver_ris1 <= conver;
      conver_ris2 <= conver_ris1;
      conver_ris3 <= conver_ris2;
      conver_ris  <= conver_ris2 and (not conver_ris3);
    end if;
  end process;
  process (sys_rest, sys_clk) --! 开始转换，rc -> 0， 计数320ns后，ce -> 1		
  begin
    if (sys_rest = '0') then
      pr_state <= S0;
      cnt_rc   <= (others => '0');
      cs       <= '0';
      ce       <= '0';
      rc       <= '1';
      ad_over  <= '0';
      data_ad  <= (others => '0');
    elsif (sys_clk'event and sys_clk = '1') then
      pr_state <= nx_state;
      if (S0_flag = '1') then --! 初始化状态
        ce      <= '0';
        rc      <= '1';
        cs      <= '0';
        ad_over <= '0';
        if (addr_over = '1') then
          data_ad <= (others => '0');
        end if;
      elsif (pr_S1_flag = '1') then
        rc     <= '0';
        cnt_rc <= cnt_rc + '1';
      elsif (S1_flag = '1') then
        cnt_rc <= (others => '0');
      elsif (S2_flag = '1') then
        rc <= '1';
      elsif (S3_flag = '1') then
        ce <= '1';
      elsif (S4_flag = '1') then
        data_ad(11 downto 0) <= data_in;
        ad_over              <= '1';
      end if;
    end if;
  end process;
  process (sys_rest, pr_state, conver_ris, cnt_rc, sts_ris)
  begin
    if (sys_rest = '0') then
      S0_flag    <= '0';
      pr_S1_flag <= '0';
      S1_flag    <= '0';
      S2_flag    <= '0';
      S3_flag    <= '0';
      S4_flag    <= '0';
    end if;
    case pr_state is
      when S0 => --! 初始化状态
        S0_flag    <= '1';
        pr_S1_flag <= '0';
        S1_flag    <= '0';
        S2_flag    <= '0';
        S3_flag    <= '0';
        S4_flag    <= '0';
        if (conver_ris = '1') then
          nx_state <= pr_S1;
        else
          nx_state <= S0;
        end if;
      when pr_S1 => --! 准备开始
        S0_flag    <= '0';
        pr_S1_flag <= '1';
        S1_flag    <= '0';
        S2_flag    <= '0';
        S3_flag    <= '0';
        S4_flag    <= '0';
        if (cnt_rc = "1000") then
          nx_state <= S1;
        else
          nx_state <= pr_S1;
        end if;
      when S1 => --! 开始转换
        S0_flag    <= '0';
        pr_S1_flag <= '0';
        S1_flag    <= '1';
        S2_flag    <= '0';
        S3_flag    <= '0';
        S4_flag    <= '0';
        nx_state   <= S2;
      when S2 => --! 等待转换结束
        S0_flag    <= '0';
        pr_S1_flag <= '0';
        S1_flag    <= '0';
        S2_flag    <= '1';
        S3_flag    <= '0';
        S4_flag    <= '0';
        if (sts_ris = '1') then
          nx_state <= S3;
        else
          nx_state <= S2;
        end if;
      when S3 => --! 输出数据
        S0_flag    <= '0';
        pr_S1_flag <= '0';
        S1_flag    <= '0';
        S2_flag    <= '0';
        S3_flag    <= '1';
        S4_flag    <= '0';
        nx_state   <= S4;
      when S4 => --! FPGA接收数据
        S0_flag    <= '0';
        pr_S1_flag <= '0';
        S1_flag    <= '0';
        S2_flag    <= '0';
        S3_flag    <= '0';
        S4_flag    <= '1';
        nx_state   <= S0;
      when others =>
        nx_state <= S0;
    end case;
  end process;
end architecture_AD574;
