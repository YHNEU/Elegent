----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Nov 21 08:42:47 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: send_Test.vhd
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

entity send_Test is
end send_Test;

architecture behavioral of send_Test is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal vld_send_test : std_logic := '0';
	signal data_send_test : std_logic_vector(7 downto 0) := "10101010";

    component signal_send
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            vld_send : in std_logic;
            data_send : in std_logic_vector(7 downto 0);

            -- Outputs
            send_over : out std_logic;
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
            wait for ( SYSCLK_PERIOD * 10 );
			vld_send_test <= '1';
            wait for ( SYSCLK_PERIOD * 3000 );
			vld_send_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );
			vld_send_test <= '1';
            wait for ( SYSCLK_PERIOD * 3000 );
			vld_send_test <= '0';
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  signal_send
    signal_send_0 : signal_send
        -- port map
        port map( 
            -- Inputs
            sys_clk => SYSCLK,
            sys_rest => NSYSRESET,
            vld_send => vld_send_test,
            data_send => data_send_test,

            -- Outputs
            send_over =>  open,
            tx_uart =>  open

            -- Inouts

        );

end behavioral;

