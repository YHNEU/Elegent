----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Nov 21 09:10:16 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: TOP_Test.vhd
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


library ieee;
use ieee.std_logic_1164.all;

entity TOP_Test is
end TOP_Test;

architecture behavioral of TOP_Test is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal sts_test : std_logic := '0';
	signal data_in_test : std_logic_vector(11 downto 0) := "000000000000";
	signal rx_uart_in : std_logic := '1';

    component Top_AD
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            sts : in std_logic;
            data_in : in std_logic_vector(11 downto 0);
			rx_uart  : in std_logic;
--			data1     : out std_logic_vector(7 downto 0);						-- 测试
--						  data2 	: out std_logic_vector(7 downto 0);						-- 测试
--						  	  data_filter : out std_logic_vector(13 downto 0);
            -- Outputs
            ce : out std_logic;
            cs : out std_logic;
            rc : out std_logic;
            addr : out std_logic_vector(3 downto 0);
            tx_uart : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            wait for ( SYSCLK_PERIOD * 10 );            
            NSYSRESET <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';
			
			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';			
			
			
			
			
			
			

			wait for ( SYSCLK_PERIOD * 3000 );  -- 开始选通1
			data_in_test <= "101010101010";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';	

			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通2
			data_in_test <= "111111111111";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通3
			data_in_test <= "101010101111";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';

			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通4
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通5
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通6
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通7
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通8
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通9
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通10
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通11
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通12
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通13
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通14
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通15
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			

--第二次			

			wait for ( SYSCLK_PERIOD * 82000 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';
			
			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';			
			
			
			
			
			
			

			wait for ( SYSCLK_PERIOD * 3000 );  -- 开始选通1
			data_in_test <= "101010101010";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';	

			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通2
			data_in_test <= "111111111111";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通3
			data_in_test <= "101010101111";
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';

			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通4
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通5
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通6
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通7
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通8
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通9
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通10
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 500 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通11
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通12
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通13
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通14
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			
			wait for ( SYSCLK_PERIOD * 11000 );  -- 开始选通15
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );  
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );  
			sts_test <= '0';			
			
			
			
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  Top_AD
    Top_AD_0 : Top_AD
        -- port map
        port map( 
            -- Inputs
            sys_clk => SYSCLK,
            sys_rest => NSYSRESET,
            sts => sts_test,
            data_in => data_in_test,
            rx_uart =>  rx_uart_in,

            -- Outputs
            ce =>  open,
            cs =>  open,
            rc =>  open,
            addr => open,
--			data1  => open,     --测试
--			data2  => open,     --测试
--			data_filter => open,
            tx_uart =>  open

            -- Inouts
        );

end behavioral;

