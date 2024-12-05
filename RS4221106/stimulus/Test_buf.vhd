----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Nov 05 14:13:08 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Test_buf.vhd
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

entity Test_buf is
end Test_buf;

architecture behavioral of Test_buf is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal rx_uart_in : std_logic := '1';

    component buf
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            rx_uart : in std_logic;

            -- Outputs
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
			wait for ( SYSCLK_PERIOD * 5 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';
			
			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';

			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';

			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';

			wait for ( SYSCLK_PERIOD * 217 ); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';			
			
			
			wait for ( SYSCLK_PERIOD * 217*50 ); 
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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
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
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';	


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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';	


			wait for ( SYSCLK_PERIOD * 217*10); 
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  	--第一位   --第一个字节
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';	
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
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
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
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217 );  
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 );
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217 ); --第八位 
			rx_uart_in <= '1';
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';	


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
			wait for ( SYSCLK_PERIOD * 217); --校验位
			rx_uart_in <= '0';
			wait for ( SYSCLK_PERIOD * 217); --校验位+结束位 
			rx_uart_in <= '1';	



			
            wait;			
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  buf
    buf_0 : buf
        -- port map
        port map( 
            -- Inputs
            sys_clk => SYSCLK,
            sys_rest => NSYSRESET,
            rx_uart => rx_uart_in,

            -- Outputs
            tx_uart =>  open

            -- Inouts

        );

end behavioral;

