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

entity Buffer is
generic (BITE_N : natural := 20);
port (	sys_clk : in std_logic;
		sys_rest : in std_logic;
		rx_uart : in std_logic;
		data_all : out std_logic((BITE_N * 8 - 1) downto 0);
		vld_send : out std_logic;
        tx_uart : out std_logic		
);
end Buffer;

architecture architecture_Buffer of Buffer is

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
            idle_send : out std_logic;
            tx_uart : out std_logic
        );
    end component;
	

	signal data_recive_all : std_logic((BITE_N * 8 - 1) downto 0);
	signal	idle_recive : std_logic;
	signal	idle_send : std_logic;
	signal cnt_send, cnt_recive : natural range 0 to 20;
	signal data_recive_buffer, data_send_buffer : std_logic_vector(7 downto 0);
	
	signal idle_recive_fall, idle_recive_down : std_logic;
	signal receive_end : std_logic;
	signal cnt_recive_end : std_logic_vector(1 downto 0);
	signal cnt_delay : std_logic_vector(6 downto 0);
	signal send_end : std_logic;
	signal idle_send_fall, idle_send_down : std_logic;
 

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
			data_recive_buffer <= (others => '0');
		elsif(sys_clk'event and sys_clk = '1') then
			idle_recive_fall <= idle_recive;
			idle_recive_down <= (not idle_recive_fall) and idle_recive;
			if (idle_recive_down) then
				cnt_recive <= cnt_recive + 1;							
				data_all((cnt_recive * 8 - 1) downto (cnt_recive - 1) * 8) <= data_recive_buffer;
			else
				data_all <= (others => '0');
			end if;
		end if;
	end process;

-- 连续三个时钟周期rx_uart = 1， 帧结束	
	process(sys_rest, sys_clk, rx_uart, cnt_recive_end)						
	begin	
		if (sys_rest = '0') then	
			receive_end <= '0';
			cnt_recive_end <= '0';
		elsif(sys_clk'event and sys_clk = '1') then	
			if (rx_uart = '1') then
				cnt_recive_end <= cnt_recive_end + '1';
			else
				cnt_recive_end <= (others => '0');
			end if;
			if (cnt_recive_end = "11") then
				receive_end <= '1';
			else
				receive_end <= '0';
			end if;
		end if;
	end process;  
  
  --发送--
 
-- 接收结束后，延时100个时钟周期再进行发送. 开始：vld_send 0 -> 1; 结束: vld_send 1 -> 0;
	process(sys_rest, sys_clk, receive_end, cnt_delay)			
	begin	
		if (sys_rest = '0') then  
			vld_send <= '0';							    
			cnt_delay <= (others => '0');		
		elsif(sys_clk'event and sys_clk = '1') then	  
			if (receive_end = '1') then					 
				cnt_delay <= cnt_delay + '1';
			else
				cnt_delay <= (others => '0');
			end if;
			if (cnt_delay = "01100100") then			
				vld_send <= '1';
			else
				vld_send <= '0';
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
			data_all <= (others => '0');
			cnt_send <= 0;
			send_end <= '0';
		elsif(sys_clk'event and sys_clk = '1') then
			idle_send_fall <= idle_send;
			idle_send_down <= (not idle_send_fall) and idle_send;
			if (vld_send) then
				data_send_buffer <= data_all(((cnt_send + 1) * 8 - 1) downto (cnt_send * 8));
			end if;
			if (idle_send_down) then
				cnt_send <= cnt_send + 1;							
			end if;
			if (cnt_send = cnt_recive) then
				send_end <= '1';
			else
				send_end <= '0';
			end if;
		end if;
	end process;

--发送结束，信号置0	
	process(send_end)												
	begin	
		if (send_end) then
			idle_recive_fall <= '0';
			idle_recive_down <= '0';
			data_all <= (others => '0');
			cnt_recive <= 0;
			data_recive_buffer <= (others => '0');
			receive_end <= '0';
			cnt_recive_end <= '0';
			vld_send <= '0';							    
			cnt_delay <= (others => '0');			end if;
			idle_send_fall <= '0';	end process; 
			idle_send_down <= '0';
			data_all <= (others => '0');
			cnt_send <= 0;
			send_end <= '0';		
		end if;
	end process; 	
  
    single_recive_0 : single_recive					-- 接收
        port map( 
            -- Inputs
            sys_clk => sys_clk,
            sys_rest => sys_rest,
            rx_uart => rx_uart,

            -- Outputs
            data_recive => data_recive_buffer,
            idle_recive =>  idle_recive

        );  
		
    signal_send_0 : signal_send					-- 发送
        port map( 
            -- Inputs
            sys_clk => sys_clk,
            sys_rest => sys_rest,
            vld_send => vld_send,
            data_send => data_send_buffer,

            -- Outputs
            idle_send =>  idle_send,
            tx_uart =>  tx_uart
        );		
		
end architecture_Buffer;
