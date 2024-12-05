--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: signal_send.vhd
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

entity signal_send is
port (	sys_clk   : in std_logic;							--! 系统时钟
		sys_rest  : in std_logic;                           --! 系统复位
		vld_send  : in std_logic;                           --! 允许发送标志位
		data_send : in std_logic_vector(7 downto 0);        --! 发送的有效数据
		send_over : out std_logic;							--! 发送字节结束标志位
		tx_uart   : out std_logic							--! 发送串行输出
);
end signal_send;
architecture architecture_signal_send of signal_send is
	
	signal cnt : std_logic_vector(11 downto 0);
	signal parity_check : std_logic;             --! 奇偶校验位，奇校验
	signal send : std_logic;
	signal idle_send : std_logic;

begin
 	process(sys_rest, sys_clk) 					--! vld_send 高电平和idle_send低电平时，开始发送数据
	begin 
		if (sys_rest = '0') then  
			send <= '0';  
		elsif(sys_clk'event and sys_clk = '1') then
			if (vld_send = '1' and idle_send = '0') then
				send <= '1';
			elsif (vld_send = '0')then
				send <= '0';
			elsif(cnt = X"2388") then
				send <= '0';
			end if;
		end if;
	end process;

	process(sys_rest, sys_clk) 
	begin
		if (sys_rest = '0') then
			tx_uart <= '1';
			parity_check <= '1';
			cnt <= (others => '0');
			idle_send <= '0';
			send_over <= '0';
		elsif(sys_clk'event and sys_clk = '1') then
			if (send) then					--! 发送有效
                case cnt is
                    when X"000" =>                  --! 起始位;
                        tx_uart <= '0';
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when X"217" => 
                        tx_uart <= data_send(0);        --! 第一个数据位; 217
                        parity_check <= parity_check xor data_send(0);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when X"434" => 		
                        tx_uart <= data_send(1);        
                        parity_check <= parity_check xor data_send(1);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when X"651" => 
                        tx_uart <= data_send(2);        
                        parity_check <= parity_check xor data_send(2);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when X"868" => 
                        tx_uart <= data_send(3);       
                        parity_check <= parity_check xor data_send(3);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when X"1085" => 
                        tx_uart <= data_send(4);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(4);
                        cnt <= cnt + '1';
                    when X"1302" => 
                        tx_uart <= data_send(5);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(5);
                        cnt <= cnt + '1';
                    when X"1519" => 
                        tx_uart <= data_send(6);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(6);
                        cnt <= cnt + '1';
                    when X"1736" => 
                        tx_uart <= data_send(7);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(7);
                        cnt <= cnt + '1';
                    when X"1953" => 				--! 校验位
                        tx_uart <= parity_check;        
                        idle_send <= '1';
                        cnt <= cnt + '1';
                    when X"2170" => 				--! 结束位, 2170
                        tx_uart <= '1';        
                        cnt <= cnt + '1';
						idle_send <= '1';
					when X"2387" =>				--! 2387,结束位发送结束
						send_over <= '1';
						cnt <= cnt + '1';
						idle_send <= '0';
					when X"2388" =>				--! 2388,结束位发送结束
						cnt <= (others => '0');			
						send_over <= '0';
                    when others => cnt <= cnt + '1';    
                end case;
			else
				tx_uart <= '1';
				cnt <= (others => '0');
				parity_check <= '1';
				idle_send <= '0';
			end if;
		end if;
	end process;
end architecture_signal_send;

