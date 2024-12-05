----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Nov 22 10:31:30 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: addr_manage_Test.vhd
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

entity addr_manage_Test is
end addr_manage_Test;

architecture behavioral of addr_manage_Test is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal conver : std_logic := '0';
	signal addr_once_over : std_logic := '0';

    component addr_manage
        -- ports
        port( 
            -- Inputs
            sys_rst_n : in std_logic;
            sys_clk : in std_logic;
            conver : in std_logic;
            ad_once_over : in std_logic;

            -- Outputs
            addr_over : out std_logic;
            addr : out std_logic_vector(3 downto 0)

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
			conver <= '1';
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';	
            wait for ( SYSCLK_PERIOD * 100 );
			addr_once_over <= '1';
            wait for ( SYSCLK_PERIOD * 1 );
			addr_once_over <= '0';				
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  addr_manage
    addr_manage_0 : addr_manage
        -- port map
        port map( 
            -- Inputs
            sys_rst_n => NSYSRESET,
            sys_clk => SYSCLK,
            conver => conver,
            ad_once_over => addr_once_over,

            -- Outputs
            addr_over =>  open,
            addr => open

            -- Inouts

        );

end behavioral;

