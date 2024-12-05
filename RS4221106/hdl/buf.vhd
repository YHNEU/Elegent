--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Buffer.vhd
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

entity buf is
generic (BITE_N : natural := 20);
port (	sys_clk : in std_logic;
		sys_rest : in std_logic;
		rx_uart : in std_logic;			--接收数据串口
        tx_uart : out std_logic			--发送数据串口
);
end buf;

architecture architecture_buf of buf is

    component single_recive								-- 接收单字节
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            rx_uart : in std_logic;

            -- Outputs
            data_recive : out std_logic_vector(7 downto 0);
            idle_recive : out std_logic
        );
    end component;
	
    component signal_send								-- 发送单字节
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            vld_send : in std_logic;
            data_send : in std_logic_vector(7 downto 0);

            -- Outputs
			end_flag : out std_logic;
            idle_send : out std_logic;
            tx_uart : out std_logic
        );
    end component;
	

	signal	idle_recive : std_logic;			-- 接收状态，高有效，低空闲
	signal	idle_send : std_logic;				-- 发送状态，高有效，低空闲
	
	signal  data_recive_buffer: std_logic_vector(7 downto 0);		-- 接收的单字节
	signal  data_send_buffer  : std_logic_vector(7 downto 0);		-- 发送的单字节
	
	signal idle_recive_fall : std_logic;							-- 判断idle下降沿中间量
	signal idle_recive_down : std_logic;
	signal idle_send_fall   : std_logic;
	signal idle_send_down   : std_logic;
	
	signal receive_end : std_logic;									-- 接收一帧结束标志位
	signal send_end : std_logic;									-- 发送一帧结束标志位
	
	signal cnt_recive_end : std_logic_vector(9 downto 0);
	signal cnt_delay : std_logic_vector(8 downto 0);
	
	signal cnt_recive : natural;						            -- 接收字节的个数	
	signal cnt_send   : natural;									-- 发送的字节个数
	
	signal data_all : std_logic_vector((BITE_N * 8 - 1) downto 0);
	signal vld_send : std_logic;
	signal end_flag : std_logic;								-- 发送完一字节 end_flag 0 -> 1
	signal cnt_flag : std_logic_vector(1 downto 0);

begin

-- 检测idle_recive下降沿，判断接收字节的数量。
-- 接收数据，当idle_recive_down = '1'时，接收一字节数据完毕，data_all接收data_recive；检测到接收的字节 + 1；
	process(sys_rest, sys_clk, idle_recive_down)						
	begin
		if (sys_rest = '0') then
			idle_recive_fall <= '0';
			idle_recive_down <= '0';
			data_all <= (others => '0');
			cnt_recive <= 0;
		elsif(sys_clk'event and sys_clk = '1') then
			idle_recive_fall <= idle_recive;
			idle_recive_down <= (idle_recive_fall) and (not idle_recive);
			if (idle_recive_down) then
				cnt_recive <= cnt_recive + 1;
				data_all(((cnt_recive + 1) * 8 - 1) downto (cnt_recive * 8)) <= data_recive_buffer;				
			end if;
			if (send_end) then
				idle_recive_fall <= '0';
				idle_recive_down <= '0';
				data_all <= (others => '0');
				cnt_recive <= 0;
			end if;
		end if;
	end process;

-- 连续三个时钟周期rx_uart = 1， 帧结束	
	process(sys_rest, sys_clk, rx_uart, cnt_recive_end)						
	begin	
		if (sys_rest = '0') then	
			receive_end <= '0';
			cnt_recive_end <= (others => '0');
		elsif(sys_clk'event and sys_clk = '1') then	
			if (idle_recive = '0' and rx_uart = '1' and cnt_recive /= 0) then
				cnt_recive_end <= cnt_recive_end + '1';
			else
				cnt_recive_end <= (others => '0');
			end if;
			if (cnt_recive_end > "1010001011") then
				receive_end <= '1';
			end if;
			if (send_end) then
				receive_end <= '0';
				cnt_recive_end <= (others => '0');
			end if;
		end if;
	end process;  
  
  --发送--
 
-- 接收结束后，延时300个时钟周期再进行发送. 
--开始：vld_send 0 -> 1; 结束: vld_send 1 -> 0;发送完一位end_flag 0 -> 1; 然后 vld_send 1 -> 0; 一个时钟周期后， vld_send 0 -> 1;
	process(sys_rest, sys_clk, receive_end, cnt_delay)			
	begin	
		if (sys_rest = '0') then  
			vld_send <= '0';							    
			cnt_delay <= (others => '0');
			cnt_flag <= (others => '0');			
		elsif(sys_clk'event and sys_clk = '1') then	  
			if (receive_end = '1' and cnt_delay < "000100101100") then					 
				cnt_delay <= cnt_delay + '1';
			end if;
			if (cnt_delay = "000100101100" and end_flag = '0' and (cnt_recive /= 0)) then			
				vld_send <= '1';
			end if;
			if ((end_flag = '1') and (send_end = '0') and (cnt_recive /= 0)) then				-- 2个周期后，vld_send 1-> 0;
				vld_send <= '0';
				cnt_flag <= cnt_flag + '1';
				if (cnt_flag = "10" and (send_end = '0')) then
					vld_send <= '1';
					cnt_flag <= (others => '0');
				end if;				
			end if;
			if (send_end) then
				vld_send <= '0';							    
				cnt_delay <= (others => '0');
				cnt_flag <= (others => '0');			
			end if;
		end if;
	end process; 

-- 检测idle_send下降沿，判断发送字节的数量。
-- 发送数据，当idle_send_down = '1'时，发送一字节数据完毕，发送的字节数cnt_send + 1；
-- 发送数据，当cnt_send = cnt_recive时，send_end = 1，发送结束。
	process(sys_rest, sys_clk, vld_send, idle_send_down)						
	begin
		if (sys_rest = '0') then
			idle_send_fall <= '0';
			idle_send_down <= '0';
			cnt_send <= 0;
			send_end <= '0';
			data_send_buffer <= (others => '0');
		elsif(sys_clk'event and sys_clk = '1') then
			idle_send_fall <= idle_send;
			idle_send_down <= (idle_send_fall) and (not idle_send);
			if (vld_send) then
				data_send_buffer <= data_all(((cnt_send + 1) * 8 - 1) downto (cnt_send * 8));
			end if;
			if (idle_send_down and (not send_end)) then
				cnt_send <= cnt_send + 1;							
			end if;
			if (cnt_send = cnt_recive and (cnt_send /= 0)) then
				send_end <= '1';
			end if;
			if (send_end) then
				idle_send_fall <= '0';
				idle_send_down <= '0';
				send_end <= '0';
				cnt_send <= 0;
				data_send_buffer <= (others => '0');
			end if;
		end if;
	end process;
  
    single_recive_0 : single_recive					-- 接收
        port map( 
            -- Inputs
            sys_clk     => sys_clk,
            sys_rest    => sys_rest,
            rx_uart     => rx_uart,

            -- Outputs
            data_recive => data_recive_buffer,
            idle_recive =>  idle_recive

        );  
		
    signal_send_0 : signal_send					-- 发送
        port map( 
            -- Inputs
            sys_clk   => sys_clk,
            sys_rest  => sys_rest,
            vld_send  => vld_send,
            data_send => data_send_buffer,

            -- Outputs
			end_flag  => end_flag,
            idle_send =>  idle_send,
            tx_uart   =>  tx_uart
        );		
		
end architecture_buf;
