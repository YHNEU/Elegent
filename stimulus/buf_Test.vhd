----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Nov 20 18:38:05 2024
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: buf_Test.vhd
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

entity buf_Test is
end buf_Test;

architecture behavioral of buf_Test is

    constant SYSCLK_PERIOD : time := 40 ns; -- 25MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal data_ad_test : std_logic_vector(11 downto 0) := "000000000001";
	signal ad_over_test : std_logic := '0';
	signal send_over_test : std_logic := '0';
	signal receive_on_test : std_logic := '0';

    component buf
        -- ports
        port( 
            -- Inputs
            sys_clk : in std_logic;
            sys_rest : in std_logic;
            data_ad : in std_logic_vector(11 downto 0);
            ad_over : in std_logic;
            send_over : in std_logic;
			data_recive: in std_logic_vector(7 downto 0);
			receive_on : in std_logic;
			data1     : out std_logic_vector(7 downto 0);						-- 测试
			data2 	: out std_logic_vector(7 downto 0);						-- 测试
			data_filter : out std_logic_vector(13 downto 0);

            -- Outputs
            conver : out std_logic;
            vld_send : out std_logic;
            data_send : out std_logic_vector(7 downto 0)
	  data1     	 : out std_logic_vector(7 downto 0);						-- 测试
	  data2 		 : out std_logic_vector(7 downto 0);						-- 测试
	  data_filter 	 : out std_logic_vector(13 downto 0);
	  ad_once_over 	 : out std_logic;							-- 单通道结束标志位
	  data_send 	 : out std_logic_vector(7 downto 0)		-- 发送的数据
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
			receive_on_test <= '1';				-- 开始启动接收
			wait for ( SYSCLK_PERIOD * 1 ); 
			receive_on_test <= '0';
			wait for ( SYSCLK_PERIOD * 10 );	-- 接收AD数据第一次结束 
			ad_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 ); 
			ad_over_test <= '0';
			wait for ( SYSCLK_PERIOD * 10 ); 	-- 接收AD数据第二次结束
			ad_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 ); 
			ad_over_test <= '0';	
			wait for ( SYSCLK_PERIOD * 10 );	-- 接收AD数据第三次结束 
			ad_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 ); 
			ad_over_test <= '0';	
			wait for ( SYSCLK_PERIOD * 10 ); 	-- 接收AD数据第四次结束
			ad_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 ); 
			ad_over_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );
 			send_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );
			send_over_test <= '0';
			wait for ( SYSCLK_PERIOD * 100 );
 			send_over_test <= '1';
			wait for ( SYSCLK_PERIOD * 1 );
			send_over_test <= '0';			
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
            data_ad => data_ad_test,
            ad_over => ad_over_test,
            send_over => send_over_test,
			receive_on => receive_on_test,
            -- Outputs
            conver =>  open,
            vld_send =>  open,
			data1=>  open,
			data2=>  open,
			data_filter=>  open,
            data_send => open

            -- Inouts

        );

end behavioral;

