--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: addr_manage.vhd
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

entity addr_manage is
  port (
    sys_rst_n       : in std_logic; --! 时钟
    sys_clk         : in std_logic; --! 复位
    conver          : in std_logic; --! 开始转换信号（buf发出）
    ad_once_over    : in std_logic; --! 转换结束信号（buf发出）
    send_whole_over : in std_logic; --! 所有发送结束(whole_send)
    receive_on      : in std_logic; --! 开始信号(buf)
    addr_over       : out std_logic; --! 地址至15通道标志位（buf接收）
    addr            : out std_logic_vector(3 downto 0) --! 输出的地址	（Top接收）   		
  );
end addr_manage;
architecture architecture_addr_manage of addr_manage is

  signal conver_ris  : std_logic;
  signal conver_ris1 : std_logic;
  signal conver_ris2 : std_logic;
  signal conver_ris3 : std_logic;

  type state is (idle, start, addr_end);
  signal pr_state, nx_state : state;

  signal idle_flag, start_flag, addr_end_flag : std_logic;

begin

  process (sys_rst_n, sys_clk) --! 判断receive_on上升沿
  begin
    if (sys_rst_n = '0') then
      conver_ris  <= '0';
      conver_ris1 <= '0';
      conver_ris2 <= '0';
      conver_ris3 <= '0';
    elsif (sys_clk'event and sys_clk = '1') then
      conver_ris1 <= receive_on;
      conver_ris2 <= conver_ris1;
      conver_ris3 <= conver_ris2;
      conver_ris  <= conver_ris2 and (not conver_ris3);
    end if;
  end process;

  process (sys_rst_n, sys_clk)
  begin
    if (sys_rst_n = '0') then
      pr_state  <= idle;
      addr_over <= '0';
      addr      <= (others => '0');
    elsif (sys_clk'event and sys_clk = '1') then
      pr_state <= nx_state;
      if (idle_flag = '1') then --! 空闲状态
        addr_over <= '0';
      elsif (start_flag = '1') then --! 通道开始切换
        if (addr = "0000") then
          addr <= addr + '1';
        elsif (ad_once_over = '1') then
          addr <= addr + '1';
        end if;
      elsif (addr_end_flag = '1') then --! 所有通道切换完毕
        addr      <= (others => '0');
        addr_over <= '1';
      end if;

    end if;
  end process;
  process (sys_rst_n, conver_ris, addr, ad_once_over, pr_state)
  begin
    if (sys_rst_n = '0') then
      idle_flag     <= '0';
      start_flag    <= '0';
      addr_end_flag <= '0';
    end if;
    case pr_state is
      when idle => --! 空闲状态
        idle_flag     <= '1';
        start_flag    <= '0';
        addr_end_flag <= '0';
        if (((conver_ris = '1' and addr = "0000") or ad_once_over = '1') and (addr /= "1111")) then
          nx_state <= start;
        else
          nx_state <= idle;
        end if;
      when start => --! 通道开始切换
        idle_flag     <= '0';
        start_flag    <= '1';
        addr_end_flag <= '0';
        if (addr = "1111" and ad_once_over = '1') then
          nx_state <= addr_end;
        else
          nx_state <= start;
        end if;
      when addr_end => --! 所有通道切换完毕
        idle_flag     <= '0';
        start_flag    <= '0';
        addr_end_flag <= '1';
        nx_state      <= idle;
      when others =>
        nx_state <= idle;
    end case;
  end process;

end architecture_addr_manage;
