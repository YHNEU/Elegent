--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: buf.vhd
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
use ieee.numeric_std.all;

entity buf is
  port (
    sys_clk         : in std_logic; --! 时钟
    sys_rest        : in std_logic; --! 复位
    data_ad         : in std_logic_vector(11 downto 0); --! ad输入数据
    ad_over         : in std_logic; --! AD转换读取数据结束标志位，结束为一个周期的高电平
    data_recive     : in std_logic_vector(7 downto 0); --! 接受的上位机数据(single_receive）
    addr_over       : in std_logic; --! 15通道采集结束标志位（addr_manage）
    receive_over    : in std_logic; --! 接收一个字节结束标志位（single_receive）
    addr            : in std_logic_vector(3 downto 0); --! 当前通道	（addr_manage）
    send_whole_over : in std_logic; --! 所有发送结束(whole_send)
    conver          : out std_logic; --! 启动AD转换标志位(AD574收)
    vld_whole       : out std_logic; --! 启动发送数据标志位(whole_send)
    data1           : out std_logic_vector(7 downto 0); --! 测试
    data2           : out std_logic_vector(7 downto 0); --! 测试
    data_filter     : out std_logic_vector(13 downto 0);
    ad_once_over    : out std_logic; --! 单通道结束标志位(addr_manage）
    receive_on      : out std_logic; --! 接收ON，开始
    data_all        : out std_logic_vector((30 * 8) - 1 downto 0) --! 发送的数据(whole_send)

  );
end buf;
architecture architecture_buf of buf is

  signal cnt      : std_logic_vector(2 downto 0);
  signal cnt_send : std_logic_vector(1 downto 0);
  type state is (idle, receive, wait_deal, deal, state_send, deal_data, state_over, delay, test);
  signal pr_state, nx_state : state;
  --!	signal receive_on : std_logic;      					--! buf开始接收标志位
  --!	signal data2: std_logic_vector(7 downto 0);				--!测试修正，data2
  signal idle_flag, wait_deal_flag, deal_flag, send_flag, deal_data_flag, delay_flag, receive_state, state_over_flag, test_flag : std_logic;
  signal cnt_receive_over                                                                                                       : std_logic;
  signal receive_flag                                                                                                           : std_logic;
  signal cnt_daly                                                                                                               : std_logic_vector(12 downto 0);
  signal cnt_daly1                                                                                                              : std_logic_vector(12 downto 0);
  signal cnt_num                                                                                                                : std_logic_vector(3 downto 0);
  	signal delay_channel1 : std_logic;
begin

  --! 接收ON，则开始，检测完15个通道后结束。
  process (sys_rest, sys_clk)
  begin
    if (sys_rest = '0') then
      receive_on       <= '0';
      cnt_receive_over <= '0';
      receive_flag     <= '0';
    elsif (sys_clk'event and sys_clk = '1') then
      if (receive_over = '1') then
        cnt_receive_over <= '1';
      end if;
      if (data_recive = X"4F" and cnt_receive_over = '0') then
        receive_flag <= '1';
      elsif (data_recive = X"4E" and cnt_receive_over = '1' and receive_flag = '1') then
        receive_on <= '1';
      end if;
      if (addr_over = '1') then
        receive_on       <= '0';
        cnt_receive_over <= '0';
        receive_flag     <= '0';
      end if;
    end if;
  end process;

  process (sys_rest, sys_clk)
  begin
    if (sys_rest = '0') then
      pr_state       <= idle;
      conver         <= '0';
      vld_whole      <= '0';
      data_all       <= (others => '0');
      data_filter    <= (others => '0');
      ad_once_over   <= '0';
      cnt            <= (others => '0');
      cnt_daly       <= (others => '0');
      cnt_daly1      <= (others => '0');
      delay_channel1 <= '0';
    elsif (sys_clk'event and sys_clk = '1') then
      pr_state <= nx_state;
      if (idle_flag = '1') then --! 空闲状态
        data_filter  <= (others => '0');
        cnt          <= (others => '0');
        ad_once_over <= '0';
        vld_whole    <= '0';
        cnt_daly     <= (others => '0');
        conver       <= '0';
      elsif (receive_state = '1') then --! 接收状态
        conver <= '1';
        if (ad_over = '1') then
          cnt <= cnt + '1';
        end if;
      elsif (wait_deal_flag = '1') then --! 处理单通道采集结束的数据
        data_filter <= data_filter + data_ad;
        conver      <= '0';
      elsif (deal_flag = '1') then --! 单通道采集的数据平均值
        data_filter  <= data_filter srl 2;
        ad_once_over <= '1';
      elsif (deal_data_flag = '1') then
        data_all(to_integer(unsigned(addr)) * 2 * 8 - 1 downto to_integer(unsigned(addr)) * 2 * 8 - 16) <= ("00" & data_filter);
        ad_once_over                                                                                    <= '0';
      elsif (delay_flag = '1') then --! 通道切换后的延迟
        cnt_daly <= cnt_daly + '1';
        if (addr = X"01") then
          delay_channel1 <= '1';
        end if;
      elsif (send_flag = '1') then
        vld_whole <= '1';
        if (send_whole_over = '1') then
          vld_whole <= '0';
        end if;
      elsif (state_over_flag = '1') then
        data_all       <= (others => '0');
        delay_channel1 <= '0';
      end if;
    end if;
  end process;

  process (sys_rest, pr_state, ad_over, receive_on, addr_over, send_whole_over, cnt_daly, cnt, addr, delay_channel1)
  begin
    if (sys_rest = '0') then
      data1           <= (others => '0');
      data2           <= (others => '0');
      nx_state        <= idle;
      cnt_send        <= (others => '0');
      idle_flag       <= '0';
      receive_state   <= '0';
      wait_deal_flag  <= '0';
      deal_flag       <= '0';
      deal_data_flag  <= '0';
      delay_flag      <= '0';
      send_flag       <= '0';
      state_over_flag <= '0';
    end if;
    case pr_state is
      when idle                  =>
        cnt_send        <= (others => '0');
        idle_flag       <= '1';
        receive_state   <= '0';
        wait_deal_flag  <= '0';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '0';
        if (receive_on = '1') then
          if ((addr = X"00" or addr = X"01") and delay_channel1 = '0') then
            nx_state <= delay;
          else
            nx_state <= receive;
          end if;
        else
          nx_state <= idle;
        end if;
      when receive => --! 接收AD数据
        idle_flag       <= '0';
        receive_state   <= '1';
        wait_deal_flag  <= '0';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '0';
        if (ad_over = '1') then
          nx_state <= wait_deal;
        else
          nx_state <= receive;
        end if;
      when wait_deal => --! 等待处理，如果采样四次结束则进入deal状态
        idle_flag       <= '0';
        receive_state   <= '0';
        wait_deal_flag  <= '1';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '0';
        if (cnt = "100") then --! 单通道采样4次
          nx_state <= deal;
        else
          nx_state <= receive;
        end if;
      when deal => --! 处理单通道采集结束的数据
        idle_flag       <= '0';
        receive_state   <= '0';
        wait_deal_flag  <= '0';
        deal_flag       <= '1';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '0';
        nx_state        <= deal_data;

      when deal_data => --! 单通道采集的数据平均值
        idle_flag         <= '0';
        receive_state     <= '0';
        wait_deal_flag    <= '0';
        deal_flag         <= '0';
        deal_data_flag    <= '1';
        delay_flag        <= '0';
        test_flag         <= '0';
        send_flag         <= '0';
        state_over_flag   <= '0';
        data1             <= data_filter(11 downto 4);
        data2(7 downto 4) <= data_filter(3 downto 0);
          nx_state <= delay;

      when delay => --! 通道切换后的延迟
        idle_flag       <= '0';
        receive_state   <= '0';
        wait_deal_flag  <= '0';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '1';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '0';
        if (cnt_daly = X"1388") then
          nx_state <= idle;
        elsif (addr_over = '1') then
          nx_state <= state_send;
        else
          nx_state <= delay;
        end if;
      when state_send => --! 发送数据
        idle_flag       <= '0';
        receive_state   <= '0';
        wait_deal_flag  <= '0';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '1';
        state_over_flag <= '0';
        if (send_whole_over = '1') then
          nx_state <= state_over;
        else
          nx_state <= state_send;
        end if;
      when state_over => --! 发送结束
        idle_flag       <= '0';
        receive_state   <= '0';
        wait_deal_flag  <= '0';
        deal_flag       <= '0';
        deal_data_flag  <= '0';
        delay_flag      <= '0';
        test_flag       <= '0';
        send_flag       <= '0';
        state_over_flag <= '1';
        data1           <= (others => '0');
        data2           <= (others => '0');
        nx_state        <= idle;
      when others =>
        nx_state <= idle;
    end case;
  end process;
end architecture_buf;
