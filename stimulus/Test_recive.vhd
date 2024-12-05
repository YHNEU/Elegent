----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Nov 05 09:49:59 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Test_recive.vhd
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

entity Test_recive is
end Test_recive;

architecture behavioral of Test_recive is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

	signal rx_uart_in : std_logic := '1';
	signal send_end_in : std_logic := '0';
    component single_recive
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            rx_uart : in std_logic;
			send_end : in std_logic;

            -- Outputs
            data_recive : out std_logic_vector(7 downto 0);
            idle_recive : out std_logic

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
			rx_uart_in <= '0';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';
			
			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
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
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217*2 ); --校验位+结束位 
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 10 );	
			send_end_in <= '1';	
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  single_recive
    single_recive_0 : single_recive
        -- port map
        port map( 
            -- Inputs
            sys_clk => SYSCLK,
            sys_rest => NSYSRESET,
            rx_uart => rx_uart_in,
			send_end => send_end_in,
            -- Outputs
            data_recive => open,
            idle_recive =>  open

            -- Inouts

        );

end behavioral;

