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
port (	sys_clk : in std_logic;
		sys_rest : in std_logic;
		vld_send : in std_logic;
		data_send : in std_logic_vector(7 downto 0);
		idle_send : out std_logic;
		end_flag : out std_logic;
		tx_uart : out std_logic
);
end signal_send;
architecture architecture_signal_send of signal_send is
	
	signal cnt : std_logic_vector(11 downto 0);
	signal parity_check : std_logic;             -- 奇偶校验位，奇校验
	signal vld_send_fall, vld_send_down : std_logic;
	signal send : std_logic;
	signal cnt_end : std_logic_vector(9 downto 0);
--	signal cnt_send1 : natural range 0 to 20;

begin

  process(sys_rest, sys_clk)				-- 检测vld_send上升沿和idle_send低电平
  begin
	if (sys_rest = '0') then
		vld_send_fall <= '0';
		vld_send_down <= '0';
		send <= '0';
		end_flag <= '0';
		cnt_end <= (others => '0');
	elsif(sys_clk'event and sys_clk = '1') then
		vld_send_fall <= vld_send;
		vld_send_down <= vld_send and (not vld_send_fall);
		if ((vld_send_down) and (not idle_send)) then	
			send <= '1';
			end_flag <= '0';
			cnt_end <= (others => '0');
		elsif (cnt = "100101010011") then			-- 2387,结束位
			send <= '0';
			end_flag <= '1';
		end if;
		if (end_flag <= '1' and idle_send = '0') then			
			cnt_end <= cnt_end + '1';
			if (cnt_end = "1010001011") then   	  -- 发送一个字节结束后，连续217*3个周期无发送，一帧结束。
				end_flag <= '0';
			end if;
		end if;
	end if;
  end process; 

	process(sys_rest, sys_clk, vld_send) 
	begin
		if (sys_rest = '0') then
			tx_uart <= '1';
			parity_check <= '1';
			cnt <= (others => '0');
			idle_send <= '0';
		elsif(sys_clk'event and sys_clk = '1') then
			if (send) then					-- 发送有效
                case cnt is
                    when "000000000000" =>                  -- 起始位;
                        tx_uart <= '0';
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when "000011011001" => 
                        tx_uart <= data_send(0);        -- 第一个数据位; 217
                        parity_check <= parity_check xor data_send(0);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when "000110110010" => 		
                        tx_uart <= data_send(1);        
                        parity_check <= parity_check xor data_send(1);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when "001010001011" => 
                        tx_uart <= data_send(2);        
                        parity_check <= parity_check xor data_send(2);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when "001101100100" => 
                        tx_uart <= data_send(3);       
                        parity_check <= parity_check xor data_send(3);
                        cnt <= cnt + '1';
						idle_send <= '1';
                    when "010000111101" => 
                        tx_uart <= data_send(4);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(4);
                        cnt <= cnt + '1';
                    when "010100010110" => 
                        tx_uart <= data_send(5);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(5);
                        cnt <= cnt + '1';
                    when "010111101111" => 
                        tx_uart <= data_send(6);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(6);
                        cnt <= cnt + '1';
                    when "011011001000" => 
                        tx_uart <= data_send(7);        
                        idle_send <= '1';
                        parity_check <= parity_check xor data_send(7);
                        cnt <= cnt + '1';
                    when "011110100001" => 				-- 校验位
                        tx_uart <= parity_check;        
                        idle_send <= '1';
                        cnt <= cnt + '1';
                    when "100001111010" => 				-- 结束位, 2170
                        tx_uart <= '1';        
                        cnt <= cnt + '1';
						idle_send <= '0';	
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
