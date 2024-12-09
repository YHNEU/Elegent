--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Top_AD.vhd
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

entity Top_AD is
  port (
    sys_clk  : in std_logic; --!时钟
    sys_rest : in std_logic; --!复位
    sts      : in std_logic; -- !转换结束标志位 0 -> 1(AD574)
    data_in  : in std_logic_vector(11 downto 0); -- 接收的AD574数据(AD574)
    rx_uart  : in std_logic; -- 422接收数据端口
    ce       : out std_logic; -- AD使能信号
    cs       : out std_logic; -- AD使能信号
    rc       : out std_logic; -- AD使能信号(读写信号，AD574)
    addr     : out std_logic_vector(3 downto 0); -- 选通地址
    tx_uart  : out std_logic -- 422输出数据端口
  );
end Top_AD;

architecture architecture_Top_AD of Top_AD is

  signal ad_over         : std_logic;
  signal send_over       : std_logic;
  signal conver_top      : std_logic;
  signal vld_send        : std_logic;
  signal data_send       : std_logic_vector(7 downto 0);
  signal data_ad         : std_logic_vector(11 downto 0);
  signal data_recive     : std_logic_vector(7 downto 0);
  signal ad_once_over    : std_logic;
  signal addr_over       : std_logic;
  signal receive_over    : std_logic;
  signal data_all        : std_logic_vector((30 * 8) - 1 downto 0);
  signal vld_whole       : std_logic;
  signal send_whole_over : std_logic;
  signal receive_on      : std_logic;
  signal data1           : std_logic_vector(7 downto 0); -- 测试
  signal data2           : std_logic_vector(7 downto 0); -- 测试
  signal data_filter     : std_logic_vector(13 downto 0);

  component single_recive is
    port (
      sys_clk      : in std_logic; -- 系统时钟
      sys_rest     : in std_logic; -- 系统复位
      rx_uart      : in std_logic; -- 接收串行输入
      send_end     : in std_logic; -- 发送一帧结束标志
      receive_over : out std_logic;
      data_recive  : out std_logic_vector(7 downto 0) -- 接收的有效数据
    );
  end component;
  component addr_manage is
    port (
      sys_rst_n       : in std_logic; -- 时钟
      sys_clk         : in std_logic; -- 复位
      conver          : in std_logic; -- 开始转换信号（buf发出）
      ad_once_over    : in std_logic; -- 转换结束信号（AD574发出）
      send_whole_over : in std_logic; -- 所有发送结束(whole_send)
      receive_on      : in std_logic; -- 开始信号(buf)
      addr_over       : out std_logic; -- 地址至15通道标志位（buf接收）
      addr            : out std_logic_vector(3 downto 0) -- 输出的地址（Top接收）	   		
    );
  end component;
  component AD574 is
    port (
      sys_clk   : in std_logic; -- 时钟
      sys_rest  : in std_logic; -- 复位
      sts       : in std_logic; -- 转换结束标志位 0 -> 1
      conver    : in std_logic; -- 转换开始标志，高电平读取
      data_in   : in std_logic_vector(11 downto 0); -- 接收的AD574数据
      data_ad   : out std_logic_vector(11 downto 0); -- 输出的数据
      ce        : out std_logic; -- 使能信号，高有效
      addr_over : in std_logic; -- 所有通道选通结束(addr_manage)			  
      cs        : out std_logic; -- 使能信号（不用，常置0），低有效
      rc        : out std_logic; -- 读和转换使能，低电平转换，高电平读取
      ad_over   : out std_logic -- 读取结束标志位，高电平读取结束。					
    );
  end component;

  component buf is
    port (
      sys_clk         : in std_logic; -- 时钟
      sys_rest        : in std_logic; -- 复位
      data_ad         : in std_logic_vector(11 downto 0); -- ad输入数据
      ad_over         : in std_logic; -- AD转换读取数据结束标志位，结束为一个周期的高电平
      data_recive     : in std_logic_vector(7 downto 0); -- 接收的上位机数据
      addr_over       : in std_logic; -- 15通道采集结束标志位（addr_manage）
      receive_over    : in std_logic; -- 接收一个字节结束标志位（single_receive）
      addr            : in std_logic_vector(3 downto 0); -- 当前通道	（addr_manage）
      send_whole_over : in std_logic; -- 所有发送结束(whole_send)
      conver          : out std_logic; -- 启动AD转换标志位
      vld_whole       : out std_logic; -- 启动发送数据标志位
      data1           : out std_logic_vector(7 downto 0); -- 测试
      data2           : out std_logic_vector(7 downto 0); -- 测试
      data_filter     : out std_logic_vector(13 downto 0);
      ad_once_over    : out std_logic; -- 单通道结束标志位
      receive_on      : out std_logic;
      data_all        : out std_logic_vector((30 * 8) - 1 downto 0) -- 发送的数据
    );
  end component;

  component signal_send is -- 发送的单字节
    port (
      sys_clk   : in std_logic; -- 系统时钟
      sys_rest  : in std_logic; -- 系统复位
      vld_send  : in std_logic; -- 允许发送标志位
      data_send : in std_logic_vector(7 downto 0); -- 发送的有效数据
      send_over : out std_logic; -- 发送字节结束标志位
      tx_uart   : out std_logic -- 发送串行输出		
    );
  end component;

  component whole_send is -- 发送整帧数据
    port (
      sys_clk         : in std_logic; -- 时钟
      sys_rst_n       : in std_logic; -- 复位
      send_over       : in std_logic; -- 发送字节结束标志位(signal_send)
      data_all        : in std_logic_vector((30 * 8) - 1 downto 0); -- 发送的数据(buf)
      vld_whole       : in std_logic; -- 启动发送数据标志位(buf)
      vld_send        : out std_logic; -- 开始发送(signal_send)
      send_whole_over : out std_logic; -- 所有发送结束(buf)
      data_send       : out std_logic_vector(7 downto 0) -- 发送的有效数据(signal_send)
    );
  end component;
