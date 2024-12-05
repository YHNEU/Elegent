--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: whole_send.vhd
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
USE ieee.numeric_std.ALL;

entity whole_send is
port (sys_clk      : in std_logic;							--! 时钟
	  sys_rst_n    : in std_logic;							--! 复位
	  send_over    : in std_logic;							--! 发送字节结束标志位(signal_send)
	  data_all 	   : in std_logic_vector((30 * 8) - 1 downto 0);	--! 发送的数据(buf)
	  vld_whole    : in std_logic;							--! 启动发送数据标志位(buf)
	  vld_send     : out std_logic;							--! 开始发送(signal_send)
	  send_whole_over : out std_logic;						--! 所有发送结束(buf)
	  data_send    : out std_logic_vector(7 downto 0)      	--! 发送的有效数据(signal_send)
);
end whole_send;


architecture architecture_whole_send of whole_send is
	
	signal send_flag : std_logic;
	type state is (idle, send,judge);
	signal pr_state, nx_state : state;
	signal idle_flag, judge_flag: std_logic;
	signal cnt : std_logic_vector(4 downto 0);

begin

 	process(sys_rst_n, sys_clk)					
	begin	
		if (sys_rst_n = '0') then
			pr_state <= idle;
			cnt <= (others => '0');
			vld_send <= '0';
			send_whole_over <= '0';
			data_send <= (others => '0');
		elsif (sys_clk'event and sys_clk = '1') then
			pr_state <= nx_state;
			if (idle_flag = '1') then				--! 空闲状态
				cnt <= (others => '0');
				vld_send <= '0';
				send_whole_over <= '0';
			elsif(send_flag = '1') then				--! 发送状态
				data_send(7 downto 0) <= data_all((to_integer(unsigned(cnt)) + 1) * 8 - 1 downto (to_integer(unsigned(cnt)) * 8));
				vld_send <= '1';
			elsif (judge_flag = '1') then			--! 判断是否发送完毕
				cnt <= cnt + '1';
				if (cnt = X"1D") then
				send_whole_over <= '1';
				vld_send <= '0';
				end if;
			end if;
		end if;
	end process;


  	process(sys_rst_n, pr_state, vld_whole, cnt, send_over)					
	begin	
		if (sys_rst_n = '0') then
			send_flag <= '0';
			idle_flag <= '0';	
			judge_flag <= '0';
		end if;	
		case pr_state is
			when idle =>							--! 空闲状态
				send_flag <= '0';
				idle_flag <= '1';
				judge_flag <= '0';				
				if (vld_whole = '1' and send_whole_over = '0') then
					nx_state <= send;
				else 
					nx_state <= idle;
				end if;
			when send =>							--! 发送状态
				send_flag <= '1';
				idle_flag <= '0';
				judge_flag <= '0';				
				if (send_over = '1') then
					nx_state <= judge;
				else
					nx_state <= send;
				end if;
			when judge =>							--! 判断是否发送完毕
				judge_flag <= '1';
				send_flag <= '0';
				idle_flag <= '0';
				if (cnt = X"1D") then
					nx_state <= idle;
				else
					nx_state <= send;
				end if;				
			when others =>
					nx_state <= idle;
		end case;
end process;
end architecture_whole_send;
