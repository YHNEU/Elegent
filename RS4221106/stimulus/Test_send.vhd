----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Nov 05 10:33:11 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Test_send.vhd
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

entity Test_send is
end Test_send;

architecture behavioral of Test_send is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal data_send_in : std_logic_vector(7 downto 0) := "10101010";
	signal vld_send_in : std_logic := '0';

    component signal_send
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            vld_send : in std_logic;
            data_send : in std_logic_vector(7 downto 0);

            -- Outputs
            idle_send : out std_logic;
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
            wait for ( SYSCLK_PERIOD * 60 );			
			vld_send_in <= '1';
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
            vld_send => vld_send_in,
            data_send => data_send_in,

            -- Outputs
            idle_send =>  open,
            tx_uart =>  open

            -- Inouts

        );

end behavioral;