begin

  U0 : AD574 -- AD574转换
  port map
  (
    sys_clk   => sys_clk,
    sys_rest  => sys_rest,
    sts       => sts,
    conver    => conver_top,
    data_in   => data_in,
    data_ad   => data_ad,
    addr_over => addr_over,
    ce        => ce,
    cs        => cs,
    rc        => rc,
    ad_over   => ad_over
  );

  U1 : buf -- 缓存					
  port map
  (
    sys_clk         => sys_clk,
    sys_rest        => sys_rest,
    data_ad         => data_ad,
    ad_over         => ad_over,
    data_recive     => data_recive,
    addr_over       => addr_over,
    receive_over    => receive_over,
    addr            => addr,
    send_whole_over => send_whole_over,
    conver          => conver_top,
    vld_whole       => vld_whole,
    data1           => data1,
    data2           => data2,
    data_filter     => data_filter,
    receive_on      => receive_on,
    ad_once_over    => ad_once_over,
    data_all        => data_all
  );

  U2 : signal_send -- 发送数据
  port map
  (
    sys_clk   => sys_clk,
    sys_rest  => sys_rest,
    vld_send  => vld_send,
    data_send => data_send,
    send_over => send_over,
    tx_uart   => tx_uart
  );

  U3 : single_recive -- 接收开始字符
  port map
  (
    sys_clk      => sys_clk,
    sys_rest     => sys_rest,
    rx_uart      => rx_uart,
    send_end     => send_over,
    receive_over => receive_over,
    data_recive  => data_recive
  );

  U4 : addr_manage -- 地址选通管理
  port map
  (
    sys_rst_n       => sys_rest, -- 时钟
    sys_clk         => sys_clk, -- 复位
    conver          => conver_top, -- 开始转换信号（buf发出）
    ad_once_over    => ad_once_over, -- 转换结束信号（AD574发出）
    send_whole_over => send_whole_over, -- 所有发送结束(whole_send)
    receive_on      => receive_on,
    addr_over       => addr_over, -- 地址至15通道标志位
    addr            => addr -- 输出的地址	   		
  );

  U5 : whole_send -- 发送整帧数据
  port map
  (
    sys_clk         => sys_clk, -- 时钟
    sys_rst_n       => sys_rest, -- 复位
    send_over       => send_over, -- 发送字节结束标志位(signal_send)
    data_all        => data_all, -- 发送的数据(buf)
    vld_whole       => vld_whole, -- 启动发送数据标志位(buf)
    vld_send        => vld_send, -- 开始发送(signal_send)
    send_whole_over => send_whole_over, -- 所有发送结束(buf)
    data_send       => data_send -- 发送的有效数据(signal_send)
  );

end architecture_Top_AD;
