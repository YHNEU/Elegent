--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: single_recive.vhd
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

entity single_recive is
port (	sys_clk     : in std_logic;                       -- 系统时钟
		sys_rest    : in std_logic;						  -- 系统复位
		rx_uart     : in std_logic;						  -- 接收串行输入
		send_end    : in std_logic;						  -- 发送一帧结束标志
		data_recive : out std_logic_vector(7 downto 0);	  -- 接收的有效数据
		idle_recive : out std_logic						  -- 接收状态，高电平忙、低电平空闲
);
end single_recive;

architecture architecture_single_recive of single_recive is
	
	signal recive : std_logic;					-- 接收数据有效位
	signal cnt : std_logic_vector(11 downto 0); -- 接收数据计数器 217个时钟周期置零
	signal parity_check : std_logic;             -- 奇偶校验位，奇校验

	signal rx_fall, rx_down : std_logic;
	signal rx_fall2, rx_fall1 : std_logic;
	
begin

  process(sys_rest, sys_clk)				-- 检测rx_uart下降沿和idle_recive低电平，得到recive的有效位；
  begin
	if (sys_rest = '0') then
		rx_fall <= '0';
		rx_down <= '0';
		recive <= '0';
		rx_fall1 <= '0';
		rx_fall2 <= '0';		
	elsif(sys_clk'event and sys_clk = '1') then
		rx_fall <= rx_uart;
		rx_fall1 <= rx_fall;
		rx_fall2 <= rx_fall1;
		rx_down <= rx_fall2 and (not rx_fall1);
		if ((rx_down) and (not idle_recive)) then	--如果rx_uart下降沿，并且idle_recive低电平，则recive = 1，可以开始接收数据；
			recive <= '1';
		elsif (cnt = "100011100110") then			-- 2278,结束位
			recive <= '0';
		end if;
	end if;
  end process; 
  
  
  process(sys_rest, sys_clk)
  begin
	if (sys_rest = '0') then
		cnt <= (others => '0');
		idle_recive <= '0';
		parity_check <= '1';
		data_recive <= (others => '0');
	elsif(sys_clk'event and sys_clk = '1') then
		if (send_end) then
			data_recive <= (others => '0');
		end if;
		if (recive) then						-- 开始接收数据，idle_recive 1-> 0, 结束， idle_recive 0-> 1;
			idle_recive <= '1';
		end if;
		if (recive)then
			case cnt is
				when "000101000101" =>				-- 325,起始位217，第一个数据108周期中间采样
					data_recive(0) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "001000011110" =>				-- 542
					data_recive(1) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';					
				when "001011110111" =>				-- 759
					data_recive(2) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "001111010000" =>				-- 976
					data_recive(3) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "010010101001" =>				-- 1193
					data_recive(4) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "010110000010" =>				-- 1410
					data_recive(5) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "011001011011" =>				-- 1627
					data_recive(6) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';
				when "011100110100" =>				-- 1844,最后一位数据
					data_recive(7) <= rx_uart;
					parity_check <= parity_check xor rx_uart;
					cnt <= cnt + '1';		
--				when "100000001101" =>				-- 2061, 奇偶校验位
--					data_recive(9) <= parity_check;
--					cnt <= cnt + '1';
--				when "100001111001" =>				-- 2278,结束位
--					data_recive(10) <= rx_uart;
--					cnt <= cnt + '1';
				when others => 
					cnt <= cnt + '1';
			end case;						
		else
			cnt <= (others => '0');
			idle_recive <= '0';
			parity_check <= '1';
--			data_recive	<= (others => '0');		
		end if;
	end if;
  end process;
     
end architecture_single_recive;
