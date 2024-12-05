----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Nov 20 16:12:37 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: AD574_Test.vhd
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

entity AD574_Test is
end AD574_Test;

architecture behavioral of AD574_Test is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal sts_test : std_logic := '0';
	signal conver_test : std_logic := '0';
	signal data_in_test : std_logic_vector(11 downto 0) := "101010101010";	

    component AD574
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            sts : in std_logic;
            conver : in std_logic;
            data_in : in std_logic_vector(11 downto 0);

            -- Outputs
            data_ad : out std_logic_vector(11 downto 0);
            ce : out std_logic;
            cs : out std_logic;
            rc : out std_logic;
            addr : out std_logic_vector(3 downto 0);
            ad_over : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            NSYSRESET <= '0';
            wait for ( SYSCLK_PERIOD * 10 );          
            NSYSRESET <= '1';
            wait for ( SYSCLK_PERIOD * 10 );
			conver_test <= '1';
            wait for ( SYSCLK_PERIOD * 100 );
			sts_test <= '1';
			wait for ( SYSCLK_PERIOD * 4 );
			conver_test <= '0';
			wait for ( SYSCLK_PERIOD * 10 );
			sts_test <= '0';
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  AD574
    AD574_0 : AD574
        -- port map
        port map( 
            -- Inputs
            sys_clk => SYSCLK,
            sys_rest => NSYSRESET,
            sts => sts_test,
            conver => conver_test,
            data_in => data_in_test,

            -- Outputs
            data_ad => open,
            ce =>  open,
            cs =>  open,
            rc =>  open,
            addr => open,
            ad_over =>  open

            -- Inouts

        );

end behavioral;

