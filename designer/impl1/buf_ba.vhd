-- Version: v11.9 11.9.0.4
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library proasic3;
use proasic3.all;

entity buf is

    port( sys_clk  : in    std_logic;
          sys_rest : in    std_logic;
          rx_uart  : in    std_logic;
          tx_uart  : out   std_logic;
          test     : out   std_logic;
          atck     : in    std_logic;
          atdi     : in    std_logic;
          atdo     : out   std_logic;
          atms     : in    std_logic;
          atrstb   : in    std_logic
        );

end buf;

architecture DEF_ARCH of buf is 

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component DFN1E0C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component AOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component AX1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKIO
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1P1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component RAM512X18
    generic (MEMORYFILE:string := "");

    port( RADDR8 : in    std_logic := 'U';
          RADDR7 : in    std_logic := 'U';
          RADDR6 : in    std_logic := 'U';
          RADDR5 : in    std_logic := 'U';
          RADDR4 : in    std_logic := 'U';
          RADDR3 : in    std_logic := 'U';
          RADDR2 : in    std_logic := 'U';
          RADDR1 : in    std_logic := 'U';
          RADDR0 : in    std_logic := 'U';
          WADDR8 : in    std_logic := 'U';
          WADDR7 : in    std_logic := 'U';
          WADDR6 : in    std_logic := 'U';
          WADDR5 : in    std_logic := 'U';
          WADDR4 : in    std_logic := 'U';
          WADDR3 : in    std_logic := 'U';
          WADDR2 : in    std_logic := 'U';
          WADDR1 : in    std_logic := 'U';
          WADDR0 : in    std_logic := 'U';
          WD17   : in    std_logic := 'U';
          WD16   : in    std_logic := 'U';
          WD15   : in    std_logic := 'U';
          WD14   : in    std_logic := 'U';
          WD13   : in    std_logic := 'U';
          WD12   : in    std_logic := 'U';
          WD11   : in    std_logic := 'U';
          WD10   : in    std_logic := 'U';
          WD9    : in    std_logic := 'U';
          WD8    : in    std_logic := 'U';
          WD7    : in    std_logic := 'U';
          WD6    : in    std_logic := 'U';
          WD5    : in    std_logic := 'U';
          WD4    : in    std_logic := 'U';
          WD3    : in    std_logic := 'U';
          WD2    : in    std_logic := 'U';
          WD1    : in    std_logic := 'U';
          WD0    : in    std_logic := 'U';
          RW0    : in    std_logic := 'U';
          RW1    : in    std_logic := 'U';
          WW0    : in    std_logic := 'U';
          WW1    : in    std_logic := 'U';
          PIPE   : in    std_logic := 'U';
          REN    : in    std_logic := 'U';
          WEN    : in    std_logic := 'U';
          RCLK   : in    std_logic := 'U';
          WCLK   : in    std_logic := 'U';
          RESET  : in    std_logic := 'U';
          RD17   : out   std_logic;
          RD16   : out   std_logic;
          RD15   : out   std_logic;
          RD14   : out   std_logic;
          RD13   : out   std_logic;
          RD12   : out   std_logic;
          RD11   : out   std_logic;
          RD10   : out   std_logic;
          RD9    : out   std_logic;
          RD8    : out   std_logic;
          RD7    : out   std_logic;
          RD6    : out   std_logic;
          RD5    : out   std_logic;
          RD4    : out   std_logic;
          RD3    : out   std_logic;
          RD2    : out   std_logic;
          RD1    : out   std_logic;
          RD0    : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E0P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AO1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component BUFF
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OAI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component AOI1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1P1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AO1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component UJTAG
    port( TDI    : in    std_logic := 'U';
          TMS    : in    std_logic := 'U';
          TCK    : in    std_logic := 'U';
          TRSTB  : in    std_logic := 'U';
          TDO    : out   std_logic;
          UTDO   : in    std_logic := 'U';
          URSTB  : out   std_logic;
          UDRCK  : out   std_logic;
          UDRCAP : out   std_logic;
          UDRSH  : out   std_logic;
          UDRUPD : out   std_logic;
          UTDI   : out   std_logic;
          UIREG0 : out   std_logic;
          UIREG1 : out   std_logic;
          UIREG2 : out   std_logic;
          UIREG3 : out   std_logic;
          UIREG4 : out   std_logic;
          UIREG5 : out   std_logic;
          UIREG6 : out   std_logic;
          UIREG7 : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal I_12_3, I_14_3, I_17_1, I_20_1, \data_all[0]_net_1\, 
        \data_all[1]_net_1\, \data_all[2]_net_1\, 
        \data_all[3]_net_1\, \data_all[4]_net_1\, 
        \data_all[5]_net_1\, \data_all[6]_net_1\, 
        \data_all[7]_net_1\, \data_all[8]_net_1\, 
        \data_all[9]_net_1\, \data_all[10]_net_1\, 
        \data_all[11]_net_1\, \data_all[12]_net_1\, 
        \data_all[13]_net_1\, \data_all[14]_net_1\, 
        \data_all[15]_net_1\, \data_all[16]_net_1\, 
        \data_all[17]_net_1\, \data_all[18]_net_1\, 
        \data_all[19]_net_1\, \data_all[20]_net_1\, 
        \data_all[21]_net_1\, \data_all[22]_net_1\, 
        \data_all[23]_net_1\, \data_all[24]_net_1\, 
        \data_all[25]_net_1\, \data_all[26]_net_1\, 
        \data_all[27]_net_1\, \data_all[28]_net_1\, 
        \data_all[29]_net_1\, \data_all[30]_net_1\, 
        \data_all[31]_net_1\, \data_all[32]_net_1\, 
        \data_all[33]_net_1\, \data_all[34]_net_1\, 
        \data_all[35]_net_1\, \data_all[36]_net_1\, 
        \data_all[37]_net_1\, \data_all[38]_net_1\, 
        \data_all[39]_net_1\, \data_all[40]_net_1\, 
        \data_all[41]_net_1\, \data_all[42]_net_1\, 
        \data_all[43]_net_1\, \data_all[44]_net_1\, 
        \data_all[45]_net_1\, \data_all[46]_net_1\, 
        \data_all[47]_net_1\, \data_all[48]_net_1\, 
        \data_all[49]_net_1\, \data_all[50]_net_1\, 
        \data_all[51]_net_1\, \data_all[52]_net_1\, 
        \data_all[53]_net_1\, \data_all[54]_net_1\, 
        \data_all[55]_net_1\, \data_all[56]_net_1\, 
        \data_all[57]_net_1\, \data_all[58]_net_1\, 
        \data_all[59]_net_1\, \data_all[60]_net_1\, 
        \data_all[61]_net_1\, \data_all[62]_net_1\, 
        \data_all[63]_net_1\, \data_all[64]_net_1\, 
        \data_all[65]_net_1\, \data_all[66]_net_1\, 
        \data_all[67]_net_1\, \data_all[68]_net_1\, 
        \data_all[69]_net_1\, \data_all[70]_net_1\, 
        \data_all[71]_net_1\, \data_all[72]_net_1\, 
        \data_all[73]_net_1\, \data_all[74]_net_1\, 
        \data_all[75]_net_1\, \data_all[76]_net_1\, 
        \data_all[77]_net_1\, \data_all[78]_net_1\, 
        \data_all[79]_net_1\, \data_all[80]_net_1\, 
        \data_all[81]_net_1\, \data_all[82]_net_1\, 
        \data_all[83]_net_1\, \data_all[84]_net_1\, 
        \data_all[85]_net_1\, \data_all[86]_net_1\, 
        \data_all[87]_net_1\, \data_all[88]_net_1\, 
        \data_all[89]_net_1\, \data_all[90]_net_1\, 
        \data_all[91]_net_1\, \data_all[92]_net_1\, 
        \data_all[93]_net_1\, \data_all[94]_net_1\, 
        \data_all[95]_net_1\, \data_all[96]_net_1\, 
        \data_all[97]_net_1\, \data_all[98]_net_1\, 
        \data_all[99]_net_1\, \data_all[100]_net_1\, 
        \data_all[101]_net_1\, \data_all[102]_net_1\, 
        \data_all[103]_net_1\, \data_all[104]_net_1\, 
        \data_all[105]_net_1\, \data_all[106]_net_1\, 
        \data_all[107]_net_1\, \data_all[108]_net_1\, 
        \data_all[109]_net_1\, \data_all[110]_net_1\, 
        \data_all[111]_net_1\, \data_all[112]_net_1\, 
        \data_all[113]_net_1\, \data_all[114]_net_1\, 
        \data_all[115]_net_1\, \data_all[116]_net_1\, 
        \data_all[117]_net_1\, \data_all[118]_net_1\, 
        \data_all[119]_net_1\, \data_all[120]_net_1\, 
        \data_all[121]_net_1\, \data_all[122]_net_1\, 
        \data_all[123]_net_1\, \data_all[124]_net_1\, 
        \data_all[125]_net_1\, \data_all[126]_net_1\, 
        \data_all[127]_net_1\, \data_all[128]_net_1\, 
        \data_all[129]_net_1\, \data_all[130]_net_1\, 
        \data_all[131]_net_1\, \data_all[132]_net_1\, 
        \data_all[133]_net_1\, \data_all[134]_net_1\, 
        \data_all[135]_net_1\, \data_all[136]_net_1\, 
        \data_all[137]_net_1\, \data_all[138]_net_1\, 
        \data_all[139]_net_1\, \data_all[140]_net_1\, 
        \data_all[141]_net_1\, \data_all[142]_net_1\, 
        \data_all[143]_net_1\, \data_all[144]_net_1\, 
        \data_all[145]_net_1\, \data_all[146]_net_1\, 
        \data_all[147]_net_1\, \data_all[148]_net_1\, 
        \data_all[149]_net_1\, \data_all[150]_net_1\, 
        \data_all[151]_net_1\, \data_all[152]_net_1\, 
        \data_all[153]_net_1\, \data_all[154]_net_1\, 
        \data_all[155]_net_1\, \data_all[156]_net_1\, 
        \data_all[157]_net_1\, \data_all[158]_net_1\, 
        \data_all[159]_net_1\, \receive_end\, 
        \data_recive_buffer[0]\, \data_recive_buffer[1]\, 
        \data_recive_buffer[2]\, \data_recive_buffer[3]\, 
        \data_recive_buffer[4]\, \data_recive_buffer[5]\, 
        \data_recive_buffer[6]\, \data_recive_buffer[7]\, 
        idle_recive, \vld_send\, \data_send_buffer[0]_net_1\, 
        \data_send_buffer[1]_net_1\, \data_send_buffer[2]_net_1\, 
        \data_send_buffer[3]_net_1\, \data_send_buffer[4]_net_1\, 
        \data_send_buffer[5]_net_1\, \data_send_buffer[6]_net_1\, 
        \data_send_buffer[7]_net_1\, \cnt_recive[0]_net_1\, 
        \cnt_recive[1]_net_1\, \cnt_recive[2]_net_1\, 
        \cnt_recive[3]_net_1\, \cnt_recive[4]_net_1\, 
        \cnt_recive[5]_net_1\, \cnt_recive[6]_net_1\, 
        \cnt_recive[7]_net_1\, \cnt_recive[8]_net_1\, 
        \cnt_recive[9]_net_1\, \cnt_recive[10]_net_1\, 
        \cnt_recive[11]_net_1\, \cnt_recive[12]_net_1\, 
        \cnt_recive[13]_net_1\, \cnt_recive[14]_net_1\, 
        \cnt_recive[15]_net_1\, \cnt_recive[16]_net_1\, 
        \cnt_recive[17]_net_1\, \cnt_recive[18]_net_1\, 
        \cnt_recive[19]_net_1\, \cnt_recive[20]_net_1\, 
        \cnt_recive[21]_net_1\, \cnt_recive[22]_net_1\, 
        \cnt_recive[23]_net_1\, \cnt_recive[24]_net_1\, 
        \cnt_recive[25]_net_1\, \cnt_recive[26]_net_1\, 
        \cnt_recive[27]_net_1\, \cnt_recive[28]_net_1\, 
        \cnt_recive[29]_net_1\, \cnt_recive[30]_net_1\, 
        \cnt_send[0]_net_1\, \cnt_send[1]_net_1\, 
        \cnt_send[2]_net_1\, \cnt_send[3]_net_1\, 
        \cnt_send[4]_net_1\, \cnt_send[5]_net_1\, 
        \cnt_send[6]_net_1\, \cnt_send[7]_net_1\, 
        \cnt_send[8]_net_1\, \cnt_send[9]_net_1\, 
        \cnt_send[10]_net_1\, \cnt_send[11]_net_1\, 
        \cnt_send[12]_net_1\, \cnt_send[13]_net_1\, 
        \cnt_send[14]_net_1\, \cnt_send[15]_net_1\, 
        \cnt_send[16]_net_1\, \cnt_send[17]_net_1\, 
        \cnt_send[18]_net_1\, \cnt_send[19]_net_1\, 
        \cnt_send[20]_net_1\, \cnt_send[21]_net_1\, 
        \cnt_send[22]_net_1\, \cnt_send[23]_net_1\, 
        \cnt_send[24]_net_1\, \cnt_send[25]_net_1\, 
        \cnt_send[26]_net_1\, \cnt_send[27]_net_1\, 
        \cnt_send[28]_net_1\, \cnt_send[29]_net_1\, 
        \cnt_send[30]_net_1\, \cnt_flag[3]_net_1\, 
        \cnt_flag[0]_net_1\, \cnt_flag[1]_net_1\, 
        \cnt_delay[1]_net_1\, \cnt_delay[2]_net_1\, 
        \cnt_delay[5]_net_1\, \idle_recive_fall\, 
        \idle_send_fall\, idle_recive_fall_3, idle_send_fall_2, 
        idle_recive_down_3, idle_send_down_3, \idle_send_down\, 
        \cnt_recive_end[0]_net_1\, \cnt_recive_end[1]_net_1\, 
        receive_end2lto2, receive_end2lto3, 
        \cnt_recive_end[4]_net_1\, \cnt_recive_end[5]_net_1\, 
        \cnt_recive_end[6]_net_1\, receive_end2lto7, 
        receive_end2lto8, receive_end2lto9, \cnt_delay[0]_net_1\, 
        \cnt_delay[3]_net_1\, \cnt_delay[4]_net_1\, 
        \cnt_delay[6]_net_1\, \cnt_delay[7]_net_1\, 
        \cnt_flag[2]_net_1\, \cnt_flag[4]_net_1\, 
        cnt_recive_end_n0, cnt_recive_end_n1, cnt_recive_end_n2, 
        cnt_recive_end_n3, cnt_recive_end_n4, cnt_recive_end_n5, 
        cnt_recive_end_n6, cnt_recive_end_n7, cnt_recive_end_n8, 
        cnt_recive_end_n9, N_378, send_end_0_sqmuxa_i, 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\, 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\, sys_clk_c, 
        sys_rest_c, rx_uart_c, tx_uart_c, test_c, 
        receive_end_1_sqmuxa, vld_send_0_sqmuxa, 
        vld_send_2_sqmuxa, cnt_delay_n7, cnt_delaye, cnt_delay_n6, 
        cnt_delay_n5, cnt_delay_n4, cnt_delay_n3, cnt_delay_n2, 
        cnt_delay_n1, N_1482, cnt_flage, N_1483, cnt_flag_n1, 
        cnt_flag_n2, cnt_flag_n3, cnt_flag_n4, N_275, 
        cnt_recive_1_sqmuxa, N_241, N_225, N_221, N_215, N_1600, 
        N_1598, N_1595, N_1594, \data_all_4[151]\, cnt_send_n3, 
        cnt_sende, cnt_send_n2, N_259, N_161, N_254, N_266, 
        N_1544, N_116, N_1612, N_1610, cnt_recive_n12, N_34, N_36, 
        N_35, N_38, \data_send_buffer_3[7]\, 
        data_send_buffer_1_sqmuxa, N_319, N_291, N_289, N_231, 
        N_227, N_1609, N_317, N_203, N_201, N_212, cnt_recive_n28, 
        cnt_send_n26, cnt_send_n25, cnt_send_n24, cnt_send_n23, 
        cnt_send_n22, cnt_send_n21, cnt_send_n20, cnt_send_n19, 
        N_1487, N_1488, N_1489, N_24_0, N_323, N_321, N_315, 
        N_313, N_311, N_309, N_307, N_299, N_287, N_285, N_283, 
        N_281, N_279, N_277, N_239, N_237, N_235, N_233, N_223, 
        N_219, N_217, N_213, N_209, N_207, N_205, N_199, N_197, 
        N_195, N_193, N_183, N_181, N_179, N_175, N_171, N_169, 
        N_122, N_120, N_118, N_1611, N_1597, N_1586, N_1727, 
        N_274, N_270, N_262, N_258, N_250, N_246, N_242, N_240, 
        N_238, N_236, N_234, N_1588, N_1592, N_1593, N_1596, 
        N_1599, N_1601, N_1602, N_1603, N_1604, N_1605, N_1606, 
        N_1607, N_1608, N_1726, N_1725, N_1724, N_1723, N_1722, 
        N_1721, N_1720, N_1719, N_1718, N_1717, N_147, N_149, 
        N_151, N_153, N_155, N_157, N_159, N_163, N_165, N_167, 
        N_173, N_177, N_211, N_229, N_243, N_245, N_247, N_249, 
        N_251, N_253, N_255, N_257, N_261, N_263, N_265, N_267, 
        N_269, N_271, N_273, N_293, N_295, N_297, N_301, N_303, 
        N_305, N_1715, N_191, N_189, N_187, N_185, N_1591, N_1590, 
        N_1589, N_1587, cnt_send_n4, \data_send_buffer_3[6]\, 
        N_115, \data_send_buffer_3[5]\, N_1716, \data_all_4[125]\, 
        \data_all_4[124]\, \data_all_4[123]\, \data_all_4[122]\, 
        \data_all_4[121]\, \data_all_4[110]\, \data_all_4[109]\, 
        \data_all_4[108]\, \data_all_4[107]\, \data_all_4[106]\, 
        \data_all_4[105]\, \data_all_4[104]\, 
        \data_send_buffer_3[0]\, \data_send_buffer_3[2]\, 
        \data_send_buffer_3[3]\, \data_send_buffer_3[4]\, 
        cnt_recive_n24, cnt_recive_n23, cnt_recive_n22, 
        cnt_recive_n21, cnt_recive_n20, cnt_recive_n19, 
        cnt_recive_n18, cnt_recive_n17, cnt_recive_n11, 
        cnt_recive_n10, N_39, N_41, N_43, N_45, N_24, N_26, N_28, 
        N_30, N_32, cnt_send_n9, N_1486, N_101, cnt_send_n10, 
        cnt_send_n11, cnt_send_n12, cnt_send_n13, cnt_send_n14, 
        cnt_send_n29, cnt_send_n30, cnt_recive_n13, 
        cnt_recive_n14, cnt_recive_n15, cnt_recive_n16, 
        cnt_send_n27, cnt_send_n28, cnt_recive_n25, 
        cnt_recive_n26, cnt_recive_n27, cnt_recive_n29, 
        cnt_recive_n30, 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        idle_recive_down_i_0, \send_end\, m82, 
        \genblk9.b9_v_mzCDYXs13_0_a3_1\, cnt_sende_0, 
        \cnt_send_0[1]_net_1\, \cnt_send_0[0]_net_1\, 
        \ident_coreinst/IICE_comm2iice_1[9]\, 
        \ident_coreinst/IICE_comm2iice[9]\, 
        \ident_coreinst/IICE_comm2iice_0[9]\, 
        \ident_coreinst/IICE_comm2iice[11]\, 
        \ident_coreinst/IICE_comm2iice[10]\, 
        \ident_coreinst/IICE_comm2iice[8]\, 
        \ident_coreinst/IICE_comm2iice[7]\, 
        \ident_coreinst/IICE_comm2iice[6]\, 
        \ident_coreinst/IICE_comm2iice[5]\, 
        \ident_coreinst/IICE_comm2iice[4]\, 
        \ident_coreinst/IICE_comm2iice[3]\, 
        \ident_coreinst/IICE_comm2iice[2]\, 
        \ident_coreinst/IICE_comm2iice[1]\, 
        \ident_coreinst/IICE_comm2iice[0]\, 
        \ident_coreinst/IICE_iice2comm\, 
        \ident_coreinst/IICE_INST/b13_PSyil9s_FMZ_L_2\, 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        \ident_coreinst/IICE_INST/b5_iSWcC\, 
        \ident_coreinst/IICE_INST/b10_nYBzIXrKbK[1]\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[159]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[158]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[157]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[156]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[155]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[154]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[153]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[152]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[151]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[150]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[149]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[148]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[147]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[146]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[145]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[144]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[143]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[142]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[141]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[140]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[139]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[138]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[137]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[136]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[135]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[134]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[133]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[132]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[131]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[130]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[129]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[128]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[127]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[126]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[125]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[124]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[123]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[122]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[121]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[120]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[119]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[118]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[117]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[116]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[115]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[114]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[113]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[112]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[111]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[110]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[109]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[108]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[107]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[106]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[105]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[104]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[103]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[102]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[101]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[100]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[99]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[98]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[97]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[96]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[95]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[94]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[93]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[92]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[91]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[90]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[89]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[88]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[87]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[86]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[85]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[84]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[83]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[82]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[81]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[80]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[79]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[78]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[77]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[76]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[75]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[74]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[73]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[72]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[71]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[70]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[69]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[68]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[67]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[66]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[65]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[64]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[63]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[62]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[61]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[60]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[59]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[58]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[57]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[56]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[55]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[54]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[53]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[52]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[51]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[50]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[49]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[48]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[47]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[46]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[45]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[44]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[43]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[42]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[41]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[40]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[39]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[38]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[37]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[36]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[35]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[34]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[33]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[32]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[31]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[30]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[29]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[28]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[27]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[26]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[25]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[24]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[23]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[22]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[21]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[20]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[19]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[18]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[17]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[16]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[15]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[14]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[13]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[12]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[11]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[10]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[9]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[8]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[7]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[6]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[5]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[4]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[3]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[2]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[1]_net_1\, 
        \ident_coreinst/IICE_INST/mdiclink_reg[0]_net_1\, 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, 
        \ident_coreinst/IICE_INST/b7_PSyi_9u\, 
        \ident_coreinst/IICE_INST/b9_OFWNT9_ab\, 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, 
        \ident_coreinst/IICE_INST/b9_vbTtJX_ab\, 
        \ident_coreinst/IICE_INST/b8_ubTt3_YG\, 
        \ident_coreinst/IICE_INST/b8_nUTQ_XlK\, 
        \ident_coreinst/IICE_INST/b12_PSyi_XlK_qHv\, 
        \ident_coreinst/IICE_INST/b10_OFWNT9_Y2x\, 
        \ident_coreinst/IICE_INST/b10_PKFoLX_Y2x\, 
        \ident_coreinst/IICE_INST/b10_vbTtJX_Y2x\, 
        \ident_coreinst/IICE_INST/b9_ubTt3_Mxf\, 
        \ident_coreinst/IICE_INST/b8_yYh0_XlK\, 
        \ident_coreinst/IICE_INST/b13_nAzGfFM_sLsv3_RNIVBP6[1]\, 
        \ident_coreinst/IICE_INST/N_1551\, 
        \ident_coreinst/IICE_INST/b5_voSc3\, 
        \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP_0[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[32]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[32]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[33]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[33]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[34]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[32]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[34]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[35]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[33]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[35]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[36]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[34]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[36]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[37]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[35]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[37]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[38]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[36]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[38]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[39]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[37]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[39]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[40]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[38]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[40]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[41]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[39]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[41]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[42]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[40]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[42]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[43]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[41]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[43]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[44]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[42]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[44]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[45]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[43]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[45]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[46]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[44]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[46]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[47]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[45]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[47]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[48]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[46]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[48]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[49]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[47]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[49]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[50]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[48]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[50]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[51]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[49]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[51]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[52]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[50]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[52]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[53]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[51]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[53]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[54]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[52]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[54]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[55]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[53]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[55]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[56]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[54]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[56]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[57]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[55]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[57]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[58]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[56]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[58]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[59]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[57]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[59]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[60]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[58]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[60]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[61]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[59]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[61]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[62]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[60]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[62]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[63]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[61]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[63]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[64]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[62]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[64]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[65]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[63]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[65]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[66]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[64]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[66]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[67]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[65]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[67]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[68]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[66]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[68]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[69]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[67]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[69]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[70]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[68]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[70]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[71]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[69]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[71]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[72]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[70]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[72]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[73]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[71]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[73]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[74]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[72]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[74]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[75]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[73]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[75]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[76]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[74]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[76]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[77]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[75]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[77]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[78]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[76]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[78]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[79]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[77]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[79]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[80]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[78]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[80]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[81]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[79]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[81]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[82]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[80]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[82]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[83]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[81]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[83]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[84]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[82]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[84]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[85]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[83]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[85]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[86]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[84]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[86]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[87]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[85]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[87]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[88]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[86]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[88]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[89]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[87]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[89]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[90]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[88]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[90]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[91]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[89]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[91]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[92]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[90]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[92]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[93]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[91]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[93]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[94]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[92]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[94]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[95]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[93]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[95]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[96]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[94]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[96]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[97]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[95]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[97]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[98]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[96]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[98]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[99]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[97]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[99]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[100]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[98]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[100]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[101]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[99]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[101]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[102]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[100]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[102]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[103]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[101]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[103]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[104]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[102]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[104]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[105]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[103]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[105]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[106]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[104]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[106]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[107]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[105]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[107]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[108]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[106]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[108]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[109]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[107]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[109]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[110]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[108]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[110]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[111]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[109]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[111]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[112]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[110]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[112]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[113]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[111]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[113]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[114]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[112]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[114]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[115]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[113]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[115]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[116]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[114]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[116]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[117]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[115]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[117]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[118]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[116]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[118]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[119]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[117]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[119]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[120]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[118]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[120]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[121]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[119]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[121]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[122]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[120]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[122]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[123]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[121]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[123]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[124]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[122]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[124]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[125]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[123]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[125]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[126]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[124]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[126]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[127]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[125]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[127]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[128]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[126]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[128]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[129]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[127]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[129]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[130]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[128]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[130]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[131]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[129]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[131]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[132]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[130]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[132]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[133]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[131]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[133]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[134]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[132]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[134]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[135]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[133]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[135]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[136]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[134]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[136]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[137]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[135]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[137]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[138]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[136]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[138]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[139]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[137]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[139]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[140]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[138]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[140]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[141]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[139]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[141]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[142]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[140]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[142]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[143]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[141]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[143]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[144]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[142]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[144]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[145]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[143]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[145]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[146]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[144]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[146]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[147]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[145]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[147]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[148]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[146]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[148]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[149]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[147]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[149]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[150]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[148]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[150]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[151]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[149]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[151]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[152]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[150]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[152]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[153]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[151]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[153]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[154]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[152]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[154]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[155]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[153]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[155]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[156]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[154]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[156]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[157]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[155]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[157]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[158]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[156]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[158]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[159]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[157]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[159]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[160]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[158]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[160]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[161]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[159]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[161]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[160]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/I_12_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/I_14_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum_0[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/I_12_2\, 
        \ident_coreinst/IICE_INST/b3_SoW/I_14_2\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[2]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[2]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[1]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[0]_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[32]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[33]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[34]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[35]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[36]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[37]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[38]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[39]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[40]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[41]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[42]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[43]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[44]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[45]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[46]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[47]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[48]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[49]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[50]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[51]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[52]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[53]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[54]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[55]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[56]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[57]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[58]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[59]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[60]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[61]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[62]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[63]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[64]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[65]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[66]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[67]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[68]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[69]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[70]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[71]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[72]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[73]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[74]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[75]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[76]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[77]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[78]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[79]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[80]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[81]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[82]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[83]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[84]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[85]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[86]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[87]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[88]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[89]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[90]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[91]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[92]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[93]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[94]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[95]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[96]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[97]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[98]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[99]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[100]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[101]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[102]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[103]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[104]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[105]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[106]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[107]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[108]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[109]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[110]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[111]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[112]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[113]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[114]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[115]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[116]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[117]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[118]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[119]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[120]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[121]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[122]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[123]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[124]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[125]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[126]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[127]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[128]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[129]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[130]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[131]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[132]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[133]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[134]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[135]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[136]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[137]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[138]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[139]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[140]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[141]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[142]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[143]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[144]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[145]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[146]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[147]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[148]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[149]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[150]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[151]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[152]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[153]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[154]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[155]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[156]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[157]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[158]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[159]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[160]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[161]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[162]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[163]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[164]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[165]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[166]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs13\, 
        \ident_coreinst/IICE_INST/b3_SoW/ttdo\, 
        \ident_coreinst/IICE_INST/b3_SoW/N_30\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[32]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[33]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[34]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[35]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[36]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[37]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[38]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[39]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[40]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[41]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[42]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[43]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[44]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[45]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[46]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[47]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[48]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[49]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[50]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[51]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[52]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[53]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[54]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[55]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[56]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[57]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[58]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[59]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[60]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[61]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[62]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[63]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[64]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[65]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[66]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[67]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[68]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[69]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[70]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[71]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[72]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[73]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[74]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[75]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[76]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[77]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[78]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[79]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[80]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[81]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[82]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[83]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[84]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[85]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[86]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[87]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[88]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[89]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[90]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[91]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[92]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[93]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[94]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[95]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[96]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[97]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[98]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[99]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[100]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[101]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[102]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[103]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[104]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[105]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[106]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[107]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[108]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[109]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[110]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[111]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[112]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[113]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[114]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[115]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[116]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[117]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[118]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[119]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[120]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[121]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[122]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[123]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[124]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[125]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[126]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[127]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[128]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[129]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[130]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[131]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[132]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[133]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[134]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[135]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[136]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[137]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[138]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[139]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[140]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[141]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[142]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[143]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[144]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[145]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[146]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[147]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[148]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[149]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[150]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[151]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[152]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[153]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[154]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[155]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[156]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[157]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[158]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[159]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[160]\, 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, \GND\, \VCC\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[13]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[14]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[15]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[16]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[17]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[18]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_1552\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b4_ycsM\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a1_2\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH_net_1\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_4tt_m2_e_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_5tt_m2_e_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_tz\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_tz\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\, 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_yYh0_9u_0_a2_1\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4_net_1\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_25\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_27\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_0\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_89\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_partial_sum[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_90\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_91\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_1[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_pog_array_0[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_TMP[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_0_1[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa_0\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[6]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[7]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[6]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[7]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[8]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[8]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[9]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[8]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[9]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[10]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[10]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[11]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[11]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[12]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[13]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[14]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[14]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[14]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[15]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[16]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[15]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[16]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[16]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[17]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[18]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[17]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[18]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_97\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b13_nAzGfFM_sLsv3_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_194\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[3]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_191\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_198_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[4]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[13]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[5]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[4]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[3]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[5]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[7]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[9]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[3]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[10]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[4]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[12]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[13]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[14]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[16]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[18]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme3\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_i\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/N_83\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_ack\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/un1_in_en_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en4\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]\, 
        \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, 
        \ident_coreinst/comm_block_INST/b11_uRrc_WYOFjZ[0]\, 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, 
        \ident_coreinst/comm_block_INST/tdo_sig\, 
        \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, 
        \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, 
        \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\, 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\, 
        \ident_coreinst/comm_block_INST/IICE_iice2comm_m\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql.b3_PLF_iv_0\, 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_16\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_15\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[3]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[31]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[31]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[30]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[30]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[29]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[29]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[28]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[27]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[27]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[26]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[26]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[25]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[25]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[24]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[24]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[23]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[23]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[22]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[22]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[21]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[20]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[19]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[19]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[18]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[17]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[17]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[16]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[16]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[15]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[14]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[13]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[13]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[12]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[12]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[11]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[11]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[10]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[10]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[9]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[9]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[8]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[8]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[7]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[7]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[6]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[6]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[5]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[5]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[4]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[3]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[32]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[29]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[22]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[20]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[15]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[11]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[7]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[6]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[3]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[30]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[28]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[25]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[24]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[23]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[18]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[16]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[13]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[12]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[10]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[5]_net_1\, 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[4]_net_1\, 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, 
        \ident_coreinst/comm_block_INST/jtagi/b11_uRrc_9urXBb_0[0]\, 
        \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_fFfsjX_0\, 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, 
        \ident_coreinst/comm_block_INST/jtagi/b9_96_cLqgOF3_1\, 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[1]\, 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[5]\, 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[2]\, 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2\, 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2_0\, 
        \ident_coreinst/comm_block_INST/jtagi/un1_b9_96_cLqgOF3\, 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk2_no_clk_buffer_needed\, 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk_int\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/tdo_sig_m_0\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m[0]\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m_0[0]\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[1]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[2]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]_net_1\, 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\, 
        \signal_send_0/N_344_3\, \signal_send_0/OVER_12_7_net_1\, 
        \signal_send_0/OVER_12_8_net_1\, 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, 
        \signal_send_0/N_344_2\, \signal_send_0/N_344_1\, 
        \signal_send_0/N_344_0\, 
        \signal_send_0/DWACT_ADD_CI_0_g_array_11[0]\, 
        \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\, 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_1[0]\, 
        \signal_send_0/DWACT_ADD_CI_0_g_array_3[0]\, 
        \signal_send_0/DWACT_ADD_CI_0_g_array_1[0]\, 
        \signal_send_0/DWACT_ADD_CI_0_g_array_12_3[0]\, 
        \signal_send_0/cnt_end[8]_net_1\, 
        \signal_send_0/cnt_end[2]_net_1\, 
        \signal_send_0/cnt_end[4]_net_1\, 
        \signal_send_0/cnt_end[6]_net_1\, 
        \signal_send_0/DWACT_ADD_CI_0_TMP[0]\, 
        \signal_send_0/cnt_end[1]_net_1\, 
        \signal_send_0/un8_cnt_end_7\, 
        \signal_send_0/un8_cnt_end_1\, 
        \signal_send_0/un8_cnt_end_0\, 
        \signal_send_0/un8_cnt_end_4\, 
        \signal_send_0/un8_cnt_end_6\, 
        \signal_send_0/cnt_end[7]_net_1\, 
        \signal_send_0/cnt_end[3]_net_1\, 
        \signal_send_0/un8_cnt_end_3\, 
        \signal_send_0/cnt_end[0]_net_1\, 
        \signal_send_0/cnt_end[5]_net_1\, 
        \signal_send_0/cnt_end[9]_net_1\, 
        \signal_send_0/cnt_end_1_sqmuxa\, 
        \signal_send_0/idle_send_net_1\, 
        \signal_send_0/cnt_end_5[9]\, 
        \signal_send_0/cnt_end_0_sqmuxa\, 
        \signal_send_0/cnt_end_5[7]\, 
        \signal_send_0/un1_cnt_end_1[8]\, 
        \signal_send_0/cnt_end_5[3]\, 
        \signal_send_0/un1_cnt_end_1[4]\, \signal_send_0/I_40\, 
        \signal_send_0/I_36\, \signal_send_0/I_35\, 
        \signal_send_0/I_34\, \signal_send_0/cnt_m3_0_a2_1_net_1\, 
        \signal_send_0/cnt_m4_0_a2_6_net_1\, 
        \signal_send_0/cnt_m6_0_a2_7_5_net_1\, 
        \signal_send_0/cnt_m6_0_a2_7_6_net_1\, 
        \signal_send_0/cnt_m4_0_a2_5_net_1\, 
        \signal_send_0/cnt_m4_0_a2_1_net_1\, 
        \signal_send_0/cnt_m4_0_a2_3_net_1\, 
        \signal_send_0/cnt_m6_0_a2_7_3\, 
        \signal_send_0/cnt_m5_0_a2_4_3_net_1\, 
        \signal_send_0/cnt_m5_0_a2_4_2_net_1\, 
        \signal_send_0/m85_0\, 
        \signal_send_0/cnt_m6_0_a2_7_4_net_1\, 
        \signal_send_0/cnt_m6_0_a2_7_2_net_1\, 
        \signal_send_0/N_64\, \signal_send_0/N_62\, 
        \signal_send_0/cnt_N_9_mux_1\, 
        \signal_send_0/cnt_m3_0_a2_3_net_1\, 
        \signal_send_0/cnt_m3_0_a2_2_net_1\, 
        \signal_send_0/cnt_N_13_mux\, 
        \signal_send_0/cnt_N_11_mux_0\, 
        \signal_send_0/cnt_N_9_mux\, 
        \signal_send_0/cnt_recive_c28_net_1\, 
        \signal_send_0/cnt_recive_c26_net_1\, 
        \signal_send_0/cnt_recive_n26_tz_net_1\, 
        \signal_send_0/N_72\, 
        \signal_send_0/cnt_recive_c25_0_net_1\, 
        \signal_send_0/cnt_recive_c24_net_1\, 
        \signal_send_0/cnt_recive_c27_net_1\, 
        \signal_send_0/cnt_recive_169_1_net_1\, 
        \signal_send_0/N_1058\, \signal_send_0/N_1505\, 
        \signal_send_0/N_1503\, \signal_send_0/N_65\, 
        \signal_send_0/N_63\, \signal_send_0/N_61\, 
        \signal_send_0/N_54\, \signal_send_0/cnt[1]_net_1\, 
        \signal_send_0/cnt[0]_net_1\, \signal_send_0/N_9\, 
        \signal_send_0/cnt[3]_net_1\, 
        \signal_send_0/DWACT_FINC_E[0]\, 
        \signal_send_0/cnt[8]_net_1\, 
        \signal_send_0/DWACT_FINC_E[4]\, 
        \signal_send_0/vld_send_i\, \signal_send_0/N_366\, 
        \signal_send_0/N_646_2\, \signal_send_0/N_804_2\, 
        \signal_send_0/N_377\, \signal_send_0/N_648_2\, 
        \signal_send_0/m77_0_1_net_1\, 
        \signal_send_0/m77_0_464_net_1\, 
        \signal_send_0/m62_0_1_net_1\, \signal_send_0/N_421\, 
        \signal_send_0/data_all_4_i_0[135]_net_1\, 
        \signal_send_0/data_all_4_i_0[129]_net_1\, 
        \signal_send_0/data_all_4_i_0[133]_net_1\, 
        \signal_send_0/data_all_4_i_0[3]_net_1\, 
        \signal_send_0/N_1730\, 
        \signal_send_0/m77_0_464_tz_0_net_1\, 
        \signal_send_0/m77_0_464_tz_1_net_1\, 
        \signal_send_0/N_1658\, \signal_send_0/N_1660\, 
        \signal_send_0/N_642_2\, 
        \signal_send_0/data_send_buffer_3_1_17[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_11[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_10[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_14[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_2[2]_net_1\, 
        \signal_send_0/N_551\, 
        \signal_send_0/data_send_buffer_3_1_8[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_13[2]_net_1\, 
        \signal_send_0/N_553\, 
        \signal_send_0/data_send_buffer_3_1_1[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_6[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_12[2]_net_1\, 
        \signal_send_0/N_544\, \signal_send_0/N_546\, 
        \signal_send_0/N_541\, 
        \signal_send_0/data_send_buffer_3_1_a2_19_0[2]_net_1\, 
        \signal_send_0/N_1662\, 
        \signal_send_0/data_send_buffer_3_1_4[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_3_tz[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_3_0[2]_net_1\, 
        \signal_send_0/N_1688\, \signal_send_0/N_552\, 
        \signal_send_0/N_1683\, \signal_send_0/N_543\, 
        \signal_send_0/N_1673\, \signal_send_0/N_547\, 
        \signal_send_0/N_1690\, \signal_send_0/N_557\, 
        \signal_send_0/N_971\, \signal_send_0/N_555\, 
        \signal_send_0/N_925\, 
        \signal_send_0/data_send_buffer_3_1_0[2]_net_1\, 
        \signal_send_0/data_m1_e_4_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_17_4[2]_net_1\, 
        \signal_send_0/N_549\, \signal_send_0/m77_0_2_net_1\, 
        \signal_send_0/m77_0_462_net_1\, 
        \signal_send_0/m77_0_463_net_1\, 
        \signal_send_0/m62_0_3_net_1\, 
        \signal_send_0/m62_0_0_1_net_1\, 
        \signal_send_0/m62_0_4_net_1\, \signal_send_0/N_1659\, 
        \signal_send_0/m62_0_0_tz_net_1\, 
        \signal_send_0/m62_0_451_net_1\, 
        \signal_send_0/data_send_buffer_3_1_15[4]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_9[4]_net_1\, 
        \signal_send_0/N_522\, 
        \signal_send_0/data_send_buffer_3_1_12[4]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_1[4]_net_1\, 
        \signal_send_0/N_517\, 
        \signal_send_0/data_send_buffer_3_1_7[4]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_11[4]_net_1\, 
        \signal_send_0/N_514\, 
        \signal_send_0/data_send_buffer_3_1_0[4]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_5[4]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_10[4]_net_1\, 
        \signal_send_0/N_507\, \signal_send_0/N_510\, 
        \signal_send_0/data_send_buffer_3_1_3[4]_net_1\, 
        \signal_send_0/N_456\, 
        \signal_send_0/data_send_buffer_3_1_2[4]_net_1\, 
        \signal_send_0/N_1686\, \signal_send_0/N_515\, 
        \signal_send_0/N_508\, \signal_send_0/N_511\, 
        \signal_send_0/N_519\, \signal_send_0/N_521\, 
        \signal_send_0/N_513\, 
        \signal_send_0/data_send_buffer_3_1_14[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_5[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_4[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_10[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_13[3]_net_1\, 
        \signal_send_0/N_524\, 
        \signal_send_0/data_send_buffer_3_1_2[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_8[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_12[3]_net_1\, 
        \signal_send_0/N_534\, 
        \signal_send_0/data_send_buffer_3_1_0[3]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_7[3]_net_1\, 
        \signal_send_0/N_529\, \signal_send_0/N_530\, 
        \signal_send_0/N_523\, \signal_send_0/N_539\, 
        \signal_send_0/N_540\, \signal_send_0/N_535\, 
        \signal_send_0/N_536\, \signal_send_0/N_927\, 
        \signal_send_0/N_527\, \signal_send_0/N_525\, 
        \signal_send_0/N_538\, \signal_send_0/N_532\, 
        \signal_send_0/data_all_4_i_0_0[140]_net_1\, 
        \signal_send_0/N_306\, 
        \signal_send_0/data_all_4_i_0_0[142]_net_1\, 
        \signal_send_0/data_all_4_i_0[130]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[136]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[138]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[139]_net_1\, 
        \signal_send_0/data_all_4_i_0[134]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[137]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[152]_net_1\, 
        \signal_send_0/N_1739\, 
        \signal_send_0/data_all_4_i_0_0[153]_net_1\, 
        \signal_send_0/data_all_4_i_0[159]_net_1\, 
        \signal_send_0/data_all_4_i_0[154]_net_1\, 
        \signal_send_0/data_all_4_i_0[128]_net_1\, 
        \signal_send_0/data_all_4_i_0[131]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[157]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[143]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[141]_net_1\, 
        \signal_send_0/data_all_4_i_0[158]_net_1\, 
        \signal_send_0/data_all_4_i_0[132]_net_1\, 
        \signal_send_0/data_all_4_i_0[155]_net_1\, 
        \signal_send_0/data_all_4_i_0[156]_net_1\, 
        \signal_send_0/cnt_send_n16_i_0_net_1\, 
        \signal_send_0/cnt_m5_0_a2_6_net_1\, 
        \signal_send_0/cnt_m6_0_a2_4_0\, 
        \signal_send_0/data_all_4_i_0[147]_net_1\, 
        \signal_send_0/N_385\, \signal_send_0/N_314\, 
        \signal_send_0/data_all_4_i_0_0[144]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[146]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[149]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[148]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[150]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[145]_net_1\, 
        \signal_send_0/m81_i_2_net_1\, 
        \signal_send_0/m81_i_3_tz_net_1\, \signal_send_0/N_318\, 
        \signal_send_0/N_1917\, \signal_send_0/m81_i_1_net_1\, 
        \signal_send_0/m81_i_a3_1_0_net_1\, 
        \signal_send_0/N_1583\, \signal_send_0/m81_i_0_net_1\, 
        \signal_send_0/un17_data_send_buffer\, 
        \signal_send_0/N_360\, 
        \signal_send_0/data_send_buffer_3_1_8[0]_net_1\, 
        \signal_send_0/N_569\, \signal_send_0/N_566\, 
        \signal_send_0/data_send_buffer_3_1_5[0]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_7_0[0]_net_1\, 
        \signal_send_0/N_564\, \signal_send_0/N_565\, 
        \signal_send_0/data_send_buffer_3_1_7[0]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_6[0]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_1[0]_net_1\, 
        \signal_send_0/N_576\, \signal_send_0/N_570\, 
        \signal_send_0/N_571\, \signal_send_0/N_562\, 
        \signal_send_0/N_567\, \signal_send_0/N_563\, 
        \signal_send_0/data_send_buffer_3_1_7[6]_net_1\, 
        \signal_send_0/N_497\, \signal_send_0/N_498\, 
        \signal_send_0/data_send_buffer_3_1_4[6]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_6[6]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_1[6]_net_1\, 
        \signal_send_0/N_499\, 
        \signal_send_0/data_send_buffer_3_1_3[6]_net_1\, 
        \signal_send_0/N_502\, \signal_send_0/N_1676\, 
        \signal_send_0/N_501\, \signal_send_0/N_494\, 
        \signal_send_0/N_503\, \signal_send_0/N_495\, 
        \signal_send_0/data_all_4_i_0[65]_net_1\, 
        \signal_send_0/N_367\, 
        \signal_send_0/data_all_4_i_0[74]_net_1\, 
        \signal_send_0/N_372\, 
        \signal_send_0/data_all_4_i_0[73]_net_1\, 
        \signal_send_0/data_all_4_i_0[64]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[14]_net_1\, 
        \signal_send_0/N_316\, 
        \signal_send_0/data_all_4_i_0_0[11]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[13]_net_1\, 
        \signal_send_0/data_all_4_i_0[68]_net_1\, 
        \signal_send_0/data_all_4_i_0[75]_net_1\, 
        \signal_send_0/data_all_4_i_0[76]_net_1\, 
        \signal_send_0/data_all_4_i_0[12]_net_1\, 
        \signal_send_0/data_all_4_i_0[8]_net_1\, 
        \signal_send_0/data_all_4_i_0[77]_net_1\, 
        \signal_send_0/data_all_4_i_0[78]_net_1\, 
        \signal_send_0/data_all_4_i_0[69]_net_1\, 
        \signal_send_0/data_all_4_i_0[67]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[10]_net_1\, 
        \signal_send_0/data_all_4_i_0[70]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[15]_net_1\, 
        \signal_send_0/data_all_4_i_0[66]_net_1\, 
        \signal_send_0/data_all_4_i_0[71]_net_1\, 
        \signal_send_0/data_all_4_i_0[79]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[9]_net_1\, 
        \signal_send_0/data_all_4_i_0[72]_net_1\, 
        \signal_send_0/data_all_4_i_0_0[40]_net_1\, 
        \signal_send_0/N_1736\, 
        \signal_send_0/data_all_4_i_0_0[44]_net_1\, 
        \signal_send_0/data_all_4_0_i_0[32]_net_1\, 
        \signal_send_0/N_310\, 
        \signal_send_0/data_all_4_0_i_0[35]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_1[2]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_0[2]\, 
        \signal_send_0/cnt_send_107_0_net_1\, 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, 
        \signal_send_0/data_all_4_i_o3_i_o2_1[55]_net_1\, 
        \signal_send_0/m90_i_o2_2_net_1\, \signal_send_0/N_46\, 
        \signal_send_0/m90_i_o2_1_net_1\, \signal_send_0/N_887\, 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, 
        \signal_send_0/N_355\, 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, 
        \signal_send_0/N_292\, 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_17_0[3]_net_1\, 
        \signal_send_0/cnt_recive_end_0_sqmuxa_1_net_1\, 
        \signal_send_0/data_all_4_0_a2_1_i_o2_1[127]_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_29_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_24_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_23_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_28_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_22_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_21_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_25_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_11_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_10_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_20_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_18_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_6_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_5_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_17_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_4_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_3_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_14_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_1_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_0_net_1\, 
        \signal_send_0/N_359_i\, 
        \signal_send_0/un12_cnt_send_28_net_1\, 
        \signal_send_0/un12_cnt_send_18_net_1\, 
        \signal_send_0/N_352_i\, \signal_send_0/N_73_i\, 
        \signal_send_0/un12_cnt_send_23_net_1\, 
        \signal_send_0/N_354_i\, \signal_send_0/N_78_i\, 
        \signal_send_0/N_1543\, 
        \signal_send_0/send_end_0_sqmuxa_i_8_net_1\, 
        \signal_send_0/N_74_i\, 
        \signal_send_0/un12_cnt_send_25_net_1\, 
        \signal_send_0/N_79_i\, 
        \signal_send_0/un12_cnt_send_19_net_1\, 
        \signal_send_0/un12_cnt_send_21_net_1\, 
        \signal_send_0/N_1540\, \signal_send_0/N_1542\, 
        \signal_send_0/un12_cnt_send_24_net_1\, 
        \signal_send_0/un12_cnt_send_12_net_1\, 
        \signal_send_0/N_76_i\, 
        \signal_send_0/un12_cnt_send_26_net_1\, 
        \signal_send_0/un12_cnt_send_29_net_1\, 
        \signal_send_0/cnt_m4_0_a2_7_4_net_1\, 
        \signal_send_0/cnt_m4_0_a2_7_2_net_1\, 
        \signal_send_0/cnt_m4_0_a2_7_3_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_6_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_11_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_5_net_1\, 
        \signal_send_0/N_476\, \signal_send_0/N_477\, 
        \signal_send_0/un38_data_send_buffer_968_i_3_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_4_net_1\, 
        \signal_send_0/N_489\, \signal_send_0/N_490\, 
        \signal_send_0/un38_data_send_buffer_968_i_1_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_1_0_net_1\, 
        \signal_send_0/N_889\, \signal_send_0/N_472\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_9_0_net_1\, 
        \signal_send_0/N_480\, 
        \signal_send_0/data_m1_0_a2_3_net_1\, 
        \signal_send_0/m77_0_a2_1_net_1\, 
        \signal_send_0/un1_tx_uart27_1_1\, 
        \signal_send_0/tx_uart36\, \signal_send_0/tx_uart37\, 
        \signal_send_0/tx_uart27\, 
        \signal_send_0/un11_cnt_delay_6\, 
        \signal_send_0/un11_cnt_delay_4\, 
        \signal_send_0/un11_cnt_delay_5_net_1\, 
        \signal_send_0/un11_cnt_delay_2_net_1\, 
        \signal_send_0/end_flag_net_1\, 
        \signal_send_0/tx_uart_11_iv_7\, 
        \signal_send_0/tx_uart_11_iv_1\, 
        \signal_send_0/tx_uart_11_iv_0\, 
        \signal_send_0/tx_uart_11_iv_4\, 
        \signal_send_0/tx_uart30\, \signal_send_0/un1_tx_uart42\, 
        \signal_send_0/tx_uart_11_iv_3\, 
        \signal_send_0/tx_uart33\, \signal_send_0/data_send_m[0]\, 
        \signal_send_0/tx_uart_11_iv_2\, 
        \signal_send_0/tx_uart35\, \signal_send_0/data_send_m[6]\, 
        \signal_send_0/parity_check_net_1\, 
        \signal_send_0/data_send_m[4]\, \signal_send_0/tx_uart31\, 
        \signal_send_0/data_send_m[1]\, 
        \signal_send_0/parity_check_10_iv_4\, 
        \signal_send_0/parity_check_8_i_m\, 
        \signal_send_0/parity_check_5_i_m\, 
        \signal_send_0/parity_check_10_iv_0\, 
        \signal_send_0/parity_check_10_iv_3\, 
        \signal_send_0/parity_check_1\, \signal_send_0/tx_uart28\, 
        \signal_send_0/parity_check_3_i_m\, 
        \signal_send_0/parity_check_10_iv_2\, 
        \signal_send_0/parity_check_7\, \signal_send_0/tx_uart34\, 
        \signal_send_0/parity_check_6_i_m\, 
        \signal_send_0/parity_check_4\, 
        \signal_send_0/parity_check_2_i_m\, 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\, 
        \signal_send_0/N_1677\, 
        \signal_send_0/m77_0_a2_3_0_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_24_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_18_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_17_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_21_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_23_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_14_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_13_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_19_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_4_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_3\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_16_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_12_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_10_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_8_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_6_net_1\, 
        \signal_send_0/send_end_0_sqmuxa_i_a3_1_net_1\, 
        \signal_send_0/un1_tx_uart27_8\, 
        \signal_send_0/un1_tx_uart27_2\, 
        \signal_send_0/un1_tx_uart27_1_0\, 
        \signal_send_0/un1_tx_uart27_5\, 
        \signal_send_0/un1_tx_uart27_7\, 
        \signal_send_0/un1_tx_uart27_4\, 
        \signal_send_0/tx_uart29\, \signal_send_0/tx_uart32_7\, 
        \signal_send_0/tx_uart32_6_0\, 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_10_1[6]_net_1\, 
        \signal_send_0/m77_0_461_tz_0_net_1\, 
        \signal_send_0/N_447\, 
        \signal_send_0/m77_0_a3_15_0_net_1\, 
        \signal_send_0/data_send_buffer_3_1_7_tz_1[0]_net_1\, 
        \signal_send_0/N_1649\, 
        \signal_send_0/data_send_buffer_3_1_a2_9_0[0]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_7_tz_0[0]_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_11_0[0]_net_1\, 
        \signal_send_0/N_1645\, 
        \signal_send_0/m77_0_a3_12_0_net_1\, 
        \signal_send_0/m77_0_a3_11_0_net_1\, 
        \signal_send_0/m77_0_462_tz_1_net_1\, 
        \signal_send_0/m77_0_a3_3_0_net_1\, 
        \signal_send_0/m77_0_462_tz_0_net_1\, 
        \signal_send_0/m77_0_a3_2_0_net_1\, 
        \signal_send_0/m77_0_463_tz_1_net_1\, 
        \signal_send_0/m77_0_a3_7_0_net_1\, 
        \signal_send_0/m77_0_463_tz_0_net_1\, 
        \signal_send_0/m77_0_a3_6_0_net_1\, 
        \signal_send_0/m62_0_4_tz_1_net_1\, 
        \signal_send_0/m62_0_a3_8_0_net_1\, 
        \signal_send_0/m62_0_4_tz_0_net_1\, 
        \signal_send_0/m62_0_a3_10_0_net_1\, 
        \signal_send_0/N_1656\, 
        \signal_send_0/m62_0_0_tz_0_net_1\, 
        \signal_send_0/N_1731\, 
        \signal_send_0/m62_0_a3_5_0_net_1\, 
        \signal_send_0/data_send_buffer_3_1_a2_17_2[2]_net_1\, 
        \signal_send_0/m77_m3_0_a2_0_0_0\, 
        \signal_send_0/data_all_4_i_o2_i_o2_0[47]_net_1\, 
        \signal_send_0/data_all_4_i_o2_0_0_0[71]_net_1\, 
        \signal_send_0/un5_idle_recive_16_net_1\, 
        \signal_send_0/un5_idle_recive_8\, 
        \signal_send_0/un5_idle_recive_7_net_1\, 
        \signal_send_0/un5_idle_recive_14_net_1\, 
        \signal_send_0/un5_idle_recive_15_net_1\, 
        \signal_send_0/un5_idle_recive_4_net_1\, 
        \signal_send_0/un5_idle_recive_7_0_net_1\, 
        \signal_send_0/un5_idle_recive_12_net_1\, 
        \signal_send_0/un5_idle_recive_4_0_net_1\, 
        \signal_send_0/un5_idle_recive_5_net_1\, 
        \signal_send_0/un5_idle_recive_10_net_1\, 
        \signal_send_0/un5_idle_recive_1_net_1\, 
        \signal_send_0/un5_idle_recive_2_net_1\, 
        \signal_send_0/un5_idle_recive_5_0_net_1\, 
        \signal_send_0/un5_idle_recive_10_0_net_1\, 
        \signal_send_0/un5_idle_recive_3_net_1\, 
        \signal_send_0/un5_idle_recive_9_net_1\, 
        \signal_send_0/un5_idle_recive_3_0_net_1\, 
        \signal_send_0/cnt_m6_0_a2_17_7_net_1\, 
        \signal_send_0/cnt_m6_0_a2_17_4_net_1\, 
        \signal_send_0/cnt_m3_0_a2_2_1_net_1\, 
        \signal_send_0/cnt_m6_0_a2_17_5_net_1\, 
        \signal_send_0/cnt_m6_0_a2_17_2_net_1\, 
        \signal_send_0/OVER_11_net_1\, 
        \signal_send_0/m36_0_net_1\, 
        \signal_send_0/cnt_m4_0_a2_11_5_net_1\, 
        \signal_send_0/cnt_m4_0_a2_11_1_net_1\, 
        \signal_send_0/cnt_m4_0_a2_11_3_net_1\, 
        \signal_send_0/cnt_m3_0_a2_2_4_net_1\, 
        \signal_send_0/cnt_m3_0_a2_2_0_net_1\, 
        \signal_send_0/cnt_m3_0_a2_2_2_net_1\, 
        \signal_send_0/N_1680\, \signal_send_0/N_1898_3\, 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_0_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_6_0_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_11_tz_1_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_0_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_3_0_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_7_0_net_1\, 
        \signal_send_0/data_m2_e_1_3_net_1\, 
        \signal_send_0/data_m2_e_1_2_net_1\, 
        \signal_send_0/data_m2_e_1_1_net_1\, 
        \signal_send_0/data_m2_e_0_3_net_1\, 
        \signal_send_0/data_m2_e_0_2_net_1\, 
        \signal_send_0/data_m2_e_0_1_net_1\, 
        \signal_send_0/cnt_m5_0_a2_2_net_1\, 
        \signal_send_0/cnt_m5_0_a2_5_net_1\, 
        \signal_send_0/cnt_m5_0_a2_1_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_21_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_15_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_14_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_18_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_20_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_9_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_8_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_17_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_3_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_2_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_12_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_11_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_7_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_5_net_1\, 
        \signal_send_0/tx_uart28_4\, \signal_send_0/tx_uart28_2\, 
        \signal_send_0/un1_cnt_2\, \signal_send_0/tx_uart28_3\, 
        \signal_send_0/cnt[7]_net_1\, \signal_send_0/tx_uart28_1\, 
        \signal_send_0/cnt[2]_net_1\, 
        \signal_send_0/cnt[5]_net_1\, 
        \signal_send_0/cnt_m6_0_a2_11_6_net_1\, 
        \signal_send_0/cnt_m6_0_a2_11_1_net_1\, 
        \signal_send_0/cnt_m6_0_a2_11_3_net_1\, 
        \signal_send_0/tx_uart34_5\, \signal_send_0/un1_cnt_1\, 
        \signal_send_0/cnt[9]_net_1\, 
        \signal_send_0/cnt[11]_net_1\, 
        \signal_send_0/tx_uart34_4_0\, 
        \signal_send_0/cnt[6]_net_1\, \signal_send_0/tx_uart34_4\, 
        \signal_send_0/tx_uart34_3\, 
        \signal_send_0/cnt[10]_net_1\, 
        \signal_send_0/tx_uart34_1\, \signal_send_0/cnt[4]_net_1\, 
        \signal_send_0/tx_uart30_5\, \signal_send_0/tx_uart27_3\, 
        \signal_send_0/tx_uart30_4\, \signal_send_0/tx_uart27_6\, 
        \signal_send_0/tx_uart30_3\, \signal_send_0/tx_uart30_1\, 
        \signal_send_0/tx_uart29_7\, \signal_send_0/tx_uart29_3\, 
        \signal_send_0/tx_uart29_2\, \signal_send_0/un1_cnt_4\, 
        \signal_send_0/tx_uart29_6\, \signal_send_0/tx_uart29_1\, 
        \signal_send_0/tx_uart29_0\, \signal_send_0/tx_uart35_5\, 
        \signal_send_0/tx_uart35_4_0\, 
        \signal_send_0/tx_uart35_4\, \signal_send_0/tx_uart35_3\, 
        \signal_send_0/tx_uart27_2\, \signal_send_0/tx_uart27_1\, 
        \signal_send_0/tx_uart27_4\, \signal_send_0/tx_uart33_5\, 
        \signal_send_0/tx_uart33_4\, \signal_send_0/tx_uart33_2\, 
        \signal_send_0/tx_uart33_3_0\, 
        \signal_send_0/tx_uart33_1\, \signal_send_0/tx_uart31_7\, 
        \signal_send_0/tx_uart31_6\, \signal_send_0/tx_uart31_5\, 
        \signal_send_0/tx_uart31_1\, 
        \signal_send_0/OVER_12_2_net_1\, 
        \signal_send_0/OVER_12_1_net_1\, 
        \signal_send_0/OVER_12_6_net_1\, 
        \signal_send_0/OVER_12_4_net_1\, 
        \signal_send_0/tx_uart32_2\, \signal_send_0/tx_uart32_4\, 
        \signal_send_0/tx_uart32_5\, \signal_send_0/tx_uart32_1\, 
        \signal_send_0/tx_uart37_6\, \signal_send_0/tx_uart37_5\, 
        \signal_send_0/tx_uart37_2\, \signal_send_0/tx_uart37_4\, 
        \signal_send_0/un1_cnt_6\, \signal_send_0/tx_uart36_6\, 
        \signal_send_0/tx_uart36_5\, \signal_send_0/tx_uart36_3\, 
        \signal_send_0/tx_uart36_4\, \signal_send_0/tx_uart36_1\, 
        \signal_send_0/m77_0_a3_1_1_0_net_1\, 
        \signal_send_0/un1_cnt_5\, \signal_send_0/un1_cnt_1_0\, 
        \signal_send_0/un1_cnt_4_0\, \signal_send_0/un1_cnt_0\, 
        \signal_send_0/OVER_11_1_net_1\, 
        \signal_send_0/cnt_m4_0_a2_3_4_net_1\, 
        \signal_send_0/cnt_m4_0_a2_3_3_net_1\, 
        \signal_send_0/cnt_m6_0_a2_10_3_net_1\, 
        \signal_send_0/cnt_m6_0_a2_10_4_net_1\, 
        \signal_send_0/cnt_m6_0_a2_10_5_net_1\, 
        \signal_send_0/cnt_m6_0_a2_10_1_net_1\, 
        \signal_send_0/m85_2_net_1\, \signal_send_0/m30_0_net_1\, 
        \signal_send_0/un11_receive_endlto4_0_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa_2\, 
        \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, 
        \signal_send_0/receive_end2lto6_1_net_1\, 
        \signal_send_0/N_344\, \signal_send_0/N_650\, 
        \signal_send_0/N_320\, \signal_send_0/cnt_N_9_mux_2\, 
        \signal_send_0/data_N_5_mux_1\, 
        \signal_send_0/cnt_N_10_mux\, 
        \signal_send_0/data_N_5_mux_0\, \signal_send_0/N_1912\, 
        \signal_send_0/data_N_4\, 
        \signal_send_0/m77_0_a2_1_0_net_1\, 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, 
        \signal_send_0/cnt_N_11_mux_1\, \signal_send_0/N_71\, 
        \signal_send_0/cnt_N_9_mux_0\, 
        \signal_send_0/cnt_send_c25\, \signal_send_0/N_878\, 
        \signal_send_0/cnt_N_13_mux_0\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_10_0_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_14_0_net_1\, 
        \signal_send_0/N_2924_tz\, 
        \signal_send_0/m77_0_a3_1_1_net_1\, 
        \signal_send_0/un11_cnt_delay\, 
        \signal_send_0/un5_idle_recive_net_1\, 
        \signal_send_0/un11_receive_endlt4\, 
        \signal_send_0/un11_receive_end\, 
        \signal_send_0/un11_receive_endlt7\, 
        \signal_send_0/un3_end_flag\, 
        \signal_send_0/receive_end2lt7\, 
        \signal_send_0/un5_idle_recive_23_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa\, 
        \signal_send_0/N_148_mux\, 
        \signal_send_0/un52_data_all[48]\, \signal_send_0/N_1757\, 
        \signal_send_0/N_458\, \signal_send_0/N_1780\, 
        \signal_send_0/N_1782\, \signal_send_0/N_763\, 
        \signal_send_0/N_764\, \signal_send_0/N_767\, 
        \signal_send_0/N_768\, \signal_send_0/N_783\, 
        \signal_send_0/N_784\, \signal_send_0/N_1553\, 
        \signal_send_0/N_1555\, \signal_send_0/N_1765\, 
        \signal_send_0/N_1766\, \signal_send_0/N_1796\, 
        \signal_send_0/N_1797\, \signal_send_0/N_1888\, 
        \signal_send_0/N_1889\, \signal_send_0/N_642\, 
        \signal_send_0/N_643\, \signal_send_0/N_647_2\, 
        \signal_send_0/N_339\, 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, 
        \signal_send_0/m62_0_452_net_1\, \signal_send_0/N_417\, 
        \signal_send_0/N_1778\, \signal_send_0/N_1779\, 
        \signal_send_0/N_773\, \signal_send_0/N_774\, 
        \signal_send_0/N_836\, \signal_send_0/N_837\, 
        \signal_send_0/N_838\, \signal_send_0/N_839\, 
        \signal_send_0/N_871\, \signal_send_0/N_872\, 
        \signal_send_0/N_1834\, \signal_send_0/N_1835\, 
        \signal_send_0/N_1498\, \signal_send_0/N_1537\, 
        \signal_send_0/N_1533\, \signal_send_0/N_875\, 
        \signal_send_0/N_876\, \signal_send_0/N_873\, 
        \signal_send_0/N_874\, \signal_send_0/N_867\, 
        \signal_send_0/N_868\, \signal_send_0/N_1637\, 
        \signal_send_0/N_1638\, \signal_send_0/N_858\, 
        \signal_send_0/N_1636\, \signal_send_0/N_856\, 
        \signal_send_0/N_857\, \signal_send_0/N_834\, 
        \signal_send_0/N_835\, \signal_send_0/N_833\, 
        \signal_send_0/N_832\, \signal_send_0/N_830\, 
        \signal_send_0/N_831\, \signal_send_0/N_828\, 
        \signal_send_0/N_829\, \signal_send_0/N_826\, 
        \signal_send_0/N_827\, \signal_send_0/N_824\, 
        \signal_send_0/N_825\, \signal_send_0/N_781\, 
        \signal_send_0/N_782\, \signal_send_0/N_779\, 
        \signal_send_0/N_780\, \signal_send_0/N_777\, 
        \signal_send_0/N_778\, \signal_send_0/N_775\, 
        \signal_send_0/N_776\, \signal_send_0/N_765\, 
        \signal_send_0/N_766\, \signal_send_0/N_761\, 
        \signal_send_0/N_762\, \signal_send_0/N_759\, 
        \signal_send_0/N_760\, \signal_send_0/N_755\, 
        \signal_send_0/N_756\, \signal_send_0/N_641_2\, 
        \signal_send_0/N_643_2\, \signal_send_0/N_717\, 
        \signal_send_0/N_718\, \signal_send_0/N_714\, 
        \signal_send_0/N_713\, \signal_send_0/N_711\, 
        \signal_send_0/N_712\, \signal_send_0/N_1898\, 
        \signal_send_0/N_648\, \signal_send_0/N_1894\, 
        \signal_send_0/N_646\, \signal_send_0/N_647\, 
        \signal_send_0/N_644\, \signal_send_0/N_645\, 
        \signal_send_0/N_1893\, \signal_send_0/N_641\, 
        \signal_send_0/N_1890\, \signal_send_0/N_1892\, 
        \signal_send_0/N_1886\, \signal_send_0/N_1887\, 
        \signal_send_0/N_1884\, \signal_send_0/N_1885\, 
        \signal_send_0/N_1882\, \signal_send_0/N_1883\, 
        \signal_send_0/N_1878\, \signal_send_0/N_1879\, 
        \signal_send_0/N_1875\, \signal_send_0/N_1877\, 
        \signal_send_0/N_1832\, \signal_send_0/N_1833\, 
        \signal_send_0/N_1830\, \signal_send_0/N_1831\, 
        \signal_send_0/N_1828\, \signal_send_0/N_1829\, 
        \signal_send_0/N_1826\, \signal_send_0/N_1827\, 
        \signal_send_0/N_1824\, \signal_send_0/N_1825\, 
        \signal_send_0/N_1822\, \signal_send_0/N_1823\, 
        \signal_send_0/N_1820\, \signal_send_0/N_1821\, 
        \signal_send_0/N_1817\, \signal_send_0/N_1819\, 
        \signal_send_0/N_1815\, \signal_send_0/N_1816\, 
        \signal_send_0/N_1813\, \signal_send_0/N_1814\, 
        \signal_send_0/N_1811\, \signal_send_0/N_1812\, 
        \signal_send_0/N_1809\, \signal_send_0/N_1810\, 
        \signal_send_0/N_1806\, \signal_send_0/N_1808\, 
        \signal_send_0/N_1804\, \signal_send_0/N_1805\, 
        \signal_send_0/N_1802\, \signal_send_0/N_1803\, 
        \signal_send_0/N_1800\, \signal_send_0/N_1801\, 
        \signal_send_0/N_1798\, \signal_send_0/N_1799\, 
        \signal_send_0/N_1794\, \signal_send_0/N_1795\, 
        \signal_send_0/N_1792\, \signal_send_0/N_1793\, 
        \signal_send_0/N_1789\, \signal_send_0/N_1791\, 
        \signal_send_0/N_1787\, \signal_send_0/N_1788\, 
        \signal_send_0/N_1785\, \signal_send_0/N_1786\, 
        \signal_send_0/N_1783\, \signal_send_0/N_1784\, 
        \signal_send_0/N_1776\, \signal_send_0/N_1777\, 
        \signal_send_0/N_1774\, \signal_send_0/N_1775\, 
        \signal_send_0/N_1773\, \signal_send_0/N_492\, 
        \signal_send_0/N_1770\, \signal_send_0/N_1772\, 
        \signal_send_0/N_485\, \signal_send_0/N_486\, 
        \signal_send_0/N_1769\, \signal_send_0/N_484\, 
        \signal_send_0/N_481\, \signal_send_0/N_482\, 
        \signal_send_0/N_1763\, \signal_send_0/N_1764\, 
        \signal_send_0/N_1761\, \signal_send_0/N_1762\, 
        \signal_send_0/N_1758\, \signal_send_0/N_1760\, 
        \signal_send_0/N_465\, \signal_send_0/N_466\, 
        \signal_send_0/N_463\, \signal_send_0/N_464\, 
        \signal_send_0/N_461\, \signal_send_0/N_462\, 
        \signal_send_0/N_459\, \signal_send_0/N_460\, 
        \signal_send_0/N_390\, \signal_send_0/N_391\, 
        \signal_send_0/N_397\, \signal_send_0/N_450\, 
        \signal_send_0/N_504\, \signal_send_0/m77_0_460_net_1\, 
        \signal_send_0/N_399\, \signal_send_0/N_140_mux\, 
        \signal_send_0/N_1674\, \signal_send_0/N_102\, 
        \signal_send_0/N_68\, \signal_send_0/N_66\, 
        \signal_send_0/N_995\, \signal_send_0/cnt_send_c27_net_1\, 
        \signal_send_0/tx_uart27_9\, 
        \signal_send_0/un1_tx_uart27\, 
        \signal_send_0/parity_check_10_iv\, 
        \signal_send_0/tx_uart_11\, 
        \signal_send_0/m62_0_0_0_tz_net_1\, 
        \signal_send_0/m62_0_a3_6_0_net_1\, 
        \signal_send_0/m62_0_a3_1_0_net_1\, 
        \signal_send_0/m62_0_a3_7_0_net_1\, 
        \signal_send_0/m81_i_a3_2_0_net_1\, 
        \signal_send_0/m81_i_a3_5_0_net_1\, 
        \signal_send_0/m81_i_a3_3_0_net_1\, \signal_send_0/N_123\, 
        \signal_send_0/cnt_send_c11\, \signal_send_0/N_6_0\, 
        \signal_send_0/data_send_buffer_3_1_a2_18_0[2]_net_1\, 
        \signal_send_0/un38_data_send_buffer_968_i_a2_11_0_net_1\, 
        \signal_send_0/m77_0_a3_16_0_net_1\, 
        \signal_send_0/m62_0_a3_3_0_net_1\, 
        \signal_send_0/m62_0_a3_14_0_net_1\, 
        \signal_send_0/m62_0_a3_12_0_net_1\, 
        \signal_send_0/m62_0_a3_13_0_net_1\, 
        \signal_send_0/cnt_send_c26_net_1\, \signal_send_0/N_59\, 
        \signal_send_0/N_58\, \signal_send_0/N_57\, 
        \signal_send_0/cnt_send_n29_tz_net_1\, 
        \signal_send_0/cnt_send_c13_net_1\, 
        \signal_send_0/cnt_send_c12_net_1\, 
        \signal_send_0/cnt_send_c10_net_1\, 
        \signal_send_0/cnt_send_c9_net_1\, 
        \signal_send_0/cnt_recive_end_19_0_net_1\, 
        \signal_send_0/cnt_recive_end_c7_net_1\, 
        \signal_send_0/cnt_recive_end_c6_net_1\, 
        \signal_send_0/cnt_recive_end_c5_net_1\, 
        \signal_send_0/cnt_recive_end_c4_net_1\, 
        \signal_send_0/cnt_recive_end_c3_net_1\, 
        \signal_send_0/cnt_recive_end_c2_net_1\, 
        \signal_send_0/cnt_recive_end_n2_tz_net_1\, 
        \signal_send_0/cnt_send_n19_tz_net_1\, 
        \signal_send_0/cnt_send_c19_net_1\, 
        \signal_send_0/cnt_send_c20_net_1\, 
        \signal_send_0/cnt_send_c21_net_1\, 
        \signal_send_0/cnt_flag_n4_tz_net_1\, 
        \signal_send_0/un1_send_end\, 
        \signal_send_0/cnt_flag_c2_net_1\, 
        \signal_send_0/cnt_flag_n2_tz_net_1\, 
        \signal_send_0/cnt_delay_c1_net_1\, 
        \signal_send_0/cnt_delay_c2_net_1\, 
        \signal_send_0/cnt_delay_c3_net_1\, 
        \signal_send_0/cnt_delay_c4_net_1\, 
        \signal_send_0/cnt_delay_c5_net_1\, 
        \signal_send_0/cnt_delay_35_0_net_1\, 
        \signal_send_0/N_138\, \signal_send_0/N_967\, 
        \signal_send_0/OVER_net_1\, \signal_send_0/cnt_4[2]\, 
        \signal_send_0/I_7_0\, \signal_send_0/send_net_1\, 
        \signal_send_0/cnt_4[4]\, \signal_send_0/cnt_4[6]\, 
        \signal_send_0/cnt_4[8]\, \signal_send_0/cnt_4[11]\, 
        \signal_send_0/cnt_4[0]\, \signal_send_0/parity_check_5\, 
        \signal_send_0/tx_uart_11_sqmuxa\, 
        \signal_send_0/parity_check_0_sqmuxa\, 
        \signal_send_0/N_1504\, \signal_send_0/N_1499\, 
        \signal_send_0/N_1496\, \signal_send_0/N_56\, 
        \signal_send_0/N_457\, \signal_send_0/N_484_3\, 
        \signal_send_0/N_500_3\, \signal_send_0/N_485_3\, 
        \signal_send_0/N_501_3\, \signal_send_0/N_454\, 
        \signal_send_0/N_513_3\, \signal_send_0/N_529_3\, 
        \signal_send_0/N_451\, \signal_send_0/N_609_3\, 
        \signal_send_0/N_625_3\, \signal_send_0/N_1713\, 
        \signal_send_0/N_688\, \signal_send_0/N_686\, 
        \signal_send_0/N_684\, \signal_send_0/N_682\, 
        \signal_send_0/N_680\, \signal_send_0/N_678\, 
        \signal_send_0/N_676\, \signal_send_0/N_20\, 
        \signal_send_0/N_656\, \signal_send_0/N_654\, 
        \signal_send_0/N_652\, \signal_send_0/N_1631\, 
        \signal_send_0/N_1687\, \signal_send_0/N_1685\, 
        \signal_send_0/N_379\, \signal_send_0/N_348\, 
        \signal_send_0/N_481_2\, \signal_send_0/N_384\, 
        \signal_send_0/N_388\, \signal_send_0/N_383\, 
        \signal_send_0/N_337\, \signal_send_0/N_1675\, 
        \signal_send_0/N_968\, \signal_send_0/N_1682\, 
        \signal_send_0/N_551_3\, \signal_send_0/N_346\, 
        \signal_send_0/N_1910\, \signal_send_0/N_312\, 
        \signal_send_0/N_7_0\, \signal_send_0/N_455\, 
        \signal_send_0/N_487_3\, \signal_send_0/N_503_3\, 
        \signal_send_0/N_452\, \signal_send_0/N_567_3\, 
        \signal_send_0/N_453\, \signal_send_0/N_386\, 
        \signal_send_0/N_341\, \signal_send_0/N_1491\, 
        \signal_send_0/N_1492\, \signal_send_0/N_519_3\, 
        \signal_send_0/N_535_3\, \signal_send_0/N_1920\, 
        \signal_send_0/N_1699\, \signal_send_0/vld_send_down_1\, 
        \signal_send_0/vld_send_fall_i_0\, 
        \signal_send_0/un2_vld_send_down\, 
        \signal_send_0/vld_send_down_net_1\, 
        \signal_send_0/un2_cnt\, 
        \signal_send_0/end_flag_1_sqmuxa\, 
        \signal_send_0/end_flag_2_sqmuxa\, 
        \signal_send_0/receive_end2lt9\, 
        \signal_send_0/cnt_end_5[1]\, 
        \signal_send_0/cnt_end_5[0]\, \signal_send_0/I_5_0\, 
        \signal_send_0/I_9_0\, \signal_send_0/I_14_0\, 
        \signal_send_0/I_20_0\, \signal_send_0/I_26_0\, 
        \signal_send_0/I_28_0\, \signal_send_0/I_42\, 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_2[0]\, 
        \signal_send_0/N_2\, \signal_send_0/DWACT_FINC_E[6]\, 
        \signal_send_0/DWACT_FINC_E[2]\, 
        \signal_send_0/DWACT_FINC_E[5]\, \signal_send_0/N_3\, 
        \signal_send_0/DWACT_FINC_E[3]\, \signal_send_0/N_5\, 
        \signal_send_0/N_6\, \signal_send_0/N_7\, 
        \signal_send_0/DWACT_FINC_E[1]\, \signal_send_0/N_8\, 
        \signal_send_0/N_10\, \single_recive_0/cnt[1]_net_1\, 
        \single_recive_0/cnt[0]_net_1\, 
        \single_recive_0/cnt[3]_net_1\, 
        \single_recive_0/DWACT_FINC_E[0]\, 
        \single_recive_0/cnt[8]_net_1\, 
        \single_recive_0/DWACT_FINC_E[4]\, 
        \single_recive_0/m93_0\, \single_recive_0/m52_3\, 
        \single_recive_0/N_123_mux\, \single_recive_0/m89_0\, 
        \single_recive_0/m42_4\, \single_recive_0/N_116_mux\, 
        \single_recive_0/m78_0\, \single_recive_0/m76_7\, 
        \single_recive_0/m76_6\, \single_recive_0/m87_0\, 
        \single_recive_0/m85_3\, \single_recive_0/m67_0\, 
        \single_recive_0/m65_7\, \single_recive_0/m65_6\, 
        \single_recive_0/m52_2\, \single_recive_0/cnt[4]_net_1\, 
        \single_recive_0/cnt[9]_net_1\, \single_recive_0/m23_2\, 
        \single_recive_0/m12_1\, \single_recive_0/m85_1\, 
        \single_recive_0/m99_4\, \single_recive_0/m76_2\, 
        \single_recive_0/m99_0\, \single_recive_0/m99_2\, 
        \single_recive_0/cnt[11]_net_1\, 
        \single_recive_0/cnt[2]_net_1\, \single_recive_0/m42_1\, 
        \single_recive_0/m42_0\, \single_recive_0/m42_2\, 
        \single_recive_0/cnt[7]_net_1\, \single_recive_0/m12_5\, 
        \single_recive_0/m12_3\, \single_recive_0/m12_4\, 
        \single_recive_0/m31_5\, \single_recive_0/m23_4\, 
        \single_recive_0/m31_4\, \single_recive_0/m76_1\, 
        \single_recive_0/m76_4\, \single_recive_0/N_103_mux\, 
        \single_recive_0/cnt[6]_net_1\, \single_recive_0/m23_7\, 
        \single_recive_0/m23_6\, \single_recive_0/m23_5\, 
        \single_recive_0/N_14_0\, \single_recive_0/m65_2\, 
        \single_recive_0/m65_1\, \single_recive_0/m65_4\, 
        \single_recive_0/m47_2\, \single_recive_0/m47_1\, 
        \single_recive_0/m36_2\, \single_recive_0/m36_1\, 
        \single_recive_0/m36_0\, \single_recive_0/cnt[5]_net_1\, 
        \single_recive_0/cnt[10]_net_1\, \single_recive_0/m4_0\, 
        \single_recive_0/data_recive30\, 
        \single_recive_0/N_104_mux\, \single_recive_0/N_38_i_0\, 
        \single_recive_0/N_27_i_0\, 
        \single_recive_0/data_recive24\, 
        \single_recive_0/data_recive_2_m[4]\, 
        \single_recive_0/data_recive27\, 
        \single_recive_0/un1_cnt\, \single_recive_0/cnt_4[0]\, 
        \single_recive_0/recive_net_1\, 
        \single_recive_0/cnt_4[3]\, \single_recive_0/cnt_4[11]\, 
        \single_recive_0/cnt_4[5]\, \single_recive_0/cnt_4[6]\, 
        \single_recive_0/cnt_4[7]\, \single_recive_0/rx_uart_m\, 
        \single_recive_0/data_recive_12[0]\, 
        \single_recive_0/data_recive_12[1]\, 
        \single_recive_0/rx_uart_m_1\, 
        \single_recive_0/data_recive_12[2]\, 
        \single_recive_0/data_recive_12[4]\, 
        \single_recive_0/rx_uart_m_4\, 
        \single_recive_0/data_recive_12[5]\, 
        \single_recive_0/rx_uart_m_5\, 
        \single_recive_0/data_recive_12[6]\, 
        \single_recive_0/un2_cnt\, 
        \single_recive_0/rx_down_net_1\, 
        \single_recive_0/data_recive_12[7]\, 
        \single_recive_0/data_recive_12[3]\, 
        \single_recive_0/rx_uart_m_2\, 
        \single_recive_0/rx_down_1\, 
        \single_recive_0/rx_fall2_net_1\, 
        \single_recive_0/rx_fall1_net_1\, 
        \single_recive_0/rx_fall_net_1\, \single_recive_0/I_5\, 
        \single_recive_0/I_7\, \single_recive_0/I_12\, 
        \single_recive_0/I_23\, \single_recive_0/I_26\, 
        \single_recive_0/I_28\, \single_recive_0/N_2\, 
        \single_recive_0/DWACT_FINC_E[6]\, 
        \single_recive_0/DWACT_FINC_E[2]\, 
        \single_recive_0/DWACT_FINC_E[5]\, \single_recive_0/N_3\, 
        \single_recive_0/DWACT_FINC_E[3]\, \single_recive_0/N_5\, 
        \single_recive_0/N_6\, \single_recive_0/N_7\, 
        \single_recive_0/DWACT_FINC_E[1]\, \single_recive_0/N_8\, 
        \single_recive_0/N_10\, \sys_rest_pad/U0/NET1\, 
        \rx_uart_pad/U0/NET1\, \test_pad/U0/NET1\, 
        \test_pad/U0/NET2\, \tx_uart_pad/U0/NET1\, 
        \tx_uart_pad/U0/NET2\, \sys_clk_pad/U0/NET1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[0]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk3_b8_vABZ3qsY/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[1]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]/Y\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]/Y\, 
        AFLSDF_VCC, AFLSDF_GND, \AFLSDF_INV_0\ : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \signal_send_0/un38_data_send_buffer_968_i_a2_10_0\ : NOR2A
      port map(A => \signal_send_0/N_1656\, B => 
        \data_all[33]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_10_0_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[93]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1808\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[117]\ : DFN1
      port map(D => \data_all[42]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[117]_net_1\);
    
    \signal_send_0/data_all_4_0_i[35]\ : OA1B
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[3]\, C => 
        \signal_send_0/data_all_4_0_i_0[35]_net_1\, Y => N_240);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[159]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[160]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[158]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[159]\);
    
    \signal_send_0/cnt_recive_end_19_0\ : NOR2B
      port map(A => receive_end2lto8, B => 
        \signal_send_0/cnt_recive_end_c7_net_1\, Y => 
        \signal_send_0/cnt_recive_end_19_0_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_12[3]\ : NOR2B
      port map(A => \data_all[67]_net_1\, B => 
        \signal_send_0/N_1685\, Y => \signal_send_0/N_536\);
    
    \signal_send_0/end_flag_RNIM89DD\ : NOR3B
      port map(A => \signal_send_0/un11_cnt_delay_6\, B => 
        \signal_send_0/un11_cnt_delay_5_net_1\, C => 
        \signal_send_0/un5_idle_recive_net_1\, Y => 
        \signal_send_0/un11_cnt_delay\);
    
    \signal_send_0/data_all_4_i_0[30]\ : NOR3
      port map(A => \signal_send_0/N_1761\, B => N_378, C => 
        \signal_send_0/N_1762\, Y => N_263);
    
    \signal_send_0/cnt_recive_end_0_sqmuxa_1\ : NOR3A
      port map(A => rx_uart_c, B => idle_recive, C => N_378, Y
         => \signal_send_0/cnt_recive_end_0_sqmuxa_1_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[1]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]_net_1\, 
        B => \ident_coreinst/comm_block_INST/tdo_sig\, S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_15\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[19]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[18]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[19]\);
    
    \data_all[8]\ : DFN1E0C0
      port map(D => N_307, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[8]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[30]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[31]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[29]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[30]\);
    
    \cnt_recive[12]\ : DFN1E0C0
      port map(D => cnt_recive_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[12]_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_17_5\ : NOR3C
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[23]_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_17_2_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_17_5_net_1\);
    
    \sys_clk_pad/U0/U0\ : IOPAD_IN
      port map(PAD => sys_clk, Y => \sys_clk_pad/U0/NET1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[81]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[79]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[81]\);
    
    \signal_send_0/un38_data_send_buffer_516\ : MX2
      port map(A => \data_all[32]_net_1\, B => 
        \data_all[40]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_513_3\);
    
    \signal_send_0/cnt_send_n5_i_a3\ : AOI1
      port map(A => \signal_send_0/N_7_0\, B => 
        \cnt_send[4]_net_1\, C => \cnt_send[5]_net_1\, Y => 
        \signal_send_0/N_1537\);
    
    \signal_send_0/cnt_RNIP9MJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart33_2\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart33_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[27]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[28]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[26]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[27]\);
    
    \signal_send_0/un38_data_send_buffer_649_i_m3\ : MX2
      port map(A => \signal_send_0/N_485_3\, B => 
        \signal_send_0/N_501_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_456\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[31]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice_0[9]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[31]\);
    
    \single_recive_0/cnt_RNI1TD41[1]\ : NOR3A
      port map(A => \single_recive_0/m4_0\, B => 
        \single_recive_0/cnt[6]_net_1\, C => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/N_104_mux\);
    
    \signal_send_0/data_send_buffer_3_1_a2_8[6]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, B
         => \data_all[102]_net_1\, C => N_378, Y => 
        \signal_send_0/N_503\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[12]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[13]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[12]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[12]_net_1\);
    
    \signal_send_0/idle_recive_down_3\ : OR3A
      port map(A => \idle_recive_fall\, B => idle_recive, C => 
        N_378, Y => idle_recive_down_3);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[4]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[10]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[129]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[129]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[129]\);
    
    \signal_send_0/cnt_RNI3GVP[1]\ : NOR2B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/un1_cnt_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_1\ : 
        AND2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[147]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[13]\);
    
    \signal_send_0/data_all_4_i_0[72]\ : AO1A
      port map(A => \data_all[72]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[72]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[27]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[28]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[75]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[74]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[75]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[132]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[133]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[131]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[132]\);
    
    \cnt_recive[3]\ : DFN1E0C0
      port map(D => N_36, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[3]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[7]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[8]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[7]\);
    
    \single_recive_0/cnt_RNIR11I_0[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m12_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[90]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[90]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[90]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]\ : 
        OR2
      port map(A => \ident_coreinst/IICE_INST/b5_iSWcC\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[132]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[131]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[132]\);
    
    \signal_send_0/cnt_send_n28\ : XA1B
      port map(A => \signal_send_0/cnt_send_c27_net_1\, B => 
        \cnt_send[28]_net_1\, C => N_378, Y => cnt_send_n28);
    
    \signal_send_0/cnt_RNIOHPM9[10]\ : OR2
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/tx_uart34\, Y => 
        \signal_send_0/un1_tx_uart27_2\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_17\ : NOR3A
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_8_net_1\, B => 
        \cnt_send[5]_net_1\, C => \cnt_send[13]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_17_net_1\);
    
    \single_recive_0/cnt_RNO[6]\ : XA1
      port map(A => \single_recive_0/N_7\, B => 
        \single_recive_0/cnt[6]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[6]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[18]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[18]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[157]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[3]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[157]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_8\ : XO1
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_send[10]_net_1\, C => \signal_send_0/N_1540\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_8_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[94]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[66]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[94]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[98]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[97]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[98]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_15[6]\ : NOR2B
      port map(A => \signal_send_0/N_1912\, B => 
        \signal_send_0/N_1645\, Y => \signal_send_0/N_1676\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3_RNI7BGK[7]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, B => 
        \ident_coreinst/comm_block_INST/tdo_sig\, Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/tdo_sig_m_0\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIRUE8[4]\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_comm2iice[2]\, B => 
        \ident_coreinst/IICE_comm2iice[1]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_yYh0_9u_0_a2_1\);
    
    \signal_send_0/data_m4_i\ : AO1A
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, B => 
        \signal_send_0/N_1898_3\, C => \cnt_send[28]_net_1\, Y
         => \signal_send_0/data_N_4\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[49]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[111]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[49]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[22]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[21]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[22]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[19]\ : DFN1
      port map(D => \data_all[140]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[19]_net_1\);
    
    \signal_send_0/end_flag_RNIOLCVQ\ : NOR3
      port map(A => \signal_send_0/un11_cnt_delay\, B => N_378, C
         => \signal_send_0/un3_end_flag\, Y => vld_send_2_sqmuxa);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[13]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[13]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[15]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[16]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[15]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[15]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_17\ : OR3
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[19]_net_1\, C => 
        \signal_send_0/un17_data_send_bufferlt30_22_11_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_17_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[134]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[26]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[134]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data_RNO[1]\ : 
        AO1
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/N_83\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[1]\);
    
    \data_all[40]\ : DFN1E0C0
      port map(D => N_257, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[40]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[135]\ : DFN1
      port map(D => \data_all[24]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[135]_net_1\);
    
    \cnt_recive[8]\ : DFN1E0C0
      port map(D => N_26, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[8]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_31\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[6]\, B => 
        \single_recive_0/cnt[9]_net_1\, C => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/N_2\);
    
    \signal_send_0/tx_uart_RNO_3\ : NOR2B
      port map(A => \data_send_buffer[0]_net_1\, B => 
        \signal_send_0/tx_uart28\, Y => 
        \signal_send_0/data_send_m[0]\);
    
    \signal_send_0/cnt_recive_n12_0_o4\ : OR2B
      port map(A => \signal_send_0/cnt_N_13_mux_0\, B => 
        \cnt_recive[11]_net_1\, Y => \signal_send_0/N_56\);
    
    \signal_send_0/cnt_RNIICVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart27_2\);
    
    \data_all[107]\ : DFN1E0C0
      port map(D => \data_all_4[107]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[107]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_19_0[2]\ : NOR2B
      port map(A => \data_all[2]_net_1\, B => 
        \signal_send_0/N_887\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_19_0[2]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[23]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_1920\, Y => 
        \signal_send_0/N_825\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]\);
    
    \signal_send_0/data_all_4_i_a2_1[100]\ : AOI1
      port map(A => \cnt_recive[2]_net_1\, B => 
        \data_recive_buffer[4]\, C => \signal_send_0/N_312\, Y
         => \signal_send_0/N_1555\);
    
    \signal_send_0/cnt_recive_n0_i_a4\ : NOR2
      port map(A => \cnt_recive[0]_net_1\, B => N_378, Y => N_101);
    
    \signal_send_0/cnt_m5_0_a2_4_1\ : NOR2B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => \signal_send_0/m85_0\);
    
    \signal_send_0/un1_cnt_end_1_I_51\ : NOR2B
      port map(A => \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\, 
        B => \signal_send_0/DWACT_ADD_CI_0_pog_array_1_1[0]\, Y
         => \signal_send_0/DWACT_ADD_CI_0_g_array_11[0]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3\ : NOR3C
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_24_net_1\, B => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_23_net_1\, C => 
        \signal_send_0/N_1898_3\, Y => \signal_send_0/N_1898\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[35]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[35]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[35]\);
    
    \signal_send_0/cnt_RNIJDVJ1[7]\ : NOR3B
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/tx_uart28_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart28_3\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNINQE8[2]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_comm2iice[3]\, B => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\);
    
    \cnt_send[9]\ : DFN1E1C0
      port map(D => cnt_send_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[9]_net_1\);
    
    \cnt_recive[17]\ : DFN1E0C0
      port map(D => cnt_recive_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[17]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[42]\ : DFN1
      port map(D => \data_all[117]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[42]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[120]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[119]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[120]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[19]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[19]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[27]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[27]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[27]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[129]\ : DFN1
      port map(D => \data_all[30]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[129]_net_1\);
    
    \cnt_recive[19]\ : DFN1E0C0
      port map(D => cnt_recive_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[19]_net_1\);
    
    \signal_send_0/cnt[3]\ : DFN1C0
      port map(D => \signal_send_0/I_9_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_14_2\, CLK
         => sys_clk_c, CLR => \ident_coreinst/IICE_INST/b5_voSc3\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\);
    
    \single_recive_0/cnt_RNIR11I[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/m23_2\);
    
    \data_all[102]\ : DFN1E0C0
      port map(D => N_274, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[102]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[153]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[7]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[153]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[17]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[16]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[17]\);
    
    \signal_send_0/data_all_4_i_0[13]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0_0[13]_net_1\, Y => N_297);
    
    \cnt_recive[15]\ : DFN1E0C0
      port map(D => cnt_recive_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[15]_net_1\);
    
    \signal_send_0/un37_data_send_buffer_1934_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_643_2\);
    
    \signal_send_0/m5\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \signal_send_0/N_6_0\);
    
    \signal_send_0/cnt_recive_end_n8\ : XA1
      port map(A => receive_end2lto8, B => 
        \signal_send_0/cnt_recive_end_c7_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n8);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNI56V11\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, 
        B => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\, Y => 
        \ident_coreinst/IICE_INST/b9_vbTtJX_ab\);
    
    \signal_send_0/send_end_0_sqmuxa_i_14\ : OR3
      port map(A => \signal_send_0/N_74_i\, B => 
        \signal_send_0/un12_cnt_send_25_net_1\, C => 
        \signal_send_0/N_79_i\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_14_net_1\);
    
    \signal_send_0/cnt_RNIBOVP[5]\ : NOR2A
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart34_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_19\ : NOR3A
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_12_net_1\, B => 
        \cnt_send[19]_net_1\, C => \cnt_send[18]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_19_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[127]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[126]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[127]\);
    
    \signal_send_0/data_all_4_i_0[145]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[145]_net_1\, Y => N_1599);
    
    \cnt_send[7]\ : DFN1E1C0
      port map(D => N_1487, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[7]_net_1\);
    
    \signal_send_0/cnt_RNIBOVP_0[5]\ : NOR2
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart27_3\);
    
    \signal_send_0/cnt_recive_c25_0\ : NOR2B
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => 
        \signal_send_0/cnt_recive_c25_0_net_1\);
    
    \signal_send_0/cnt_RNIFSVP_0[8]\ : NOR2A
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/un1_cnt_1_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[52]\ : DFN1
      port map(D => \data_all[107]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[52]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[4]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\);
    
    \signal_send_0/parity_check_RNO_13\ : XOR2
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_4\);
    
    \signal_send_0/cnt_recive_c24\ : NOR2A
      port map(A => \cnt_recive[24]_net_1\, B => 
        \signal_send_0/N_72\, Y => 
        \signal_send_0/cnt_recive_c24_net_1\);
    
    \signal_send_0/cnt_RNICPVP_0[4]\ : NOR2A
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart32_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[24]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[25]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[24]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[6]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[6]_net_1\);
    
    \data_all[32]\ : DFN1E0C0
      port map(D => N_234, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[32]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[145]\ : DFN1
      port map(D => \data_all[14]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[145]_net_1\);
    
    \ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim\ : 
        CLKINT
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk_int\, 
        Y => \ident_coreinst/IICE_comm2iice[11]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[81]\ : DFN1
      port map(D => \data_all[78]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[81]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[123]\ : DFN1
      port map(D => \data_all[36]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[123]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_30\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[5]\, Y => 
        \single_recive_0/DWACT_FINC_E[6]\);
    
    \signal_send_0/data_all_4_i_0_a3[89]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[89]_net_1\, Y => \signal_send_0/N_1798\);
    
    \signal_send_0/data_all_4_i_a2_0[84]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_712\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[155]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[155]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[155]\);
    
    \signal_send_0/data_all_4_i_0[95]\ : NOR3
      port map(A => \signal_send_0/N_1811\, B => N_378, C => 
        \signal_send_0/N_1812\, Y => N_147);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[1]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[1]_net_1\);
    
    \cnt_flag[4]\ : DFN1E1C0
      port map(D => cnt_flag_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[4]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_5\ : XOR2
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => \signal_send_0/I_5_0\);
    
    \signal_send_0/data_all_4_i_0[131]\ : AO1A
      port map(A => \data_all[131]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[131]_net_1\);
    
    \data_all[63]\ : DFN1E0C0
      port map(D => N_211, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[63]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_26\ : AX1C
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/DWACT_FINC_E[4]\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/I_26\);
    
    \single_recive_0/un7_cnt_1_I_10\ : AND3
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[0]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_10_tz\ : OR3
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_0_net_1\, 
        B => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_10_0_net_1\, 
        C => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_14_0_net_1\, 
        Y => 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b13_oRB_MqCD2_EdR_0__RNIDLD2\ : 
        INV
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\);
    
    \cnt_send[21]\ : DFN1E1C0
      port map(D => cnt_send_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[21]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[1]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[1]/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[7]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[7]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[7]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_6[0]\ : NOR2B
      port map(A => \data_all[80]_net_1\, B => 
        \signal_send_0/N_1687\, Y => \signal_send_0/N_569\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10\ : 
        OR2B
      port map(A => \ident_coreinst/IICE_INST/b8_ubTt3_YG\, B => 
        \ident_coreinst/IICE_INST/N_1551\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[136]\ : DFN1
      port map(D => \data_all[23]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[136]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_24\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[3]\, Y => 
        \signal_send_0/DWACT_FINC_E[4]\);
    
    \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF[1]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[25]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[25]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[25]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[136]\ : AO1A
      port map(A => \data_all[136]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[136]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[85]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[85]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[85]\);
    
    \signal_send_0/cnt_delay_n3\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c2_net_1\, B => 
        \cnt_delay[3]_net_1\, C => N_378, Y => cnt_delay_n3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/un1_genblk9.b9_v_mzCDYXs_I_1\ : 
        AND2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs13\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP_0[0]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[29]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[29]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[29]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[82]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[81]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[82]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[91]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[3]\, Y => \signal_send_0/N_1803\);
    
    \signal_send_0/cnt_RNI5IVP[2]\ : NOR2
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart35_4\);
    
    \signal_send_0/cnt_recive_n1_i_a4_0_o2\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_339\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[137]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[137]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[137]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[66]\ : DFN1
      port map(D => \data_all[93]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[66]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[102]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[103]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[101]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[102]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[47]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[47]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[47]\);
    
    \signal_send_0/m77_0_460\ : OA1
      port map(A => \signal_send_0/m77_0_a3_1_1_net_1\, B => 
        \signal_send_0/m77_0_a3_16_0_net_1\, C => 
        \signal_send_0/N_1662\, Y => 
        \signal_send_0/m77_0_460_net_1\);
    
    \signal_send_0/data_all_4_i_0[64]\ : AO1A
      port map(A => \data_all[64]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[64]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[21]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[21]\);
    
    \rx_uart_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rx_uart, Y => \rx_uart_pad/U0/NET1\);
    
    \signal_send_0/parity_check_RNO_1\ : AO1A
      port map(A => \signal_send_0/parity_check_1\, B => 
        \signal_send_0/tx_uart28\, C => 
        \signal_send_0/parity_check_3_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_3\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[17]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[143]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[17]\);
    
    \data_all[51]\ : DFN1E0C0
      port map(D => N_235, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[51]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]\, 
        S => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/Y\);
    
    \signal_send_0/data_all_4_i_0_a3[28]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[28]_net_1\, Y => \signal_send_0/N_465\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[60]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[60]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[60]\);
    
    \data_all[17]\ : DFN1E0C0
      port map(D => N_289, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[17]_net_1\);
    
    \single_recive_0/rx_down_RNO\ : NOR2A
      port map(A => \single_recive_0/rx_fall2_net_1\, B => 
        \single_recive_0/rx_fall1_net_1\, Y => 
        \single_recive_0/rx_down_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[111]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[49]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[111]\);
    
    \signal_send_0/m77_0_464_tz_1\ : AO1
      port map(A => \data_all[61]_net_1\, B => 
        \signal_send_0/N_1645\, C => 
        \signal_send_0/m77_0_a3_12_0_net_1\, Y => 
        \signal_send_0/m77_0_464_tz_1_net_1\);
    
    \signal_send_0/cnt_RNISOCR4_0[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart31_6\, B => 
        \signal_send_0/tx_uart31_5\, C => 
        \signal_send_0/tx_uart31_7\, Y => 
        \signal_send_0/tx_uart31\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[150]\ : DFN1
      port map(D => \data_all[9]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[150]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_3[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\);
    
    \signal_send_0/data_all_4_i_a2[60]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[60]_net_1\, Y => \signal_send_0/N_759\);
    
    \cnt_flag[1]\ : DFN1E1C0
      port map(D => cnt_flag_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[1]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[153]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[152]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[153]\);
    
    \signal_send_0/un7_cnt_1_I_20\ : XOR2
      port map(A => \signal_send_0/N_6\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => \signal_send_0/I_20_0\);
    
    \signal_send_0/data_all_4_i[12]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0[12]_net_1\, Y => N_299);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[40]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[41]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[39]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[40]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[26]\ : DFN1
      port map(D => \data_all[133]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[26]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[15]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[14]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[15]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_6\ : NOR2
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[12]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_6_net_1\);
    
    \signal_send_0/tx_uart_RNO_0\ : AO1
      port map(A => \data_send_buffer[5]_net_1\, B => 
        \signal_send_0/tx_uart33\, C => 
        \signal_send_0/data_send_m[0]\, Y => 
        \signal_send_0/tx_uart_11_iv_3\);
    
    \signal_send_0/data_send_buffer_3_1[6]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_6[6]_net_1\, B => 
        \signal_send_0/N_504\, C => 
        \signal_send_0/data_send_buffer_3_1_7[6]_net_1\, Y => 
        \data_send_buffer_3[6]\);
    
    \data_all[104]\ : DFN1E0C0
      port map(D => \data_all_4[104]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[104]_net_1\);
    
    \signal_send_0/data_all_4_0_i[127]\ : NOR3
      port map(A => \signal_send_0/N_1834\, B => N_378, C => 
        \signal_send_0/N_1835\, Y => N_212);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[139]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[140]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[138]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[139]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[138]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[137]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[138]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[126]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[126]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[126]\);
    
    \signal_send_0/data_all_4_0_i_a3[112]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[112]_net_1\, Y => \signal_send_0/N_1815\);
    
    \signal_send_0/data_all_4_i_0[69]\ : AO1A
      port map(A => \data_all[69]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[69]_net_1\);
    
    \signal_send_0/data_all_4_i[134]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_647_2\, C => 
        \signal_send_0/data_all_4_i_0[134]_net_1\, Y => N_1610);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[119]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[118]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[119]\);
    
    \data_all[38]\ : DFN1E0C0
      port map(D => N_246, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[38]_net_1\);
    
    \data_all[120]\ : DFN1E0C0
      port map(D => N_1725, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[120]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_22\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[3]\, Y => 
        \single_recive_0/N_5\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[146]\ : DFN1
      port map(D => \data_all[13]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[146]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[78]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[77]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[78]\);
    
    \signal_send_0/m81_i_o2\ : OR3C
      port map(A => \signal_send_0/N_140_mux\, B => 
        \signal_send_0/m36_0_net_1\, C => \data_all[1]_net_1\, Y
         => \signal_send_0/N_360\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[102]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[58]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[102]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[9]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[2]_net_1\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[9]\);
    
    \signal_send_0/cnt_recive_c8_0_o4_i_o3\ : OR2A
      port map(A => \cnt_recive[8]_net_1\, B => 
        \signal_send_0/N_1503\, Y => \signal_send_0/N_1505\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[18]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[19]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[17]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[18]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[3]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[4]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[3]\);
    
    \signal_send_0/un38_data_send_buffer_554\ : MX2
      port map(A => \data_all[70]_net_1\, B => 
        \data_all[78]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_551_3\);
    
    \signal_send_0/cnt_send_n30\ : AX1
      port map(A => N_378, B => \cnt_send[30]_net_1\, C => 
        \signal_send_0/N_995\, Y => cnt_send_n30);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[149]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[11]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[149]\);
    
    \single_recive_0/data_recive_RNO[5]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m78_0\, C => 
        \single_recive_0/rx_uart_m_4\, Y => 
        \single_recive_0/data_recive_12[5]\);
    
    \signal_send_0/end_flag_RNIHFLE2\ : NOR2A
      port map(A => \signal_send_0/cnt_flag_n2_tz_net_1\, B => 
        \signal_send_0/un1_send_end\, Y => cnt_flag_n2);
    
    \single_recive_0/cnt_RNIS1UC3[9]\ : NOR3C
      port map(A => \single_recive_0/m12_4\, B => 
        \single_recive_0/N_104_mux\, C => \single_recive_0/m12_5\, 
        Y => \single_recive_0/data_recive27\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[110]\ : DFN1
      port map(D => \data_all[49]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[110]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[21]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[22]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[20]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[21]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[25]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[26]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[24]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[25]\);
    
    \signal_send_0/data_all_4_0_i_a3[38]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[38]_net_1\, Y => \signal_send_0/N_1884\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[129]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[31]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[129]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[3]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[3]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[9]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[9]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[160]\ : DFN1
      port map(D => \receive_end\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk2.b3_nUT[0]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b10_PKFoLX_Y2x\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[121]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[120]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[121]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[32]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[32]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[105]\ : DFN1
      port map(D => \data_all[54]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[105]_net_1\);
    
    \data_all[71]\ : DFN1E0C0
      port map(D => N_195, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[71]_net_1\);
    
    \cnt_recive[18]\ : DFN1E0C0
      port map(D => cnt_recive_n18, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[18]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[86]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[86]_net_1\, Y => \signal_send_0/N_1792\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[59]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[101]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[59]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[61]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[99]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[61]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[29]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[131]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[29]\);
    
    \data_all[55]\ : DFN1E0C0
      port map(D => N_227, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[55]_net_1\);
    
    \signal_send_0/data_all_4_i_0[28]\ : NOR3
      port map(A => \signal_send_0/N_465\, B => N_378, C => 
        \signal_send_0/N_466\, Y => N_267);
    
    \signal_send_0/data_send_buffer_3_1_6[0]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_1[0]_net_1\, B => 
        \signal_send_0/N_576\, C => \signal_send_0/N_570\, Y => 
        \signal_send_0/data_send_buffer_3_1_6[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[96]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[64]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[96]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[94]\ : DFN1
      port map(D => \data_all[65]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[94]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_6_0\ : NOR2A
      port map(A => \signal_send_0/N_1677\, B => 
        \data_all[65]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_6_0_net_1\);
    
    \single_recive_0/data_recive[5]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[5]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[5]\);
    
    \signal_send_0/m62_0_3\ : OR3
      port map(A => \signal_send_0/m62_0_0_1_net_1\, B => 
        \signal_send_0/m62_0_4_net_1\, C => 
        \signal_send_0/m62_0_1_net_1\, Y => 
        \signal_send_0/m62_0_3_net_1\);
    
    \data_all[108]\ : DFN1E0C0
      port map(D => \data_all_4[108]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[108]_net_1\);
    
    \signal_send_0/cnt_recive_n4_i_o2\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \signal_send_0/N_1491\, Y => \signal_send_0/N_1492\);
    
    \signal_send_0/data_send_buffer_3_1_a2_6[3]\ : NOR2B
      port map(A => \data_all[115]_net_1\, B => 
        \signal_send_0/N_1675\, Y => \signal_send_0/N_530\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[59]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[60]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[58]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[59]\);
    
    \signal_send_0/un1_cnt_end_1_I_53\ : NOR3C
      port map(A => 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_1[0]\, B => 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_2[0]\, C => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_3[0]\);
    
    \data_all[97]\ : DFN1E0C0
      port map(D => N_258, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[97]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[32]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[31]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[32]\);
    
    \cnt_send[10]\ : DFN1E1C0
      port map(D => cnt_send_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[10]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_968_i_3\ : AO1
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_1_0_net_1\, 
        B => \signal_send_0/N_889\, C => \signal_send_0/N_472\, Y
         => \signal_send_0/un38_data_send_buffer_968_i_3_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[87]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[87]_net_1\, Y => \signal_send_0/N_1794\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[2]\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[2]\, CLK => 
        sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[13]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[14]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[12]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[13]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[8]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[9]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[8]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[8]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[150]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[10]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[150]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data_RNO[2]\ : 
        OR2
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_194\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[161]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[161]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[161]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_5[3]\ : NOR2B
      port map(A => \data_all[123]_net_1\, B => 
        \signal_send_0/N_1676\, Y => \signal_send_0/N_529\);
    
    \signal_send_0/data_all_4_0_i[115]\ : NOR3
      port map(A => \signal_send_0/N_1822\, B => N_378, C => 
        \signal_send_0/N_1823\, Y => N_1721);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[111]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[112]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[110]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[111]\);
    
    \signal_send_0/un5_idle_recive_10_0\ : NOR3
      port map(A => \cnt_recive[19]_net_1\, B => 
        \cnt_recive[20]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_10_net_1\);
    
    \signal_send_0/data_all_4_i_a2[0]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[0]_net_1\, Y => \signal_send_0/N_875\);
    
    \signal_send_0/data_all_4_i[17]\ : NOR3
      port map(A => \signal_send_0/N_836\, B => N_378, C => 
        \signal_send_0/N_837\, Y => N_289);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[62]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[61]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[62]\);
    
    \signal_send_0/data_all_4_i[66]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_643_2\, C => 
        \signal_send_0/data_all_4_i_0[66]_net_1\, Y => N_205);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[14]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[14]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[0]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_5\ : XO1
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_send[11]_net_1\, C => 
        \signal_send_0/un12_cnt_send_24_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_5_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[82]\ : DFN1
      port map(D => \data_all[77]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[82]_net_1\);
    
    \data_all[66]\ : DFN1E0C0
      port map(D => N_205, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[66]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[78]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[78]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[78]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[8]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[9]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[8]\);
    
    \data_all[131]\ : DFN1E0C0
      port map(D => N_116, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[131]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[145]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[145]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[145]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_10[3]\ : OR3
      port map(A => \signal_send_0/N_529\, B => 
        \signal_send_0/N_530\, C => \signal_send_0/N_523\, Y => 
        \signal_send_0/data_send_buffer_3_1_10[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[115]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[115]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[115]\);
    
    \signal_send_0/un38_data_send_buffer_503\ : MX2
      port map(A => \data_all[19]_net_1\, B => 
        \data_all[27]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_500_3\);
    
    \signal_send_0/cnt_m5_0_a2_2\ : NOR3C
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_send[16]_net_1\, C => \cnt_send[13]_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_2_net_1\);
    
    \data_all[75]\ : DFN1E0C0
      port map(D => N_187, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[75]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[15]\ : 
        AO1
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[15]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[15]_net_1\);
    
    \signal_send_0/un5_idle_recive_8_0\ : NOR3A
      port map(A => \signal_send_0/un5_idle_recive_10_0_net_1\, B
         => \cnt_recive[15]_net_1\, C => \cnt_recive[16]_net_1\, 
        Y => \signal_send_0/un5_idle_recive_8\);
    
    \signal_send_0/data_all_4_0_i_a3[111]\ : NOR2A
      port map(A => \signal_send_0/N_337\, B => 
        \data_all[111]_net_1\, Y => \signal_send_0/N_1813\);
    
    \signal_send_0/data_all_4_i[135]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_648_2\, C => 
        \signal_send_0/data_all_4_i_0[135]_net_1\, Y => N_1609);
    
    \data_all[7]\ : DFN1E0C0
      port map(D => N_309, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[7]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[76]\ : DFN1
      port map(D => \data_all[83]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[76]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[2]\ : 
        AO1A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_198_1\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_194\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[2]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9\ : 
        OR2B
      port map(A => \ident_coreinst/IICE_comm2iice[10]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[106]\ : DFN1
      port map(D => \data_all[53]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[106]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[7]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[7]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[7]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[142]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[143]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[141]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[142]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[53]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[53]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[53]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[126]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[127]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[125]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[126]\);
    
    \signal_send_0/cnt_end_RNI78C71[3]\ : NOR3C
      port map(A => \signal_send_0/cnt_end[7]_net_1\, B => 
        \signal_send_0/cnt_end[3]_net_1\, C => 
        \signal_send_0/un8_cnt_end_3\, Y => 
        \signal_send_0/un8_cnt_end_6\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[42]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[41]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[42]\);
    
    \single_recive_0/cnt_RNIMS0I_1[4]\ : NOR2A
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/m12_3\);
    
    \signal_send_0/data_send_buffer_3_1_7_0[0]\ : OR3
      port map(A => \signal_send_0/N_564\, B => 
        \signal_send_0/N_565\, C => 
        \signal_send_0/data_send_buffer_3_1_7[0]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_7_0[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[0]\ : DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[109]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[110]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[108]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[109]\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b10_vbTtJX_Y2x_RNI0K4P\ : 
        AO1
      port map(A => \ident_coreinst/IICE_INST/b10_vbTtJX_Y2x\, B
         => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_4tt_m2_e_0\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_tz\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[62]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[63]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[61]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[62]\);
    
    \signal_send_0/cnt_m6_0_a2_7_4\ : NOR3C
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[15]_net_1\, C => \cnt_recive[10]_net_1\, Y
         => \signal_send_0/cnt_m6_0_a2_7_4_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[4]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[4]\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\);
    
    \signal_send_0/un1_cnt_end_1_I_44\ : NOR2B
      port map(A => \signal_send_0/DWACT_ADD_CI_0_g_array_3[0]\, 
        B => \signal_send_0/cnt_end[8]_net_1\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_12_3[0]\);
    
    \data_all[21]\ : DFN1E0C0
      port map(D => N_281, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[21]_net_1\);
    
    \signal_send_0/data_all_4_i_0[63]\ : NOR3
      port map(A => \signal_send_0/N_1783\, B => N_378, C => 
        \signal_send_0/N_1784\, Y => N_211);
    
    \signal_send_0/data_send_buffer_3_1_a2_7[4]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, B
         => \data_all[100]_net_1\, C => N_378, Y => 
        \signal_send_0/N_513\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[100]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[100]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[100]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_4[6]\ : NOR2B
      port map(A => \data_all[134]_net_1\, B => 
        \signal_send_0/N_925\, Y => \signal_send_0/N_499\);
    
    \signal_send_0/cnt_m4_0_a2_5\ : NOR3C
      port map(A => \signal_send_0/cnt_m3_0_a2_1_net_1\, B => 
        \signal_send_0/cnt_m4_0_a2_1_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_3_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_5_net_1\);
    
    \signal_send_0/un7_cnt_1_I_7\ : AX1C
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => \signal_send_0/I_7_0\);
    
    \signal_send_0/data_all_4_i_0_0[143]\ : AO1A
      port map(A => \data_all[143]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[143]_net_1\);
    
    \signal_send_0/data_all_4_0_a2_1_i_o2_1[127]\ : OR3B
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \signal_send_0/N_46\, Y => 
        \signal_send_0/data_all_4_0_a2_1_i_o2_1[127]_net_1\);
    
    \signal_send_0/un37_data_send_buffer_1776_i_i_a3\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_386\);
    
    \single_recive_0/un7_cnt_1_I_27\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[4]\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/N_3\);
    
    \signal_send_0/un5_idle_recive_9\ : NOR2
      port map(A => \cnt_recive[14]_net_1\, B => 
        \cnt_recive[13]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_9_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_1[0]\ : OR3
      port map(A => \signal_send_0/N_562\, B => 
        \signal_send_0/N_567\, C => \signal_send_0/N_563\, Y => 
        \signal_send_0/data_send_buffer_3_1_1[0]_net_1\);
    
    \signal_send_0/receive_end2lto6_1\ : AO1
      port map(A => receive_end2lto2, B => receive_end2lto3, C
         => \cnt_recive_end[4]_net_1\, Y => 
        \signal_send_0/receive_end2lto6_1_net_1\);
    
    \signal_send_0/cnt_delay_c3\ : NOR2B
      port map(A => \signal_send_0/cnt_delay_c2_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => 
        \signal_send_0/cnt_delay_c3_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[134]\ : DFN1
      port map(D => \data_all[25]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[134]_net_1\);
    
    \signal_send_0/cnt_send_n5_i\ : NOR3A
      port map(A => \signal_send_0/N_1498\, B => 
        \signal_send_0/N_1537\, C => N_378, Y => N_1489);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[73]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[87]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[73]\);
    
    \signal_send_0/tx_uart_RNO_1\ : AO1
      port map(A => \data_send_buffer[7]_net_1\, B => 
        \signal_send_0/tx_uart35\, C => 
        \signal_send_0/data_send_m[6]\, Y => 
        \signal_send_0/tx_uart_11_iv_2\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO[0]\ : OR2
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_89\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[0]\);
    
    \signal_send_0/data_all_4_0_i[38]\ : NOR3
      port map(A => \signal_send_0/N_1884\, B => N_378, C => 
        \signal_send_0/N_1885\, Y => N_246);
    
    \signal_send_0/data_all_4_i_o3_i_o2_0[159]\ : OR3B
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        \signal_send_0/N_292\);
    
    \signal_send_0/un5_idle_recive_15\ : NOR3C
      port map(A => \signal_send_0/un5_idle_recive_4_net_1\, B
         => \signal_send_0/un5_idle_recive_7_0_net_1\, C => 
        \signal_send_0/un5_idle_recive_12_net_1\, Y => 
        \signal_send_0/un5_idle_recive_15_net_1\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIJP733\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\, B
         => 
        \ident_coreinst/comm_block_INST/jtagi/b9_96_cLqgOF3_1\, C
         => 
        \ident_coreinst/comm_block_INST/jtagi/b11_uRrc_9urXBb_0[0]\, 
        Y => \ident_coreinst/IICE_comm2iice[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[18]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[17]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[18]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[87]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[88]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[86]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[87]\);
    
    \single_recive_0/un7_cnt_1_I_29\ : AND3
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, C => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[5]\);
    
    \cnt_recive[20]\ : DFN1E0C0
      port map(D => cnt_recive_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[20]_net_1\);
    
    \signal_send_0/m77_0_a3_1_1\ : OA1
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[21]_net_1\, C => 
        \signal_send_0/m77_0_a3_1_1_0_net_1\, Y => 
        \signal_send_0/m77_0_a3_1_1_net_1\);
    
    \signal_send_0/cnt_RNI8LVP_0[5]\ : NOR2
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart28_1\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[13]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[13]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[13]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[3]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[96]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[96]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[96]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[49]\ : DFN1
      port map(D => \data_all[110]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[49]_net_1\);
    
    \single_recive_0/cnt_RNIS21I[2]\ : NOR2A
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m76_1\);
    
    \signal_send_0/data_all_4_i_a2_0[60]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_760\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[148]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[12]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[148]\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[156]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[4]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[156]\);
    
    \signal_send_0/data_send_buffer_3_1_17[2]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_11[2]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_10[2]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_14[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_17[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[29]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[28]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[29]\);
    
    \data_all[143]\ : DFN1E0C0
      port map(D => N_1601, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[143]_net_1\);
    
    \signal_send_0/data_all_4_0_i[114]\ : NOR3
      port map(A => \signal_send_0/N_1820\, B => N_378, C => 
        \signal_send_0/N_1821\, Y => N_1720);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[157]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[158]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[156]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[157]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[128]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[32]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[128]\);
    
    \signal_send_0/un38_data_send_buffer_522\ : MX2
      port map(A => \data_all[38]_net_1\, B => 
        \data_all[46]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_519_3\);
    
    \signal_send_0/data_all_4_i_0[89]\ : NOR3
      port map(A => \signal_send_0/N_1798\, B => N_378, C => 
        \signal_send_0/N_1799\, Y => N_159);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[68]\ : DFN1
      port map(D => \data_all[91]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[68]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[26]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[27]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[26]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[26]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[59]\ : DFN1
      port map(D => \data_all[100]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[59]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[102]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[102]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[102]\);
    
    \signal_send_0/data_all_4_0_i[99]\ : NOR3
      port map(A => \signal_send_0/N_642\, B => N_378, C => 
        \signal_send_0/N_643\, Y => N_266);
    
    \signal_send_0/cnt_end[9]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_5[9]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[9]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_5[4]\ : AO1
      port map(A => \data_all[156]_net_1\, B => 
        \signal_send_0/N_1683\, C => \signal_send_0/N_508\, Y => 
        \signal_send_0/data_send_buffer_3_1_5[4]_net_1\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_nv_oQwfYF_RNO\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk2_no_clk_buffer_needed\, 
        B => \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, 
        Y => \ident_coreinst/IICE_comm2iice[8]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[1]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[5]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[144]\ : DFN1
      port map(D => \data_all[15]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[144]_net_1\);
    
    \test\ : DFN1C0
      port map(D => \data_all[4]_net_1\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => test_c);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[36]\ : DFN1
      port map(D => \data_all[123]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[36]_net_1\);
    
    \data_all[25]\ : DFN1E0C0
      port map(D => N_273, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[25]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_22\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[3]\, Y => \signal_send_0/N_5\);
    
    \signal_send_0/un38_data_send_buffer_968_i_11_tz_1\ : OR3
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_0_net_1\, B
         => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_3_0_net_1\, 
        C => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_7_0_net_1\, 
        Y => 
        \signal_send_0/un38_data_send_buffer_968_i_11_tz_1_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[28]\ : DFN1
      port map(D => \data_all[131]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[28]_net_1\);
    
    \signal_send_0/m90_i_a3_0\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_391\);
    
    \signal_send_0/data_send_buffer_3_1_a2_9[2]\ : NOR2B
      port map(A => \data_all[82]_net_1\, B => 
        \signal_send_0/N_1687\, Y => \signal_send_0/N_551\);
    
    \signal_send_0/data_all_4_0_i[116]\ : NOR3
      port map(A => \signal_send_0/N_1824\, B => N_378, C => 
        \signal_send_0/N_1825\, Y => N_1722);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/un1_genblk9.b9_v_mzCDYXs_I_14\ : 
        AX1C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP_0[0]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, C
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/I_14_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[66]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[67]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[65]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[66]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[102]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[101]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[102]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_1\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\);
    
    \signal_send_0/end_flag_RNI9O162\ : XA1B
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        C => \signal_send_0/un1_send_end\, Y => cnt_flag_n1);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[4]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[5]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[0]_net_1\, S
         => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[115]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[116]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[114]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[115]\);
    
    \signal_send_0/data_all_4_i_0_a3[61]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[61]_net_1\, Y => \signal_send_0/N_1780\);
    
    \signal_send_0/data_send_buffer_3_1[4]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_11[4]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_10[4]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_15[4]_net_1\, Y => 
        \data_send_buffer_3[4]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[105]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[55]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[105]\);
    
    \signal_send_0/cnt_delay_n0\ : NOR2
      port map(A => \cnt_delay[0]_net_1\, B => N_378, Y => N_1482);
    
    \cnt_recive[2]\ : DFN1E0C0
      port map(D => N_38, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[2]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[152]\ : DFN1
      port map(D => \data_all[7]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[152]_net_1\);
    
    \single_recive_0/data_recive_RNO_1[0]\ : NOR3C
      port map(A => \single_recive_0/N_123_mux\, B => 
        \single_recive_0/m52_3\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m\);
    
    \data_all[69]\ : DFN1E0C0
      port map(D => N_199, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[69]_net_1\);
    
    \signal_send_0/cnt_send_107_0\ : NOR2A
      port map(A => \cnt_send[29]_net_1\, B => N_378, Y => 
        \signal_send_0/cnt_send_107_0_net_1\);
    
    \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF[0]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b12_PSyi_XlK_qHv\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[120]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[121]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[119]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[120]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[38]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[122]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[38]\);
    
    \signal_send_0/data_all_4_i[51]\ : NOR3
      port map(A => \signal_send_0/N_777\, B => N_378, C => 
        \signal_send_0/N_778\, Y => N_235);
    
    \signal_send_0/data_all_4_0_i_a3[127]\ : NOR2A
      port map(A => \signal_send_0/N_320\, B => 
        \data_all[127]_net_1\, Y => \signal_send_0/N_1834\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\);
    
    \signal_send_0/cnt_send_n7_i\ : NOR3
      port map(A => N_378, B => \signal_send_0/cnt_N_9_mux_0\, C
         => \signal_send_0/N_1533\, Y => N_1487);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        CLK => sys_clk_c, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_19[4]\ : NOR2B
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_889\, Y => \signal_send_0/N_1686\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[123]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[124]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[122]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[123]\);
    
    \signal_send_0/cnt_RNO[11]\ : XA1
      port map(A => \signal_send_0/N_2\, B => 
        \signal_send_0/cnt[11]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => 
        \signal_send_0/cnt_4[11]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_10_tz_0\ : AO1A
      port map(A => \data_all[97]_net_1\, B => 
        \signal_send_0/N_1680\, C => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_6_0_net_1\, 
        Y => 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[115]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[114]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[115]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_2[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[27]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[26]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[27]\);
    
    \signal_send_0/cnt_RNIMGVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart35_4\, B => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart36_6\);
    
    \data_send_buffer[3]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[3]_net_1\);
    
    \signal_send_0/cnt_sendlde_0\ : OR2
      port map(A => \idle_send_down\, B => N_378, Y => 
        cnt_sende_0);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNO\ : OA1
      port map(A => 
        \ident_coreinst/comm_block_INST/IICE_iice2comm_m\, B => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql.b3_PLF_iv_0\, 
        C => 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2_0\, Y
         => \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[149]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[150]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[148]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[149]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b7_nUTQ_9u\, B => 
        \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\);
    
    \signal_send_0/un38_data_send_buffer_487\ : MX2
      port map(A => \data_all[3]_net_1\, B => 
        \data_all[11]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_484_3\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[13]\ : DFN1
      port map(D => \data_all[146]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[89]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[88]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[89]\);
    
    \signal_send_0/data_all_4_i_0_a3[29]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[29]_net_1\, Y => \signal_send_0/N_1758\);
    
    \signal_send_0/un17_data_send_bufferlto31\ : AOI1A
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, B => 
        \signal_send_0/N_1898_3\, C => \cnt_send[28]_net_1\, Y
         => \signal_send_0/un17_data_send_buffer\);
    
    \signal_send_0/data_all_4_0[125]\ : AO1A
      port map(A => \signal_send_0/N_20\, B => 
        \data_all[125]_net_1\, C => \signal_send_0/N_1631\, Y => 
        \data_all_4[125]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[40]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[120]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[40]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[112]\ : DFN1
      port map(D => \data_all[47]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[112]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[7]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[92]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[92]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[92]\);
    
    \single_recive_0/data_recive_RNO_0[3]\ : AOI1B
      port map(A => \single_recive_0/m85_3\, B => 
        \single_recive_0/N_123_mux\, C => \data_recive_buffer[3]\, 
        Y => \single_recive_0/m87_0\);
    
    \signal_send_0/data_send_buffer_3_1_a2_9[0]\ : NOR3C
      port map(A => \signal_send_0/data_N_4\, B => 
        \data_all[0]_net_1\, C => 
        \signal_send_0/m77_0_a2_1_0_net_1\, Y => 
        \signal_send_0/N_576\);
    
    \signal_send_0/data_all_4_0_i[102]\ : NOR3
      port map(A => \signal_send_0/N_646\, B => N_378, C => 
        \signal_send_0/N_647\, Y => N_274);
    
    \signal_send_0/data_all_4_i_0_a3[93]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[93]_net_1\, Y => \signal_send_0/N_1806\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[8]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[9]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[7]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[8]\);
    
    \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4\ : DFN1
      port map(D => \ident_coreinst/IICE_INST/b10_nYBzIXrKbK[1]\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[77]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[83]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[77]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[118]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1829\);
    
    \signal_send_0/idle_send_RNIGUCO\ : NOR3A
      port map(A => \idle_send_fall\, B => 
        \signal_send_0/idle_send_net_1\, C => N_378, Y => 
        idle_send_down_3);
    
    \single_recive_0/cnt_RNIS1UC3[1]\ : NOR3C
      port map(A => \single_recive_0/m23_6\, B => 
        \single_recive_0/m23_5\, C => \single_recive_0/m23_7\, Y
         => \single_recive_0/data_recive24\);
    
    \data_all[139]\ : DFN1E0C0
      port map(D => N_1605, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[139]_net_1\);
    
    \data_all[105]\ : DFN1E0C0
      port map(D => \data_all_4[105]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[105]_net_1\);
    
    \signal_send_0/m62_0_4_tz_1\ : AO1
      port map(A => \data_all[55]_net_1\, B => 
        \signal_send_0/N_1649\, C => 
        \signal_send_0/m62_0_a3_8_0_net_1\, Y => 
        \signal_send_0/m62_0_4_tz_1_net_1\);
    
    \signal_send_0/cnt_m5_0_a2_4\ : NOR3C
      port map(A => \signal_send_0/cnt_m5_0_a2_4_2_net_1\, B => 
        \signal_send_0/m85_0\, C => 
        \signal_send_0/cnt_m5_0_a2_4_3_net_1\, Y => 
        \signal_send_0/cnt_N_11_mux_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[66]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[66]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[66]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[12]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]_net_1\);
    
    \signal_send_0/m81_i_a3_1_0\ : NOR2A
      port map(A => \signal_send_0/un17_data_send_buffer\, B => 
        \cnt_send[4]_net_1\, Y => 
        \signal_send_0/m81_i_a3_1_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_14\ : 
        XOR3
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_1[0]\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[2]\);
    
    \data_send_buffer[5]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[5]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[5]_net_1\);
    
    \cnt_recive_end[9]\ : DFN1C0
      port map(D => cnt_recive_end_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto9);
    
    \signal_send_0/data_all_4_i[70]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_647_2\, C => 
        \signal_send_0/data_all_4_i_0[70]_net_1\, Y => N_197);
    
    \signal_send_0/data_all_4_i_0[55]\ : NOR3
      port map(A => \signal_send_0/N_1778\, B => N_378, C => 
        \signal_send_0/N_1779\, Y => N_227);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[23]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[23]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[23]\);
    
    \single_recive_0/cnt_RNI8TCI_1[10]\ : NOR2
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_14_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[104]\ : DFN1
      port map(D => \data_all[55]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[104]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[129]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[128]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[129]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[71]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[71]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[71]\);
    
    \cnt_delay[4]\ : DFN1E1C0
      port map(D => cnt_delay_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[4]_net_1\);
    
    \signal_send_0/cnt_m4_0_a2_11_1\ : NOR2B
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_11_1_net_1\);
    
    \signal_send_0/cnt_RNIQEDD2[11]\ : NOR3C
      port map(A => \signal_send_0/un1_cnt_0\, B => 
        \signal_send_0/un1_cnt_6\, C => \signal_send_0/un1_cnt_1\, 
        Y => \signal_send_0/un1_cnt_4_0\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[14]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[146]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[14]\);
    
    \signal_send_0/data_send_buffer_3_1_12[4]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_1[4]_net_1\, B => 
        \signal_send_0/N_517\, C => 
        \signal_send_0/data_send_buffer_3_1_7[4]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_12[4]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[99]\ : NOR2
      port map(A => \data_recive_buffer[3]\, B => 
        \signal_send_0/N_312\, Y => \signal_send_0/N_643\);
    
    \signal_send_0/cnt_RNIE8VJ1[5]\ : NOR3C
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, C => 
        \signal_send_0/tx_uart37_2\, Y => 
        \signal_send_0/tx_uart37_5\);
    
    \signal_send_0/un38_data_send_buffer_715_i_m3\ : MX2
      port map(A => \signal_send_0/N_551_3\, B => 
        \signal_send_0/N_567_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_452\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[88]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[72]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[88]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk9.b9_v_mzCDYXs13_0_a3\ : 
        NOR2B
      port map(A => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs13\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[5]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\);
    
    \signal_send_0/data_all_4_i[83]\ : NOR3
      port map(A => \signal_send_0/N_714\, B => N_378, C => 
        \signal_send_0/N_713\, Y => N_171);
    
    \signal_send_0/data_send_buffer_3_1_a2_1[0]\ : NOR2B
      port map(A => \data_all[120]_net_1\, B => 
        \signal_send_0/N_1676\, Y => \signal_send_0/N_564\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[4]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]_net_1\);
    
    \signal_send_0/cnt_recive_n10_0_o4\ : OR2A
      port map(A => \cnt_recive[9]_net_1\, B => 
        \signal_send_0/N_1505\, Y => \signal_send_0/N_54\);
    
    \signal_send_0/un11_receive_endlto4_0\ : OR2B
      port map(A => \cnt_delay[3]_net_1\, B => 
        \cnt_delay[4]_net_1\, Y => 
        \signal_send_0/un11_receive_endlto4_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[20]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[21]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[20]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[78]\ : DFN1
      port map(D => \data_all[81]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[78]_net_1\);
    
    \signal_send_0/data_all_4_i_a2[83]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[83]_net_1\, Y => \signal_send_0/N_713\);
    
    \signal_send_0/data_m2_e_1\ : NOR3A
      port map(A => \signal_send_0/data_m2_e_1_3_net_1\, B => 
        \signal_send_0/OVER_12_7_net_1\, C => 
        \signal_send_0/OVER_12_8_net_1\, Y => 
        \signal_send_0/data_N_5_mux_1\);
    
    \signal_send_0/cnt_RNILSDJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart36_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart36_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[125]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[125]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[125]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[156]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[155]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[156]\);
    
    \cnt_recive[6]\ : DFN1E0C0
      port map(D => N_30, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[6]_net_1\);
    
    \signal_send_0/cnt_send_c12\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c11\, B => 
        \cnt_send[12]_net_1\, Y => 
        \signal_send_0/cnt_send_c12_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[25]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[24]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[25]\);
    
    \signal_send_0/data_all_4_i_0[147]\ : AO1D
      port map(A => \signal_send_0/N_385\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[147]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_17[3]\ : NOR3A
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_17_0[3]_net_1\, B
         => I_20_1, C => \signal_send_0/un17_data_send_buffer\, Y
         => \signal_send_0/N_1674\);
    
    \signal_send_0/data_all_4_i[128]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_641_2\, C => 
        \signal_send_0/data_all_4_i_0[128]_net_1\, Y => N_122);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[133]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[132]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[133]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[87]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[86]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[87]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[4]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_191\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[4]\);
    
    \signal_send_0/data_all_4_i[100]\ : NOR3
      port map(A => \signal_send_0/N_1553\, B => N_378, C => 
        \signal_send_0/N_1555\, Y => N_1544);
    
    \signal_send_0/cnt_send_n16_i_0\ : AO1
      port map(A => \signal_send_0/cnt_m5_0_a2_6_net_1\, B => 
        \signal_send_0/cnt_m6_0_a2_4_0\, C => N_378, Y => 
        \signal_send_0/cnt_send_n16_i_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[81]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[82]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[80]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[81]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[142]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[141]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[142]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[85]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[86]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[84]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[85]\);
    
    \signal_send_0/cnt_recive_n8_i\ : XA1C
      port map(A => \cnt_recive[8]_net_1\, B => 
        \signal_send_0/N_1503\, C => N_378, Y => N_26);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[137]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[138]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[136]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[137]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[79]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[80]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[78]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[79]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[108]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[107]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[108]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[154]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[153]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[154]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[114]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[46]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[114]\);
    
    \signal_send_0/data_all_4_i[21]\ : NOR3
      port map(A => \signal_send_0/N_828\, B => N_378, C => 
        \signal_send_0/N_829\, Y => N_281);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[89]\ : DFN1
      port map(D => \data_all[70]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[89]_net_1\);
    
    \signal_send_0/un1_cnt_end_1_I_58\ : AND2
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/cnt_end[7]_net_1\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_2[0]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[18]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[19]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[18]\);
    
    \signal_send_0/cnt_end[0]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_5[0]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIP5P9[2]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_iSWcC\, B => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_198_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[150]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[150]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[150]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[39]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[38]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[39]\);
    
    \single_recive_0/cnt[11]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[43]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[43]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[43]\);
    
    \signal_send_0/end_flag_RNO\ : NOR2
      port map(A => \signal_send_0/un2_vld_send_down\, B => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/end_flag_1_sqmuxa\);
    
    \signal_send_0/data_send_buffer_3_1_a2_9[4]\ : NOR2B
      port map(A => \data_all[84]_net_1\, B => 
        \signal_send_0/N_1687\, Y => \signal_send_0/N_515\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[99]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[100]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[98]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[99]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[22]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[23]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[21]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[22]\);
    
    \signal_send_0/data_all_4_i_0_a3[26]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[26]_net_1\, Y => \signal_send_0/N_461\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[12]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[12]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[12]\);
    
    \data_all[41]\ : DFN1E0C0
      port map(D => N_255, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[41]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs_0[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[151]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[9]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[151]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[1]\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[1]\, CLK => 
        sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[1]_net_1\);
    
    \signal_send_0/m81_i_a3_4\ : NOR3B
      port map(A => \signal_send_0/N_889\, B => 
        \signal_send_0/N_1917\, C => \data_all[137]_net_1\, Y => 
        \signal_send_0/N_397\);
    
    \signal_send_0/data_all_4_0[105]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[105]_net_1\, C => \signal_send_0/N_686\, Y => 
        \data_all_4[105]\);
    
    \signal_send_0/data_send_buffer_3_1_3_0[2]\ : AO1
      port map(A => \data_all[58]_net_1\, B => 
        \signal_send_0/N_1690\, C => \signal_send_0/N_557\, Y => 
        \signal_send_0/data_send_buffer_3_1_3_0[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b10_PKFoLX_Y2x_RNILH7P\ : 
        AO1
      port map(A => \ident_coreinst/IICE_INST/b10_PKFoLX_Y2x\, B
         => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_5tt_m2_e_0\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_tz\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[29]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[30]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[29]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[88]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_1797\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[69]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[68]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[69]\);
    
    \signal_send_0/un7_cnt_1_I_29\ : AND3
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, C => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[5]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[99]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[61]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[99]\);
    
    \data_all[84]\ : DFN1E0C0
      port map(D => N_169, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[84]_net_1\);
    
    \signal_send_0/cnt_recive_end_n6\ : XA1
      port map(A => \cnt_recive_end[6]_net_1\, B => 
        \signal_send_0/cnt_recive_end_c5_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n6);
    
    \single_recive_0/cnt_RNIK1241[9]\ : NOR3C
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, C => 
        \single_recive_0/m23_4\, Y => \single_recive_0/m23_7\);
    
    \signal_send_0/data_send_buffer_3_1_a2_21[4]\ : NOR2B
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_1645\, Y => \signal_send_0/N_1688\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[0]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\);
    
    \signal_send_0/data_all_4_i[78]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[78]_net_1\, Y => N_181);
    
    \signal_send_0/m77_0_462_tz_1\ : AO1
      port map(A => \data_all[141]_net_1\, B => 
        \signal_send_0/N_889\, C => 
        \signal_send_0/m77_0_a3_3_0_net_1\, Y => 
        \signal_send_0/m77_0_462_tz_1_net_1\);
    
    \signal_send_0/data_all_4_i_0[155]\ : AO1A
      port map(A => \data_all[155]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[155]_net_1\);
    
    \signal_send_0/cnt_recive_c23_0_o4\ : OR2B
      port map(A => \signal_send_0/cnt_N_9_mux\, B => 
        \cnt_recive[23]_net_1\, Y => \signal_send_0/N_72\);
    
    \signal_send_0/data_all_4_i_a2[5]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[5]_net_1\, Y => \signal_send_0/N_1637\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[16]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[17]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[16]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[16]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[62]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[62]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[62]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[162]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[161]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[162]\);
    
    \signal_send_0/data_all_4_i_0_a3[27]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[27]_net_1\, Y => \signal_send_0/N_463\);
    
    \signal_send_0/cnt_m6_0_a2_11_6\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_7_3\, B => 
        \signal_send_0/cnt_m6_0_a2_11_1_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_11_3_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_11_6_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]_net_1\);
    
    \signal_send_0/cnt_m4_0_a2_3_6\ : NOR3C
      port map(A => \cnt_recive[21]_net_1\, B => 
        \cnt_recive[22]_net_1\, C => \cnt_recive[18]_net_1\, Y
         => \signal_send_0/cnt_m4_0_a2_3_net_1\);
    
    \cnt_send[8]\ : DFN1E1C0
      port map(D => N_1486, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[8]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[4]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[5]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[3]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[4]\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIEGED1\ : 
        NOR3A
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[1]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[5]\, 
        C => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[2]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi/b9_96_cLqgOF3_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[139]\ : DFN1
      port map(D => \data_all[20]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[139]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[149]\ : AO1A
      port map(A => \data_all[149]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[149]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[140]\ : AO1A
      port map(A => \data_all[140]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[140]_net_1\);
    
    \signal_send_0/un12_cnt_send_2_0_x2_0_x2\ : XOR2
      port map(A => \cnt_send[2]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => \signal_send_0/N_354_i\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[38]\ : DFN1
      port map(D => \data_all[121]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[38]_net_1\);
    
    \cnt_flag[0]\ : DFN1E1C0
      port map(D => N_1483, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_flage, Q => \cnt_flag[0]_net_1\);
    
    \signal_send_0/data_all_4_i_0[71]\ : AO1A
      port map(A => \data_all[71]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[71]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[6]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[7]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[6]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[49]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[48]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[49]\);
    
    \signal_send_0/data_all_4_i_a2[23]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[23]_net_1\, Y => 
        \signal_send_0/N_824\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[22]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\);
    
    \signal_send_0/cnt_send_n7_i_a3\ : OA1C
      port map(A => \cnt_send[6]_net_1\, B => 
        \signal_send_0/N_1498\, C => \cnt_send[7]_net_1\, Y => 
        \signal_send_0/N_1533\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[30]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[31]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[30]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[152]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[152]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[152]\);
    
    \signal_send_0/data_all_4_i_0[12]\ : AO1A
      port map(A => \data_all[12]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[12]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[0]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b10_OFWNT9_Y2x\);
    
    \signal_send_0/un7_cnt_1_I_16\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[1]\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => \signal_send_0/N_7\);
    
    \cnt_send[24]\ : DFN1E1C0
      port map(D => cnt_send_n24, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[24]_net_1\);
    
    \single_recive_0/cnt_RNIBAED1_0[3]\ : NOR3A
      port map(A => \single_recive_0/N_103_mux\, B => 
        \single_recive_0/cnt[4]_net_1\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m76_6\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_RNO\ : NOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/un1_in_en_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[6]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[6]\);
    
    \signal_send_0/cnt_recive_end_n2\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, 
        B => \signal_send_0/cnt_recive_end_n2_tz_net_1\, Y => 
        cnt_recive_end_n2);
    
    \signal_send_0/data_all_4_i_a2[1]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[1]_net_1\, Y => \signal_send_0/N_873\);
    
    \signal_send_0/cnt_m6_0_a2_11_2\ : NOR2B
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[9]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_7_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[85]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[84]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[85]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[34]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[35]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[33]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[34]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[15]\ : DFN1
      port map(D => \data_all[144]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[15]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[17]\ : DFN1
      port map(D => \data_all[142]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[17]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[8]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[8]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_21\ : AND2
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[3]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_8[0]\ : NOR2B
      port map(A => \data_all[64]_net_1\, B => 
        \signal_send_0/N_1685\, Y => \signal_send_0/N_571\);
    
    \signal_send_0/data_send_buffer_3_1_0[2]\ : AO1A
      port map(A => \signal_send_0/data_m1_e_4_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_a2_17_4[2]_net_1\, C
         => \signal_send_0/N_549\, Y => 
        \signal_send_0/data_send_buffer_3_1_0[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNIV4742\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        C => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa_0\);
    
    \signal_send_0/cnt_m3_0_a2_2_2\ : NOR2B
      port map(A => \cnt_send[21]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_2_2_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_15\ : 
        AO1
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_pog_array_0[0]\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_TMP[0]\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_0_1[0]\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_1[0]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[121]\ : DFN1
      port map(D => \data_all[38]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[121]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/un1_genblk9.b9_v_mzCDYXs_I_12\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP_0[0]\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/I_12_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[133]\ : DFN1
      port map(D => \data_all[26]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[133]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[50]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[110]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[50]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[101]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[101]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[101]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[20]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[140]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[20]\);
    
    \data_all[37]\ : DFN1E0C0
      port map(D => N_242, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[37]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[4]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[156]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[4]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_19[6]\ : NOR2B
      port map(A => \signal_send_0/N_1659\, B => 
        \signal_send_0/N_1645\, Y => \signal_send_0/N_1683\);
    
    \data_all[45]\ : DFN1E0C0
      port map(D => N_247, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[45]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[37]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[36]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[37]\);
    
    \signal_send_0/idle_send_RNIB0BF\ : NOR2A
      port map(A => \signal_send_0/idle_send_net_1\, B => N_378, 
        Y => idle_send_fall_2);
    
    \signal_send_0/cnt_send_n29_tz\ : AX1C
      port map(A => \cnt_send[28]_net_1\, B => 
        \signal_send_0/cnt_send_c27_net_1\, C => 
        \cnt_send[29]_net_1\, Y => 
        \signal_send_0/cnt_send_n29_tz_net_1\);
    
    \signal_send_0/cnt_recive_end_c3\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_c2_net_1\, B
         => receive_end2lto3, Y => 
        \signal_send_0/cnt_recive_end_c3_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[28]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[29]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[28]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO[2]\ : NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_91\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[2]\);
    
    \tx_uart_pad/U0/U0\ : IOPAD_TRI
      port map(D => \tx_uart_pad/U0/NET1\, E => 
        \tx_uart_pad/U0/NET2\, PAD => tx_uart);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data_RNO_0[1]\ : 
        OR3B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        C => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/N_83\);
    
    \signal_send_0/cnt_m4_0_a2_7_4\ : NOR3C
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[22]_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_7_2_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_7_4_net_1\);
    
    \data_all[146]\ : DFN1E0C0
      port map(D => N_1598, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[146]_net_1\);
    
    \signal_send_0/m81_i_a3_2_0\ : NOR2A
      port map(A => \signal_send_0/N_1645\, B => 
        \data_all[153]_net_1\, Y => 
        \signal_send_0/m81_i_a3_2_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[107]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[53]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[107]\);
    
    \signal_send_0/data_all_4_0_a2_0[124]\ : NOR3A
      port map(A => \data_recive_buffer[4]\, B => N_378, C => 
        \signal_send_0/N_320\, Y => \signal_send_0/N_650\);
    
    \signal_send_0/cnt_m5_0_a2_6\ : NOR3C
      port map(A => \signal_send_0/cnt_m5_0_a2_2_net_1\, B => 
        \cnt_send[1]_net_1\, C => 
        \signal_send_0/cnt_m5_0_a2_5_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_6_net_1\);
    
    \cnt_recive[26]\ : DFN1E0C0
      port map(D => cnt_recive_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[26]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[149]\ : DFN1
      port map(D => \data_all[10]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[149]_net_1\);
    
    \data_all[60]\ : DFN1E0C0
      port map(D => N_217, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[60]_net_1\);
    
    \signal_send_0/data_all_4_i_0[135]\ : AO1A
      port map(A => \data_all[135]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[135]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[26]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[27]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[25]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[26]\);
    
    \signal_send_0/data_all_4_i[52]\ : NOR3
      port map(A => \signal_send_0/N_775\, B => N_378, C => 
        \signal_send_0/N_776\, Y => N_233);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[22]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[23]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_3[3]\ : NOR2B
      port map(A => \data_all[139]_net_1\, B => 
        \signal_send_0/N_1682\, Y => \signal_send_0/N_527\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[67]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[66]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[67]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk2.b3_nUT[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[1]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_10[2]\ : NOR2B
      port map(A => \data_all[74]_net_1\, B => 
        \signal_send_0/N_1686\, Y => \signal_send_0/N_552\);
    
    \signal_send_0/data_send_buffer_3_1_a2_1[2]\ : NOR2B
      port map(A => \data_all[146]_net_1\, B => 
        \signal_send_0/N_927\, Y => \signal_send_0/N_543\);
    
    \signal_send_0/un38_data_send_buffer_488\ : MX2
      port map(A => \data_all[4]_net_1\, B => 
        \data_all[12]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_485_3\);
    
    \signal_send_0/m81_i_a3_5_0\ : NOR2A
      port map(A => \signal_send_0/N_887\, B => 
        \data_all[129]_net_1\, Y => 
        \signal_send_0/m81_i_a3_5_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[9]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[9]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[9]\);
    
    \signal_send_0/cnt_delay_n4\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c3_net_1\, B => 
        \cnt_delay[4]_net_1\, C => N_378, Y => cnt_delay_n4);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[107]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[108]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[106]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[107]\);
    
    \data_all[4]\ : DFN1E0C0
      port map(D => N_315, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[4]_net_1\);
    
    \signal_send_0/cnt_RNIEVMJ1[11]\ : NOR3B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/tx_uart30_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart35_3\);
    
    un19_data_send_buffer_1_I_14 : AX1D
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        C => \cnt_send[2]_net_1\, Y => I_14_3);
    
    \signal_send_0/data_all_4_0_i_a3_0[98]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_641\);
    
    \signal_send_0/data_all_4_0_i_a3[102]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[102]_net_1\, Y => \signal_send_0/N_646\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[9]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[10]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\);
    
    \signal_send_0/un5_idle_recive_2\ : NOR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_2_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[16]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[144]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[16]\);
    
    \signal_send_0/data_send_buffer_3_1_9[4]\ : AO1
      port map(A => \signal_send_0/N_456\, B => 
        \signal_send_0/N_1662\, C => 
        \signal_send_0/data_send_buffer_3_1_2[4]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_9[4]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[143]\ : DFN1
      port map(D => \data_all[16]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[143]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[148]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[147]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[148]\);
    
    \signal_send_0/data_m1_e_0\ : NOR2
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \signal_send_0/N_887\);
    
    \signal_send_0/cnt_send_c19\ : NOR3B
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_send[19]_net_1\, C => \signal_send_0/N_71\, Y => 
        \signal_send_0/cnt_send_c19_net_1\);
    
    \signal_send_0/cnt_end[6]\ : DFN1C0
      port map(D => \signal_send_0/I_36\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt_end[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[47]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[46]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[47]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_a3\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/N_30\, B => 
        \ident_coreinst/IICE_INST/N_1551\, C => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[28]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[27]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[28]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[103]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[57]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[103]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_16[4]\ : NOR2B
      port map(A => \data_all[4]_net_1\, B => 
        \signal_send_0/N_967\, Y => \signal_send_0/N_522\);
    
    \signal_send_0/cnt[11]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[11]_net_1\);
    
    \single_recive_0/data_recive_RNO[7]\ : AO1
      port map(A => \single_recive_0/data_recive30\, B => 
        rx_uart_c, C => \single_recive_0/N_38_i_0\, Y => 
        \single_recive_0/data_recive_12[7]\);
    
    \signal_send_0/data_all_4_i[132]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_366\, C => 
        \signal_send_0/data_all_4_i_0[132]_net_1\, Y => N_1612);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[3]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[3]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[3]_net_1\);
    
    \signal_send_0/data_all_4_i_0[66]\ : AO1A
      port map(A => \data_all[66]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[66]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[6]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[5]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[6]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_12\ : NOR3A
      port map(A => \signal_send_0/N_1649\, B => 
        \signal_send_0/N_318\, C => \data_all[17]_net_1\, Y => 
        \signal_send_0/N_489\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[9]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[10]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[9]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[9]_net_1\);
    
    \signal_send_0/end_flag_RNIQ79N2\ : XA1B
      port map(A => \signal_send_0/cnt_flag_c2_net_1\, B => 
        \cnt_flag[3]_net_1\, C => \signal_send_0/un1_send_end\, Y
         => cnt_flag_n3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[68]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[92]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[68]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[140]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[140]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[140]\);
    
    \signal_send_0/data_all_4_i_a2[6]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[6]_net_1\, Y => \signal_send_0/N_858\);
    
    \signal_send_0/un5_idle_recive_4_0\ : AND3B
      port map(A => \cnt_recive[30]_net_1\, B => 
        \cnt_recive[29]_net_1\, C => 
        \signal_send_0/un5_idle_recive_3_0_net_1\, Y => 
        \signal_send_0/un5_idle_recive_4_net_1\);
    
    \signal_send_0/un38_data_send_buffer_648_i_m3\ : MX2
      port map(A => \signal_send_0/N_484_3\, B => 
        \signal_send_0/N_500_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_457\);
    
    \signal_send_0/m62_0_a3_3_0\ : NOR2A
      port map(A => \cnt_send[1]_net_1\, B => 
        \signal_send_0/N_138\, Y => 
        \signal_send_0/m62_0_a3_3_0_net_1\);
    
    \signal_send_0/cnt_send_n26\ : XA1B
      port map(A => \signal_send_0/cnt_send_c25\, B => 
        \cnt_send[26]_net_1\, C => N_378, Y => cnt_send_n26);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[110]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[110]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[110]\);
    
    \signal_send_0/cnt_recive_end_n7\ : XA1
      port map(A => receive_end2lto7, B => 
        \signal_send_0/cnt_recive_end_c6_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n7);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[35]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[34]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[35]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[50]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[50]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[50]\);
    
    \signal_send_0/data_all_4_i[2]\ : NOR3
      port map(A => \signal_send_0/N_871\, B => N_378, C => 
        \signal_send_0/N_872\, Y => N_319);
    
    \signal_send_0/data_send_buffer_3_1_13[3]\ : OR3
      port map(A => \signal_send_0/N_524\, B => 
        \signal_send_0/data_send_buffer_3_1_2[3]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_8[3]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_13[3]_net_1\);
    
    \signal_send_0/cnt_recive_end_n2_tz\ : AX1C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        \signal_send_0/cnt_recive_end_n2_tz_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[12]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_0[3]\ : NOR2B
      port map(A => \signal_send_0/N_457\, B => 
        \signal_send_0/N_1662\, Y => \signal_send_0/N_524\);
    
    \signal_send_0/cnt_recive_end_c5\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_c4_net_1\, B
         => \cnt_recive_end[5]_net_1\, Y => 
        \signal_send_0/cnt_recive_end_c5_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_4[6]\ : AO1
      port map(A => \data_all[158]_net_1\, B => 
        \signal_send_0/N_1683\, C => \signal_send_0/N_502\, Y => 
        \signal_send_0/data_send_buffer_3_1_4[6]_net_1\);
    
    \sys_rest_pad/U0/U1\ : CLKIO
      port map(A => \sys_rest_pad/U0/NET1\, Y => sys_rest_c);
    
    \signal_send_0/cnt_send_n17_i_a4\ : AOI1
      port map(A => \signal_send_0/cnt_m5_0_a2_6_net_1\, B => 
        \signal_send_0/cnt_m6_0_a2_4_0\, C => 
        \cnt_send[17]_net_1\, Y => \signal_send_0/N_102\);
    
    \signal_send_0/cnt_sendlde\ : OR2
      port map(A => \idle_send_down\, B => N_378, Y => cnt_sende);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIV7QR1\ : 
        AO1
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_tz\, 
        C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_0\);
    
    \signal_send_0/cnt_RNO[4]\ : XA1
      port map(A => \signal_send_0/N_9\, B => 
        \signal_send_0/cnt[4]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[125]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[124]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[125]\);
    
    \single_recive_0/data_recive_RNO_0[7]\ : NOR3A
      port map(A => \data_recive_buffer[7]\, B => 
        \single_recive_0/data_recive30\, C => N_378, Y => 
        \single_recive_0/N_38_i_0\);
    
    \signal_send_0/m77_0_461_tz_0\ : AO1A
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \signal_send_0/N_447\, C => 
        \signal_send_0/m77_0_a3_15_0_net_1\, Y => 
        \signal_send_0/m77_0_461_tz_0_net_1\);
    
    \signal_send_0/cnt_recive_n3_i_o2\ : OR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \signal_send_0/N_46\, Y => \signal_send_0/N_1491\);
    
    \signal_send_0/un12_cnt_send_12\ : XOR2
      port map(A => \cnt_send[12]_net_1\, B => 
        \cnt_recive[12]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_12_net_1\);
    
    \signal_send_0/un12_cnt_send_1_0_x2\ : XOR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_send[1]_net_1\, Y => \signal_send_0/N_359_i\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[90]\ : DFN1
      port map(D => \data_all[69]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[90]_net_1\);
    
    \signal_send_0/un5_idle_recive_1\ : NOR2
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_1_net_1\);
    
    \signal_send_0/cnt_m3_0_a2_1\ : NOR2B
      port map(A => \cnt_recive[19]_net_1\, B => 
        \cnt_recive[20]_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_1_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[65]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[64]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[65]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_7\ : OR2
      port map(A => \cnt_send[9]_net_1\, B => \cnt_send[5]_net_1\, 
        Y => \signal_send_0/un17_data_send_bufferlt30_22_7_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_6\ : XO1
      port map(A => \cnt_send[8]_net_1\, B => 
        \cnt_recive[8]_net_1\, C => \signal_send_0/N_1542\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_6_net_1\);
    
    \signal_send_0/un12_cnt_send_24\ : XOR2
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_24_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[43]\ : DFN1
      port map(D => \data_all[116]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[43]_net_1\);
    
    \cnt_delay[2]\ : DFN1E1C0
      port map(D => cnt_delay_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[2]_net_1\);
    
    \signal_send_0/m33_e\ : NOR3
      port map(A => I_14_3, B => I_12_3, C => 
        \cnt_send_0[0]_net_1\, Y => \signal_send_0/N_140_mux\);
    
    \signal_send_0/data_all_4_0_i_0[32]\ : AO1A
      port map(A => \data_all[32]_net_1\, B => 
        \signal_send_0/N_310\, C => N_378, Y => 
        \signal_send_0/data_all_4_0_i_0[32]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[2]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[2]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[27]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[27]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[27]_net_1\);
    
    \signal_send_0/tx_uart_RNO_4\ : NOR2B
      port map(A => \data_send_buffer[6]_net_1\, B => 
        \signal_send_0/tx_uart34\, Y => 
        \signal_send_0/data_send_m[6]\);
    
    \signal_send_0/parity_check_RNO_11\ : AO1A
      port map(A => \signal_send_0/parity_check_4\, B => 
        \signal_send_0/tx_uart31\, C => 
        \signal_send_0/parity_check_2_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_0\);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3_3[100]\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, Y
         => \signal_send_0/N_344_3\);
    
    \signal_send_0/m77_0\ : OR3
      port map(A => \signal_send_0/m77_0_460_net_1\, B => 
        \signal_send_0/m77_0_2_net_1\, C => \signal_send_0/N_399\, 
        Y => \data_send_buffer_3[5]\);
    
    \signal_send_0/data_all_4_i[57]\ : NOR3
      port map(A => \signal_send_0/N_765\, B => N_378, C => 
        \signal_send_0/N_766\, Y => N_223);
    
    \data_all[13]\ : DFN1E0C0
      port map(D => N_297, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[109]\ : DFN1
      port map(D => \data_all[50]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[109]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_1[2]\ : AO1
      port map(A => \data_all[130]_net_1\, B => 
        \signal_send_0/N_925\, C => 
        \signal_send_0/data_send_buffer_3_1_0[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_1[2]_net_1\);
    
    \signal_send_0/cnt_recive_n25\ : XA1B
      port map(A => \signal_send_0/cnt_recive_c24_net_1\, B => 
        \cnt_recive[25]_net_1\, C => N_378, Y => cnt_recive_n25);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[51]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[50]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[51]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[21]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[6]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[7]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[5]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[6]\);
    
    \signal_send_0/data_send_buffer_3_1_7_tz_1[0]\ : AO1
      port map(A => \data_all[16]_net_1\, B => 
        \signal_send_0/N_1649\, C => 
        \signal_send_0/data_send_buffer_3_1_a2_9_0[0]_net_1\, Y
         => \signal_send_0/data_send_buffer_3_1_7_tz_1[0]_net_1\);
    
    \signal_send_0/data_m2_e_1_1\ : NOR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/data_m2_e_1_1_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[53]\ : DFN1
      port map(D => \data_all[106]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[53]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_6\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_25\, 
        B => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_27\, 
        S => \ident_coreinst/IICE_INST/b12_PSyi_XlK_qHv\, Y => 
        \ident_coreinst/IICE_INST/b10_nYBzIXrKbK[1]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_18\ : OR3
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_3_net_1\, B
         => \signal_send_0/un17_data_send_bufferlt30_22_2_net_1\, 
        C => 
        \signal_send_0/un17_data_send_bufferlt30_22_12_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_18_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[10]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[10]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[10]\);
    
    \single_recive_0/cnt_RNI3K2D1[9]\ : NOR3A
      port map(A => \single_recive_0/m52_2\, B => 
        \single_recive_0/cnt[4]_net_1\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/m52_3\);
    
    \signal_send_0/data_all_4_i[60]\ : NOR3
      port map(A => \signal_send_0/N_759\, B => N_378, C => 
        \signal_send_0/N_760\, Y => N_217);
    
    \single_recive_0/cnt_RNO[5]\ : XA1
      port map(A => \single_recive_0/N_8\, B => 
        \single_recive_0/cnt[5]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[5]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[45]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[44]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[45]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[142]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[142]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[142]\);
    
    \signal_send_0/cnt_delay_n6\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c5_net_1\, B => 
        \cnt_delay[6]_net_1\, C => N_378, Y => cnt_delay_n6);
    
    \signal_send_0/un17_data_send_bufferlt30_22_8\ : OR2
      port map(A => \cnt_send[6]_net_1\, B => 
        \cnt_send[22]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_8_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[112]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[112]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[112]\);
    
    \signal_send_0/data_all_4_i[22]\ : NOR3
      port map(A => \signal_send_0/N_826\, B => N_378, C => 
        \signal_send_0/N_827\, Y => N_279);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[18]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[18]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[18]\);
    
    I_477 : CLKINT
      port map(A => m82, Y => cnt_recive_1_sqmuxa);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[88]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[87]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[88]\);
    
    \signal_send_0/data_all_4_i_a2_0[62]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_756\);
    
    \signal_send_0/cnt_flag_0_sqmuxa_1\ : NOR2A
      port map(A => \cnt_flag[2]_net_1\, B => \cnt_flag[1]_net_1\, 
        Y => \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3[101]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[101]_net_1\, Y => \signal_send_0/N_644\);
    
    \signal_send_0/send_end_0_sqmuxa_i\ : NOR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_29_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_28_net_1\, C => 
        \signal_send_0/N_1898\, Y => send_end_0_sqmuxa_i);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[44]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[45]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[43]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[44]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[139]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[139]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[139]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[103]\ : DFN1
      port map(D => \data_all[56]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[103]_net_1\);
    
    \signal_send_0/cnt_recive_n8_i_o3\ : OR2B
      port map(A => \signal_send_0/cnt_N_11_mux_0\, B => 
        \cnt_recive[7]_net_1\, Y => \signal_send_0/N_1503\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[64]\ : DFN1
      port map(D => \data_all[95]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[64]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[122]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[123]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[121]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[122]\);
    
    \signal_send_0/un11_receive_endlto5\ : OA1B
      port map(A => \signal_send_0/un11_receive_endlt4\, B => 
        \signal_send_0/un11_receive_endlto4_0_net_1\, C => 
        \cnt_delay[5]_net_1\, Y => 
        \signal_send_0/un11_receive_endlt7\);
    
    \signal_send_0/cnt_m3_0_a2_3\ : NOR3C
      port map(A => \cnt_recive[21]_net_1\, B => 
        \cnt_recive[16]_net_1\, C => 
        \signal_send_0/cnt_m3_0_a2_1_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_3_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[8]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[8]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_18\ : AND3
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[2]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[74]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[86]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[74]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[1]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[1]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[38]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[38]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[38]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[0]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]_net_1\);
    
    \signal_send_0/data_all_4_0_i[126]\ : NOR3
      port map(A => \signal_send_0/N_1832\, B => N_378, C => 
        \signal_send_0/N_1833\, Y => N_1726);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[147]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[148]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[146]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[147]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[104]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[104]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[104]\);
    
    \signal_send_0/cnt_recive_n15\ : XA1C
      port map(A => \signal_send_0/N_59\, B => 
        \cnt_recive[15]_net_1\, C => N_378, Y => cnt_recive_n15);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[24]\ : DFN1
      port map(D => \data_all[135]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[24]_net_1\);
    
    \signal_send_0/m77_0_a2_3_1\ : NOR2A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => \signal_send_0/N_1677\);
    
    \single_recive_0/data_recive_RNO[1]\ : AO1
      port map(A => \single_recive_0/data_recive24\, B => 
        rx_uart_c, C => \single_recive_0/N_27_i_0\, Y => 
        \single_recive_0/data_recive_12[1]\);
    
    \signal_send_0/un12_cnt_send_21\ : XOR2
      port map(A => \cnt_send[21]_net_1\, B => 
        \cnt_recive[21]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_21_net_1\);
    
    \single_recive_0/cnt[0]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme3\, 
        Q => \ident_coreinst/IICE_INST/b10_vbTtJX_Y2x\);
    
    \signal_send_0/cnt_RNI2AVD2[8]\ : NOR3C
      port map(A => \signal_send_0/un1_cnt_2\, B => 
        \signal_send_0/un1_cnt_1_0\, C => 
        \signal_send_0/un1_cnt_4\, Y => \signal_send_0/un1_cnt_5\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[28]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[28]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[28]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/un1_genblk9.b9_v_mzCDYXs_I_9\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs13\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum[0]\);
    
    \single_recive_0/data_recive_RNO_0[4]\ : NOR3A
      port map(A => \data_recive_buffer[4]\, B => 
        \single_recive_0/data_recive27\, C => N_378, Y => 
        \single_recive_0/data_recive_2_m[4]\);
    
    \signal_send_0/parity_check_RNO_0\ : OA1A
      port map(A => \signal_send_0/un1_tx_uart27\, B => 
        \signal_send_0/un1_tx_uart27_1_1\, C => 
        \signal_send_0/send_net_1\, Y => 
        \signal_send_0/parity_check_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_9\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_partial_sum[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[50]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[51]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[49]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[50]\);
    
    \signal_send_0/un5_idle_recive_16\ : NOR3C
      port map(A => \signal_send_0/un5_idle_recive_8\, B => 
        \signal_send_0/un5_idle_recive_7_net_1\, C => 
        \signal_send_0/un5_idle_recive_14_net_1\, Y => 
        \signal_send_0/un5_idle_recive_16_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[9]\ : AO1A
      port map(A => \data_all[9]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[9]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[0]\ : 
        DFN1E1P1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, PRE => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\);
    
    \single_recive_0/cnt_RNIU0FM1[2]\ : NOR3C
      port map(A => \single_recive_0/m42_1\, B => 
        \single_recive_0/m42_0\, C => \single_recive_0/m42_2\, Y
         => \single_recive_0/m42_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_0_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[35]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[34]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[33]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[32]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[31]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[30]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[29]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[28]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[27]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[26]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[25]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[24]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[23]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[22]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[21]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[20]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[19]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[18]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[35]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[34]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[33]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[32]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[31]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[30]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[29]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[28]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[27]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[26]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[25]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[24]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[23]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[22]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[21]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[20]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[19]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[18]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[3]\);
    
    \signal_send_0/data_all_4_i_0[70]\ : AO1A
      port map(A => \data_all[70]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[70]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_0[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\);
    
    \signal_send_0/un5_idle_recive_4\ : NOR2
      port map(A => \cnt_recive[24]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_4_0_net_1\);
    
    \signal_send_0/cnt_delay_n5\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c4_net_1\, B => 
        \cnt_delay[5]_net_1\, C => N_378, Y => cnt_delay_n5);
    
    \signal_send_0/data_all_4_i[131]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_804_2\, C => 
        \signal_send_0/data_all_4_i_0[131]_net_1\, Y => N_116);
    
    \data_all[0]\ : DFN1E0C0
      port map(D => N_323, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[0]_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_10_1\ : NOR2B
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[7]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_10_1_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_net_1\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\);
    
    un19_data_send_buffer_1_I_12 : XOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => I_12_3);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data_RNO[0]\ : 
        OR2
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, B
         => \ident_coreinst/IICE_INST/b5_iSWcC\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[0]\);
    
    \signal_send_0/m86\ : MX2
      port map(A => \signal_send_0/N_148_mux\, B => 
        \data_all[151]_net_1\, S => \signal_send_0/N_314\, Y => 
        \signal_send_0/N_1699\);
    
    \data_all[6]\ : DFN1E0C0
      port map(D => N_311, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[6]_net_1\);
    
    \data_all[117]\ : DFN1E0C0
      port map(D => N_1723, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[117]_net_1\);
    
    \cnt_recive[11]\ : DFN1E0C0
      port map(D => cnt_recive_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[11]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11_2[2]\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\, 
        B => \ident_coreinst/IICE_comm2iice[3]\, C => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b7_PSyi_9u\);
    
    \signal_send_0/data_all_4_0_i_a3[114]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[114]_net_1\, Y => \signal_send_0/N_1820\);
    
    \data_all[93]\ : DFN1E0C0
      port map(D => N_151, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[93]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[5]\);
    
    \signal_send_0/cnt_delay_c4\ : NOR2B
      port map(A => \signal_send_0/cnt_delay_c3_net_1\, B => 
        \cnt_delay[4]_net_1\, Y => 
        \signal_send_0/cnt_delay_c4_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIFL1C[3]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b13_PSyil9s_FMZ_L_2\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_191\);
    
    \signal_send_0/vld_send_fall_RNO\ : INV
      port map(A => \vld_send\, Y => \signal_send_0/vld_send_i\);
    
    \signal_send_0/m62_0_0_1\ : AO1
      port map(A => \signal_send_0/N_1659\, B => 
        \signal_send_0/m62_0_0_tz_net_1\, C => 
        \signal_send_0/m62_0_451_net_1\, Y => 
        \signal_send_0/m62_0_0_1_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[1]\ : NOR2
      port map(A => \signal_send_0/N_642_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_874\);
    
    \signal_send_0/data_send_buffer_3_1_10[4]\ : OR3
      port map(A => \signal_send_0/N_507\, B => 
        \signal_send_0/N_510\, C => 
        \signal_send_0/data_send_buffer_3_1_3[4]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_10[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[0]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[1]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[0]\);
    
    \signal_send_0/cnt_send_n15_i_o4\ : OR2B
      port map(A => \signal_send_0/cnt_send_c13_net_1\, B => 
        \cnt_send[14]_net_1\, Y => \signal_send_0/N_66\);
    
    \signal_send_0/send_end_0_sqmuxa_i_23\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_6_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_5_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_17_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_23_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[90]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_1801\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        CLK => sys_clk_c, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]_net_1\);
    
    \signal_send_0/m81_i\ : NOR3
      port map(A => \signal_send_0/m81_i_1_net_1\, B => 
        \signal_send_0/N_397\, C => \signal_send_0/m81_i_2_net_1\, 
        Y => N_1716);
    
    \signal_send_0/m77_0_a3_16_0\ : NOR2B
      port map(A => \data_all[13]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/m77_0_a3_16_0_net_1\);
    
    \signal_send_0/cnt_recive_n27\ : XA1B
      port map(A => \signal_send_0/cnt_recive_c26_net_1\, B => 
        \cnt_recive[27]_net_1\, C => N_378, Y => cnt_recive_n27);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_12\ : 
        XOR3
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_TMP[0]\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[1]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[18]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[19]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[18]_net_1\);
    
    \signal_send_0/end_flag_RNIMEB3\ : NOR3A
      port map(A => \cnt_delay[7]_net_1\, B => 
        \signal_send_0/end_flag_net_1\, C => \cnt_delay[5]_net_1\, 
        Y => \signal_send_0/un11_cnt_delay_4\);
    
    \signal_send_0/data_all_4_0_i_a3_0[96]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_1889\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b8_nUTQ_XlK\);
    
    \signal_send_0/data_send_buffer_3_1_a2_18[6]\ : NOR2B
      port map(A => \signal_send_0/N_1659\, B => 
        \signal_send_0/N_1649\, Y => \signal_send_0/N_927\);
    
    \data_all[112]\ : DFN1E0C0
      port map(D => N_1718, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[112]_net_1\);
    
    \data_all[157]\ : DFN1E0C0
      port map(D => N_1588, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[157]_net_1\);
    
    \signal_send_0/un5_idle_recive_23\ : NOR2
      port map(A => \signal_send_0/N_341\, B => 
        \cnt_recive[0]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_23_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIEQ7V[0]\ : OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_0\);
    
    \cnt_recive[1]\ : DFN1E0C0
      port map(D => N_35, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[1]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_13\ : NOR3A
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_1_net_1\, B => 
        \cnt_send[29]_net_1\, C => \cnt_send[30]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_13_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[68]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[69]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[67]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[68]\);
    
    \single_recive_0/un7_cnt_1_I_8\ : AND3
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/N_10\);
    
    \signal_send_0/data_all_4_i_0_a3_0[92]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_1805\);
    
    \signal_send_0/cnt_m3_0_a2_2_0_0\ : NOR2B
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[17]_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_2_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[151]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[151]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[151]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[35]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[125]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[35]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[100]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[60]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[100]\);
    
    un19_data_send_buffer_1_I_15 : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[88]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[88]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[88]\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIMR1A3\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, B => 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, Y
         => \ident_coreinst/IICE_comm2iice[10]\);
    
    \signal_send_0/m6\ : NOR2B
      port map(A => \signal_send_0/N_6_0\, B => 
        \cnt_send[3]_net_1\, Y => \signal_send_0/N_7_0\);
    
    \signal_send_0/data_all_4_i[68]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_367\, C => 
        \signal_send_0/data_all_4_i_0[68]_net_1\, Y => N_201);
    
    \cnt_flag[3]\ : DFN1E1C0
      port map(D => cnt_flag_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[136]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[135]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[136]\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIHJFN\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/b11_uRrc_WYOFjZ[0]\, B
         => \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi/b11_uRrc_9urXBb_0[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[5]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[6]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[4]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[5]\);
    
    \single_recive_0/cnt[7]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[7]_net_1\);
    
    \signal_send_0/cnt_RNIKHCDL1[10]\ : OR2
      port map(A => \signal_send_0/un1_tx_uart27_8\, B => 
        \signal_send_0/un1_tx_uart27_7\, Y => 
        \signal_send_0/un1_tx_uart27\);
    
    \signal_send_0/data_send_buffer_3_1_8[2]\ : AO1
      port map(A => \data_all[90]_net_1\, B => 
        \signal_send_0/N_1688\, C => \signal_send_0/N_552\, Y => 
        \signal_send_0/data_send_buffer_3_1_8[2]_net_1\);
    
    \data_all[152]\ : DFN1E0C0
      port map(D => N_1593, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[152]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[82]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[83]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[81]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[82]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[38]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[37]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[38]\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_ubTt3_Mxf_RNI1DT81\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_comm2iice[3]\, B => 
        \ident_coreinst/IICE_INST/b9_ubTt3_Mxf\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a1_2\);
    
    \signal_send_0/data_all_4_i_0[86]\ : NOR3
      port map(A => \signal_send_0/N_1792\, B => N_378, C => 
        \signal_send_0/N_1793\, Y => N_165);
    
    \signal_send_0/cnt_end[5]\ : DFN1C0
      port map(D => \signal_send_0/I_34\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt_end[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[103]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[102]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[103]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[36]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_1766\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]_net_1\);
    
    \signal_send_0/data_all_4_0_i[96]\ : NOR3
      port map(A => \signal_send_0/N_1888\, B => N_378, C => 
        \signal_send_0/N_1889\, Y => N_254);
    
    \data_all[82]\ : DFN1E0C0
      port map(D => N_173, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[82]_net_1\);
    
    \signal_send_0/cnt_send_n17_i\ : NOR3A
      port map(A => \signal_send_0/N_71\, B => 
        \signal_send_0/N_102\, C => N_378, Y => N_41);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[134]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[133]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[134]\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_3\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\, 
        B => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\, 
        S => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_25\);
    
    \signal_send_0/data_all_4_i_0[44]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_1736\, C => 
        \signal_send_0/data_all_4_i_0_0[44]_net_1\, Y => N_249);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[18]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[18]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[18]_net_1\);
    
    \data_all[16]\ : DFN1E0C0
      port map(D => N_291, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[16]_net_1\);
    
    \signal_send_0/m81_i_0\ : AO1A
      port map(A => \signal_send_0/un17_data_send_buffer\, B => 
        \signal_send_0/N_360\, C => N_378, Y => 
        \signal_send_0/m81_i_0_net_1\);
    
    \signal_send_0/m62_0_a3_5_0\ : NOR3A
      port map(A => \data_all[135]_net_1\, B => 
        \cnt_send_0[0]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        \signal_send_0/m62_0_a3_5_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[68]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[67]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[68]\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_5\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\, 
        B => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\, 
        S => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_27\);
    
    \signal_send_0/data_all_4_0_a2_0[121]\ : NOR3A
      port map(A => \data_recive_buffer[1]\, B => N_378, C => 
        \signal_send_0/N_320\, Y => \signal_send_0/N_656\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[4]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[20]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[20]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[20]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[24]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[25]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[24]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[24]_net_1\);
    
    \single_recive_0/data_recive[2]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[2]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[2]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_14\ : NOR3
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_send[26]_net_1\, C => \cnt_send[4]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_14_net_1\);
    
    \single_recive_0/cnt_RNI3K2D1[0]\ : NOR3B
      port map(A => \single_recive_0/m12_1\, B => 
        \single_recive_0/m85_1\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m85_3\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[11]\ : 
        AO1
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[11]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[11]_net_1\);
    
    \signal_send_0/cnt_RNIERVP[8]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart33_1\);
    
    \signal_send_0/data_send_buffer_3_1_0[4]\ : AO1
      port map(A => \data_all[132]_net_1\, B => 
        \signal_send_0/N_925\, C => \signal_send_0/N_513\, Y => 
        \signal_send_0/data_send_buffer_3_1_0[4]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[45]\ : DFN1
      port map(D => \data_all[114]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[45]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[47]\ : DFN1
      port map(D => \data_all[112]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[47]_net_1\);
    
    \cnt_send[12]\ : DFN1E1C0
      port map(D => cnt_send_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[12]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[63]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[64]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[62]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[63]\);
    
    \signal_send_0/un38_data_send_buffer_553_i_m3\ : MX2
      port map(A => \data_all[69]_net_1\, B => 
        \data_all[77]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_447\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[13]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[14]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[13]\);
    
    \single_recive_0/cnt[4]\ : DFN1C0
      port map(D => \single_recive_0/I_12\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[4]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[4]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[4]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[127]\ : DFN1
      port map(D => \data_all[32]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[127]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[3]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[3]\);
    
    \single_recive_0/data_recive_RNO_0[6]\ : AOI1B
      port map(A => \single_recive_0/m65_7\, B => 
        \single_recive_0/m65_6\, C => \data_recive_buffer[6]\, Y
         => \single_recive_0/m67_0\);
    
    \single_recive_0/cnt_RNO[11]\ : XA1
      port map(A => \single_recive_0/N_2\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[11]\);
    
    \cnt_send[23]\ : DFN1E1C0
      port map(D => cnt_send_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[23]_net_1\);
    
    \signal_send_0/cnt_m4_0_a2_3_3\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[7]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_3_3_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_16[3]\ : NOR2B
      port map(A => \data_all[35]_net_1\, B => 
        \signal_send_0/N_968\, Y => \signal_send_0/N_540\);
    
    \single_recive_0/cnt_RNIK1241_0[9]\ : NOR3B
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/m23_4\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m31_5\);
    
    \signal_send_0/data_all_4_i_0[77]\ : AO1A
      port map(A => \data_all[77]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[77]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[74]\ : DFN1
      port map(D => \data_all[85]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[74]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_2[0]\ : NOR2B
      port map(A => \data_all[112]_net_1\, B => 
        \signal_send_0/N_1675\, Y => \signal_send_0/N_565\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[48]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[47]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[48]\);
    
    \signal_send_0/cnt_end_RNO[7]\ : NOR2A
      port map(A => \signal_send_0/un1_cnt_end_1[8]\, B => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/cnt_end_5[7]\);
    
    \signal_send_0/un5_idle_recive_5_0\ : NOR2A
      port map(A => \signal_send_0/un5_idle_recive_9_net_1\, B
         => \cnt_recive[4]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_5_0_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[34]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_1879\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[55]\ : DFN1
      port map(D => \data_all[104]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[55]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[129]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[130]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[128]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[129]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[57]\ : DFN1
      port map(D => \data_all[102]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[57]_net_1\);
    
    \signal_send_0/OVER_12_7\ : OR3B
      port map(A => \signal_send_0/un5_idle_recive_9_net_1\, B
         => \signal_send_0/un5_idle_recive_3_0_net_1\, C => 
        \signal_send_0/OVER_12_4_net_1\, Y => 
        \signal_send_0/OVER_12_7_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[56]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[55]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[56]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[83]\ : DFN1
      port map(D => \data_all[76]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[83]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIEGED1_0\ : 
        NOR3A
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[2]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[1]\, 
        C => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[5]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\);
    
    \signal_send_0/data_all_4_i[133]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_646_2\, C => 
        \signal_send_0/data_all_4_i_0[133]_net_1\, Y => N_1611);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[95]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[95]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[95]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[154]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[6]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[154]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_8[4]\ : NOR2B
      port map(A => \data_all[92]_net_1\, B => 
        \signal_send_0/N_1688\, Y => \signal_send_0/N_514\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[19]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[20]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[18]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[19]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[136]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[136]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[136]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[85]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[75]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[85]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[120]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[120]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[120]\);
    
    \data_all[114]\ : DFN1E0C0
      port map(D => N_1720, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[114]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[8]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[8]\);
    
    \signal_send_0/cnt_end[2]\ : DFN1C0
      port map(D => \signal_send_0/I_42\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt_end[2]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1[3]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_13[3]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_12[3]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_14[3]_net_1\, Y => 
        \data_send_buffer_3[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[106]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[54]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[106]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNISVE8[4]\ : 
        NOR2
      port map(A => \ident_coreinst/IICE_comm2iice[0]\, B => 
        \ident_coreinst/IICE_comm2iice[2]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\);
    
    \data_all[103]\ : DFN1E0C0
      port map(D => N_1727, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[103]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_18[4]\ : NOR2B
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_887\, Y => \signal_send_0/N_1685\);
    
    \signal_send_0/cnt_send_c8_0_o3\ : OR2B
      port map(A => \signal_send_0/cnt_N_9_mux_0\, B => 
        \cnt_send[8]_net_1\, Y => \signal_send_0/N_1504\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[2]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[1]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[2]\);
    
    \signal_send_0/cnt_send_n8_i\ : XA1B
      port map(A => \cnt_send[8]_net_1\, B => 
        \signal_send_0/cnt_N_9_mux_0\, C => N_378, Y => N_1486);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[41]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[119]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[41]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[17]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[17]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[17]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[91]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[90]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[91]\);
    
    send_end : DFN1C0
      port map(D => send_end_0_sqmuxa_i, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \send_end\);
    
    \signal_send_0/data_send_buffer_3_1_12[2]\ : OR3
      port map(A => \signal_send_0/N_544\, B => 
        \signal_send_0/N_546\, C => \signal_send_0/N_541\, Y => 
        \signal_send_0/data_send_buffer_3_1_12[2]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_10[2]\ : AO1
      port map(A => \signal_send_0/N_1662\, B => 
        \signal_send_0/data_send_buffer_3_1_3_tz[2]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_3_0[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_10[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[3]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[157]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[3]\);
    
    \data_all[88]\ : DFN1E0C0
      port map(D => N_161, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[88]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_7\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_pog_array_0[0]\);
    
    \data_all[154]\ : DFN1E0C0
      port map(D => N_1591, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[154]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[86]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[87]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[85]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[86]\);
    
    \signal_send_0/un1_cnt_end_1_I_35\ : XOR2
      port map(A => \signal_send_0/cnt_end[4]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\, Y => 
        \signal_send_0/I_35\);
    
    \signal_send_0/parity_check_RNO_14\ : XA1A
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, C => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/parity_check_2_i_m\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[90]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[70]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[90]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[40]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[40]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[40]\);
    
    \signal_send_0/cnt_RNISOCR4_0[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart36_5\, B => 
        \signal_send_0/tx_uart36_4\, C => 
        \signal_send_0/tx_uart36_6\, Y => 
        \signal_send_0/tx_uart36\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_1\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        B => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\);
    
    \signal_send_0/data_m1_0_a2_2\ : NOR2A
      port map(A => \signal_send_0/m77_0_a2_1_net_1\, B => N_378, 
        Y => \signal_send_0/N_1659\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[76]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[84]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[76]\);
    
    \signal_send_0/data_all_4_i_a2[22]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[22]_net_1\, Y => 
        \signal_send_0/N_826\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b10_PKFoLX_Y2x\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[9]\ : DFN1
      port map(D => \data_all[150]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[9]_net_1\);
    
    \data_all[96]\ : DFN1E0C0
      port map(D => N_254, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[96]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[144]\ : AO1A
      port map(A => \data_all[144]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[144]_net_1\);
    
    \signal_send_0/data_all_4_i_a2[18]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[18]_net_1\, Y => 
        \signal_send_0/N_834\);
    
    \signal_send_0/data_all_4_0_i[103]\ : NOR3
      port map(A => \signal_send_0/N_648\, B => N_378, C => 
        \signal_send_0/N_1894\, Y => N_1727);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[37]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[38]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[36]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[37]\);
    
    \signal_send_0/un12_cnt_send_28\ : XOR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_28_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNIEBGP_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\, 
        B => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\);
    
    \signal_send_0/cnt_m6_0_a2_10_3\ : NOR2B
      port map(A => \cnt_send[9]_net_1\, B => \cnt_send[4]_net_1\, 
        Y => \signal_send_0/cnt_m6_0_a2_10_3_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[32]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[128]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[32]\);
    
    \signal_send_0/cnt_RNIHUVP_1[7]\ : NOR2
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/tx_uart32_5\);
    
    \signal_send_0/data_send_buffer_3_1_a2_7[2]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, B
         => \data_all[98]_net_1\, C => N_378, Y => 
        \signal_send_0/N_549\);
    
    \signal_send_0/data_send_buffer_3_1[0]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_7_0[0]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_6[0]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_8[0]_net_1\, Y => 
        \data_send_buffer_3[0]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_13[6]\ : NOR2B
      port map(A => \signal_send_0/N_1912\, B => 
        \signal_send_0/N_889\, Y => \signal_send_0/N_1673\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[122]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[122]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[122]\);
    
    \signal_send_0/data_all_4_i_0[157]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0_0[157]_net_1\, Y => N_1588);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[31]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[31]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[31]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[97]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_1892\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_RNI19VK\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/un1_in_en_1\);
    
    \signal_send_0/data_m1_0_a2\ : OA1A
      port map(A => \signal_send_0/N_1898_3\, B => 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, C => 
        \signal_send_0/data_m1_0_a2_3_net_1\, Y => 
        \signal_send_0/N_925\);
    
    \signal_send_0/cnt[9]\ : DFN1C0
      port map(D => \signal_send_0/I_26_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[9]_net_1\);
    
    \cnt_recive[24]\ : DFN1E0C0
      port map(D => cnt_recive_n24, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[24]_net_1\);
    
    \signal_send_0/cnt_delay_c5\ : NOR2B
      port map(A => \signal_send_0/cnt_delay_c4_net_1\, B => 
        \cnt_delay[5]_net_1\, Y => 
        \signal_send_0/cnt_delay_c5_net_1\);
    
    \signal_send_0/parity_check\ : DFN1E0P0
      port map(D => \signal_send_0/parity_check_10_iv\, CLK => 
        sys_clk_c, PRE => sys_rest_c, E => 
        \signal_send_0/parity_check_0_sqmuxa\, Q => 
        \signal_send_0/parity_check_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[74]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[74]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[74]\);
    
    \signal_send_0/data_all_4_i_0[82]\ : NOR3
      port map(A => \signal_send_0/N_1787\, B => N_378, C => 
        \signal_send_0/N_1788\, Y => N_173);
    
    \data_all[118]\ : DFN1E0C0
      port map(D => N_1724, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[118]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[80]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_1786\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[34]\ : DFN1
      port map(D => \data_all[125]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[34]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]_net_1\);
    
    \signal_send_0/cnt_recive_n19_0_o4\ : OR2A
      port map(A => \cnt_recive[18]_net_1\, B => 
        \signal_send_0/N_62\, Y => \signal_send_0/N_63\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[19]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[141]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[19]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[11]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[11]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[141]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[141]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[141]\);
    
    \signal_send_0/un38_data_send_buffer_612\ : MX2
      port map(A => \data_all[128]_net_1\, B => 
        \data_all[136]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_609_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[143]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[142]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[143]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[111]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[111]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[111]\);
    
    \signal_send_0/cnt_m5_1\ : XA1B
      port map(A => \signal_send_0/cnt_N_9_mux_1\, B => 
        \cnt_recive[22]_net_1\, C => N_378, Y => cnt_recive_n22);
    
    \signal_send_0/data_all_4_i_0_a3_0[82]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_1788\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[56]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[56]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[56]\);
    
    \single_recive_0/cnt_RNIU0FM1_0[2]\ : NOR3C
      port map(A => \single_recive_0/m76_2\, B => 
        \single_recive_0/m99_0\, C => \single_recive_0/m99_2\, Y
         => \single_recive_0/m99_4\);
    
    \data_all[19]\ : DFN1E0C0
      port map(D => N_285, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[19]_net_1\);
    
    \data_all[158]\ : DFN1E0C0
      port map(D => N_1587, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[158]_net_1\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_21\ : OR3
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_15_net_1\, B
         => \signal_send_0/un17_data_send_bufferlt30_22_14_net_1\, 
        C => 
        \signal_send_0/un17_data_send_bufferlt30_22_18_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_21_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[154]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[154]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[154]\);
    
    \signal_send_0/data_m1_e_4\ : NOR2A
      port map(A => \signal_send_0/N_887\, B => 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, Y => 
        \signal_send_0/data_m1_e_4_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[7]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[8]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[6]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[7]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[2]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[5]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_198_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[5]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[79]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[79]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[79]\);
    
    \signal_send_0/m77_0_a2_5\ : NOR2A
      port map(A => \signal_send_0/N_878\, B => 
        \signal_send_0/N_318\, Y => \signal_send_0/N_1662\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[158]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[159]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[157]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[158]\);
    
    \signal_send_0/tx_uart_RNO\ : OR3
      port map(A => \signal_send_0/tx_uart_11_iv_3\, B => 
        \signal_send_0/tx_uart_11_iv_2\, C => 
        \signal_send_0/tx_uart_11_iv_7\, Y => 
        \signal_send_0/tx_uart_11\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]_net_1\);
    
    \signal_send_0/data_all_4_i_0[43]\ : NOR3
      port map(A => \signal_send_0/N_485\, B => N_378, C => 
        \signal_send_0/N_486\, Y => N_251);
    
    \single_recive_0/data_recive_RNO[6]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m67_0\, C => 
        \single_recive_0/rx_uart_m_5\, Y => 
        \single_recive_0/data_recive_12[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[3]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[2]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[3]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_7[0]\ : NOR2B
      port map(A => \data_all[72]_net_1\, B => 
        \signal_send_0/N_1686\, Y => \signal_send_0/N_570\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_5\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[30]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[30]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[30]_net_1\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_a3_0\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/N_30\, B => 
        \ident_coreinst/IICE_INST/N_1551\, C => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\);
    
    \signal_send_0/data_all_4_0_i_a3[117]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[117]_net_1\, Y => \signal_send_0/N_1826\);
    
    \signal_send_0/cnt_flag_0_sqmuxa_0\ : NOR2A
      port map(A => \cnt_flag[4]_net_1\, B => \cnt_flag[3]_net_1\, 
        Y => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[65]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[65]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[65]\);
    
    \signal_send_0/data_all_4_i_o3_i_o2[159]\ : OR3A
      port map(A => 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\, B
         => \signal_send_0/OVER_net_1\, C => 
        \signal_send_0/N_292\, Y => \signal_send_0/N_1739\);
    
    \data_all[127]\ : DFN1E0C0
      port map(D => N_212, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[127]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[5]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[5]\);
    
    \signal_send_0/data_all_4_i_0[137]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[137]_net_1\, Y => N_1607);
    
    \signal_send_0/cnt_m6_0_a2_11_3\ : NOR3C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[6]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_11_3_net_1\);
    
    \signal_send_0/cnt[4]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[4]_net_1\);
    
    \single_recive_0/cnt_RNIV51I[9]\ : NOR2B
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/m85_1\);
    
    \signal_send_0/data_all_4_i_a2_0[58]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_764\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[28]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[28]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[28]_net_1\);
    
    \data_all[141]\ : DFN1E0C0
      port map(D => N_1603, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[141]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[81]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[81]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[81]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[16]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[16]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[16]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_12\ : NOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_12_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[163]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[162]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[163]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_7[6]\ : NOR2B
      port map(A => \data_all[110]_net_1\, B => 
        \signal_send_0/N_1673\, Y => \signal_send_0/N_502\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/comm_block_INST/b11_uRrc_WYOFjZ[0]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_11\ : XO1
      port map(A => \cnt_recive[20]_net_1\, B => 
        \cnt_send[20]_net_1\, C => 
        \signal_send_0/un12_cnt_send_19_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_11_net_1\);
    
    \signal_send_0/data_all_4_i_o2_0[23]\ : OR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => \signal_send_0/N_348\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[3]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[3]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[3]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[82]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[78]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[82]\);
    
    \signal_send_0/cnt_RNI0HMJ1[10]\ : NOR3C
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[10]_net_1\, C => 
        \signal_send_0/tx_uart34_1\, Y => 
        \signal_send_0/tx_uart34_3\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIHGPH2[1]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        C => \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, Y
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[17]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[18]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[17]\);
    
    \data_all[122]\ : DFN1E0C0
      port map(D => \data_all_4[122]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[122]_net_1\);
    
    \signal_send_0/cnt_recive_170\ : NOR2A
      port map(A => \cnt_recive[30]_net_1\, B => N_378, Y => 
        \signal_send_0/N_1058\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_4\ : 
        OA1C
      port map(A => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        B => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\);
    
    \single_recive_0/rx_fall2\ : DFN1C0
      port map(D => \single_recive_0/rx_fall1_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \single_recive_0/rx_fall2_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[51]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \signal_send_0/N_385\, Y => \signal_send_0/N_778\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_4\ : NOR2
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[24]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_4_net_1\);
    
    \signal_send_0/data_all_4_0_i[120]\ : NOR3
      port map(A => \signal_send_0/N_1830\, B => N_378, C => 
        \signal_send_0/N_1831\, Y => N_1725);
    
    \data_all[3]\ : DFN1E0C0
      port map(D => N_317, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[3]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_538\ : MX2
      port map(A => \data_all[54]_net_1\, B => 
        \data_all[62]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_535_3\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]\ : 
        OR3
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]_net_1\);
    
    \signal_send_0/data_all_4_0_a2_0[109]\ : NOR3A
      port map(A => \data_recive_buffer[5]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_678\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[9]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]_net_1\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_5\ : OR2
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[8]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_5_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[71]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[70]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[71]\);
    
    \data_send_buffer[4]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[4]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[85]\ : DFN1
      port map(D => \data_all[74]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[85]_net_1\);
    
    \single_recive_0/cnt_RNIHNFV1_0[2]\ : NOR3C
      port map(A => \single_recive_0/m76_2\, B => 
        \single_recive_0/m76_1\, C => \single_recive_0/m76_4\, Y
         => \single_recive_0/m76_7\);
    
    \signal_send_0/data_send_buffer_3_1_a2_10[0]\ : NOR3B
      port map(A => \signal_send_0/m77_0_a2_3_0_net_1\, B => 
        \signal_send_0/N_1656\, C => N_378, Y => 
        \signal_send_0/N_1660\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[87]\ : DFN1
      port map(D => \data_all[72]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[87]_net_1\);
    
    \signal_send_0/cnt_RNIIPDJ1[11]\ : NOR3B
      port map(A => \signal_send_0/un1_cnt_6\, B => 
        \signal_send_0/cnt[11]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart37_4\);
    
    \signal_send_0/cnt_m3_0_a2_2_4\ : NOR3C
      port map(A => \signal_send_0/cnt_m3_0_a2_2_1_net_1\, B => 
        \signal_send_0/cnt_m3_0_a2_2_0_net_1\, C => 
        \signal_send_0/cnt_m3_0_a2_2_2_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_2_4_net_1\);
    
    \single_recive_0/cnt_RNI8TCI_0[10]\ : NOR2A
      port map(A => \single_recive_0/cnt[5]_net_1\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/m36_0\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_5\ : NOR3B
      port map(A => \signal_send_0/N_1677\, B => 
        \signal_send_0/N_889\, C => \data_all[73]_net_1\, Y => 
        \signal_send_0/N_477\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[70]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[71]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[69]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[70]\);
    
    \signal_send_0/end_flag_RNI2D3ID\ : OR2
      port map(A => \signal_send_0/un3_end_flag\, B => N_378, Y
         => cnt_flage);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[28]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[29]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[27]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[28]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[9]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[10]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[9]\);
    
    \data_all[99]\ : DFN1E0C0
      port map(D => N_266, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[99]_net_1\);
    
    \data_all[54]\ : DFN1E0C0
      port map(D => N_229, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[54]_net_1\);
    
    \signal_send_0/cnt_RNIHBVJ1[4]\ : NOR3B
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/tx_uart36_3\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart36_5\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[14]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[14]_net_1\);
    
    \signal_send_0/cnt_delay_35_0\ : NOR2B
      port map(A => \cnt_delay[6]_net_1\, B => 
        \signal_send_0/cnt_delay_c5_net_1\, Y => 
        \signal_send_0/cnt_delay_35_0_net_1\);
    
    \signal_send_0/data_all_4_i[159]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0[159]_net_1\, Y => N_1586);
    
    \cnt_send[0]\ : DFN1E1C0
      port map(D => N_24_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[0]_net_1\);
    
    \signal_send_0/cnt_recive_c27\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_c26_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => 
        \signal_send_0/cnt_recive_c27_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[142]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[18]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[142]\);
    
    \signal_send_0/cnt_RNISOCR4[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart33_4\, B => 
        \signal_send_0/tx_uart33_3_0\, C => 
        \signal_send_0/tx_uart33_5\, Y => 
        \signal_send_0/tx_uart33\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY_net_1\);
    
    \cnt_send[28]\ : DFN1E1C0
      port map(D => cnt_send_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[28]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[90]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[91]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[89]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[90]\);
    
    \cnt_send[26]\ : DFN1E1C0
      port map(D => cnt_send_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[26]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[51]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[109]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[51]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[21]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[139]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[21]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[131]\ : DFN1
      port map(D => \data_all[28]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[131]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[120]\ : DFN1
      port map(D => \data_all[39]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[120]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[96]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[95]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[96]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[10]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]_net_1\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_20\ : OR3
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_9_net_1\, B
         => \signal_send_0/un17_data_send_bufferlt30_22_8_net_1\, 
        C => 
        \signal_send_0/un17_data_send_bufferlt30_22_17_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_20_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[52]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[52]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[52]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[122]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[38]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[122]\);
    
    \signal_send_0/m77_0_a2_4\ : NOR3B
      port map(A => \signal_send_0/m77_0_a2_3_0_net_1\, B => 
        \signal_send_0/N_1680\, C => N_378, Y => 
        \signal_send_0/N_1912\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[154]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[155]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[153]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[154]\);
    
    \signal_send_0/m81_i_2\ : OA1
      port map(A => \signal_send_0/m81_i_3_tz_net_1\, B => 
        \signal_send_0/N_318\, C => \signal_send_0/N_1917\, Y => 
        \signal_send_0/m81_i_2_net_1\);
    
    \data_all[61]\ : DFN1E0C0
      port map(D => N_215, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[61]_net_1\);
    
    \signal_send_0/data_all_4_i_a2[4]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[4]_net_1\, Y => \signal_send_0/N_867\);
    
    \signal_send_0/cnt_m4_0_a2_1\ : NOR2B
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[17]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_1_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_7[6]\ : OR3
      port map(A => \signal_send_0/N_497\, B => 
        \signal_send_0/N_498\, C => 
        \signal_send_0/data_send_buffer_3_1_4[6]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_7[6]_net_1\);
    
    \cnt_send[4]\ : DFN1E1C0
      port map(D => cnt_send_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[4]_net_1\);
    
    \data_all[9]\ : DFN1E0C0
      port map(D => N_305, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[9]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[65]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[95]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[65]\);
    
    \signal_send_0/data_all_4_i_a2_0[48]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \signal_send_0/un52_data_all[48]\, Y => 
        \signal_send_0/N_784\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[47]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[48]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[46]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[47]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[8]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[8]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[18]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[101]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[59]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[101]\);
    
    \signal_send_0/cnt_recive_c26\ : NOR3B
      port map(A => \signal_send_0/cnt_recive_c25_0_net_1\, B => 
        \cnt_recive[26]_net_1\, C => \signal_send_0/N_72\, Y => 
        \signal_send_0/cnt_recive_c26_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3[98]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[98]_net_1\, Y => \signal_send_0/N_1893\);
    
    \signal_send_0/cnt_RNO[2]\ : NOR2B
      port map(A => \signal_send_0/I_7_0\, B => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[2]\);
    
    \signal_send_0/data_all_4_i_0_0[153]\ : AO1A
      port map(A => \data_all[153]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[153]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[103]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[103]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[103]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[14]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[15]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[14]\);
    
    \cnt_recive_end[0]\ : DFN1C0
      port map(D => cnt_recive_end_n0, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[23]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[24]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[22]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[23]\);
    
    \signal_send_0/m77_0_463_tz_1\ : AO1
      port map(A => \data_all[109]_net_1\, B => 
        \signal_send_0/N_889\, C => 
        \signal_send_0/m77_0_a3_7_0_net_1\, Y => 
        \signal_send_0/m77_0_463_tz_1_net_1\);
    
    \signal_send_0/cnt_end_RNO[3]\ : NOR2A
      port map(A => \signal_send_0/un1_cnt_end_1[4]\, B => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/cnt_end_5[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk9.b9_v_mzCDYXs13_0_a3_1\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b9_OFWNT9_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \genblk9.b9_v_mzCDYXs13_0_a3_1\);
    
    \signal_send_0/m62_0_4_tz_0\ : AO1
      port map(A => \data_all[39]_net_1\, B => 
        \signal_send_0/N_887\, C => 
        \signal_send_0/m62_0_a3_10_0_net_1\, Y => 
        \signal_send_0/m62_0_4_tz_0_net_1\);
    
    \signal_send_0/data_all_4_i_0[11]\ : OA1B
      port map(A => \signal_send_0/N_316\, B => 
        \data_recive_buffer[3]\, C => 
        \signal_send_0/data_all_4_i_0_0[11]_net_1\, Y => N_301);
    
    \data_all[124]\ : DFN1E0C0
      port map(D => \data_all_4[124]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[124]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_3_0\ : NOR2
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_3\);
    
    \data_all[74]\ : DFN1E0C0
      port map(D => N_189, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[74]_net_1\);
    
    \single_recive_0/idle_recive\ : DFN1C0
      port map(D => \single_recive_0/recive_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => idle_recive);
    
    \signal_send_0/data_send_buffer_1_sqmuxa\ : NOR2
      port map(A => \vld_send\, B => N_378, Y => 
        data_send_buffer_1_sqmuxa);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_2\ : 
        NOR3
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b13_nAzGfFM_sLsv3_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[12]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[12]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[12]\);
    
    \single_recive_0/cnt_RNIIADR[10]\ : NOR3B
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_103_mux\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[141]\ : DFN1
      port map(D => \data_all[18]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[141]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[10]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[10]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[139]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[21]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[139]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[31]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[32]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[30]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[31]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[35]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[36]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[34]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[35]\);
    
    \data_all[130]\ : DFN1E0C0
      port map(D => N_118, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[130]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/ttdo\);
    
    \signal_send_0/data_all_4_i[53]\ : NOR3
      port map(A => \signal_send_0/N_773\, B => N_378, C => 
        \signal_send_0/N_774\, Y => N_231);
    
    \signal_send_0/data_all_4_0_i_a3_0[115]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[3]\, Y => \signal_send_0/N_1823\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[144]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[144]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[144]\);
    
    \signal_send_0/cnt_m4_0_a2_3\ : NOR3C
      port map(A => \signal_send_0/cnt_m4_0_a2_3_3_net_1\, B => 
        \cnt_send[0]_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_3_4_net_1\, Y => 
        \signal_send_0/cnt_N_9_mux_0\);
    
    \signal_send_0/data_all_4_i_a2[53]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[53]_net_1\, Y => \signal_send_0/N_773\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[10]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[10]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[10]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[5]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[5]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[114]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[114]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[114]\);
    
    \signal_send_0/cnt_send_n6_i_o3\ : OR3C
      port map(A => \cnt_send[4]_net_1\, B => 
        \signal_send_0/N_7_0\, C => \cnt_send[5]_net_1\, Y => 
        \signal_send_0/N_1498\);
    
    \signal_send_0/data_send_buffer_3_1_a2_11[2]\ : NOR2B
      port map(A => \data_all[66]_net_1\, B => 
        \signal_send_0/N_1685\, Y => \signal_send_0/N_553\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[4]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[3]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[26]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[26]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[26]\);
    
    \data_all[33]\ : DFN1E0C0
      port map(D => N_236, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[33]_net_1\);
    
    \signal_send_0/un12_cnt_send_4_0_x2\ : XOR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => \signal_send_0/N_79_i\);
    
    \signal_send_0/data_all_4_i_0[128]\ : AO1A
      port map(A => \data_all[128]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[128]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[11]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[12]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[11]\);
    
    \cnt_recive_end[7]\ : DFN1C0
      port map(D => cnt_recive_end_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto7);
    
    \data_all[65]\ : DFN1E0C0
      port map(D => N_207, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[65]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[18]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[18]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[18]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[1]\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\);
    
    \signal_send_0/cnt_recive_n26_tz\ : AX1
      port map(A => \signal_send_0/N_72\, B => 
        \signal_send_0/cnt_recive_c25_0_net_1\, C => 
        \cnt_recive[26]_net_1\, Y => 
        \signal_send_0/cnt_recive_n26_tz_net_1\);
    
    \signal_send_0/tx_uart_RNO_7\ : AO1B
      port map(A => \data_send_buffer[2]_net_1\, B => 
        \signal_send_0/tx_uart30\, C => 
        \signal_send_0/un1_tx_uart42\, Y => 
        \signal_send_0/tx_uart_11_iv_4\);
    
    \signal_send_0/m81_i_a3_3_0\ : NOR2A
      port map(A => \signal_send_0/N_1649\, B => 
        \data_all[145]_net_1\, Y => 
        \signal_send_0/m81_i_a3_3_0_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2[2]\ : NOR3C
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_1[2]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_a2_0[2]\, C => 
        \signal_send_0/N_1674\, Y => \signal_send_0/N_541\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[3]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[3]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[3]_net_1\);
    
    \signal_send_0/cnt_RNISOCR4[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart30_4\, B => 
        \signal_send_0/tx_uart30_3\, C => 
        \signal_send_0/tx_uart30_5\, Y => 
        \signal_send_0/tx_uart30\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[138]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[139]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[137]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[138]\);
    
    \single_recive_0/rx_down\ : DFN1C0
      port map(D => \single_recive_0/rx_down_1\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/rx_down_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[106]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[105]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[106]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[77]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[77]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[77]\);
    
    \signal_send_0/cnt_RNIUOVJ1[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/tx_uart30_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart30_3\);
    
    \signal_send_0/cnt_m5_0_a2_5\ : NOR3C
      port map(A => \cnt_send[2]_net_1\, B => 
        \signal_send_0/cnt_m5_0_a2_1_net_1\, C => 
        \cnt_send[0]_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_5_net_1\);
    
    \signal_send_0/data_all_4_i_a2[84]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[84]_net_1\, Y => \signal_send_0/N_711\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[91]\ : DFN1
      port map(D => \data_all[68]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[91]_net_1\);
    
    \data_all[106]\ : DFN1E0C0
      port map(D => \data_all_4[106]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[106]_net_1\);
    
    \signal_send_0/data_all_4_i_0_o2[136]\ : OR3A
      port map(A => 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\, B
         => \signal_send_0/OVER_net_1\, C => 
        \signal_send_0/N_346\, Y => \signal_send_0/N_306\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[7]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[7]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[30]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[31]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[30]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[30]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[24]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[24]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[24]_net_1\);
    
    \data_all[115]\ : DFN1E0C0
      port map(D => N_1721, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[115]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[56]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_768\);
    
    \signal_send_0/un38_data_send_buffer_506\ : MX2
      port map(A => \data_all[22]_net_1\, B => 
        \data_all[30]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_503_3\);
    
    \data_all[128]\ : DFN1E0C0
      port map(D => N_122, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[128]_net_1\);
    
    \signal_send_0/data_all_4_i_o3[71]\ : OR3A
      port map(A => \signal_send_0/un5_idle_recive_23_net_1\, B
         => \signal_send_0/OVER_net_1\, C => 
        \signal_send_0/data_all_4_i_o2_0_0_0[71]_net_1\, Y => 
        \signal_send_0/N_367\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[2]\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]\, 
        S => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/Y\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[11]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[10]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[11]\);
    
    \signal_send_0/cnt_recive_n26\ : NOR2A
      port map(A => \signal_send_0/cnt_recive_n26_tz_net_1\, B
         => N_378, Y => cnt_recive_n26);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[104]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[103]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[104]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[121]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[121]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[121]\);
    
    \signal_send_0/m77_0_461_tz\ : AO1
      port map(A => \data_all[93]_net_1\, B => 
        \signal_send_0/N_1645\, C => 
        \signal_send_0/m77_0_461_tz_0_net_1\, Y => 
        \signal_send_0/N_2924_tz\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[20]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_504\ : MX2
      port map(A => \data_all[20]_net_1\, B => 
        \data_all[28]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_501_3\);
    
    \data_all[155]\ : DFN1E0C0
      port map(D => N_1590, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[155]_net_1\);
    
    \signal_send_0/cnt_recive_n17_0_o4\ : OR2B
      port map(A => \signal_send_0/cnt_N_13_mux\, B => 
        \cnt_recive[16]_net_1\, Y => \signal_send_0/N_61\);
    
    \data_all[149]\ : DFN1E0C0
      port map(D => N_1595, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[149]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_5[4]\ : NOR2B
      port map(A => \data_all[116]_net_1\, B => 
        \signal_send_0/N_1675\, Y => \signal_send_0/N_511\);
    
    \signal_send_0/send_end_0_sqmuxa_i_0\ : XO1
      port map(A => \cnt_send[30]_net_1\, B => 
        \cnt_recive[30]_net_1\, C => 
        \signal_send_0/un12_cnt_send_29_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_0_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[10]\ : AO1A
      port map(A => \data_all[10]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[10]_net_1\);
    
    \signal_send_0/cnt[1]\ : DFN1C0
      port map(D => \signal_send_0/I_5_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[1]_net_1\);
    
    \signal_send_0/data_all_4_i_a2[7]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[7]_net_1\, Y => \signal_send_0/N_856\);
    
    \signal_send_0/un12_cnt_send_23\ : XOR2
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_23_net_1\);
    
    \signal_send_0/cnt_recive_c13_0_o4\ : OR2A
      port map(A => \cnt_recive[13]_net_1\, B => 
        \signal_send_0/N_57\, Y => \signal_send_0/N_58\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIK62C2[1]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_86\);
    
    \signal_send_0/cnt_recive_n28\ : XA1B
      port map(A => \signal_send_0/cnt_recive_c27_net_1\, B => 
        \cnt_recive[28]_net_1\, C => N_378, Y => cnt_recive_n28);
    
    \data_all[10]\ : DFN1E0C0
      port map(D => N_303, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[10]_net_1\);
    
    \signal_send_0/data_all_4_0_i_0[35]\ : AO1A
      port map(A => \data_all[35]_net_1\, B => 
        \signal_send_0/N_310\, C => N_378, Y => 
        \signal_send_0/data_all_4_0_i_0[35]_net_1\);
    
    \data_all[24]\ : DFN1E0C0
      port map(D => N_275, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[24]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[135]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[135]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[135]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_3[6]\ : NOR2B
      port map(A => \data_all[142]_net_1\, B => 
        \signal_send_0/N_1682\, Y => \signal_send_0/N_498\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11[2]\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_comm2iice[4]\, B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, C => 
        \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b8_ubTt3_YG\);
    
    \data_send_buffer[0]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[76]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[75]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[76]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[46]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[46]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[46]\);
    
    \signal_send_0/m62_0_a3_2\ : NOR3B
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_1730\, C => \cnt_send[1]_net_1\, Y => 
        \signal_send_0/N_421\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[60]\ : DFN1
      port map(D => \data_all[99]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[60]_net_1\);
    
    \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b7_PSyi_9u\, B => 
        \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4_net_1\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]_net_1\);
    
    \signal_send_0/data_all_4_i_0[24]\ : NOR3
      port map(A => \signal_send_0/N_1757\, B => N_378, C => 
        \signal_send_0/N_458\, Y => N_275);
    
    \single_recive_0/cnt_RNI291I[7]\ : NOR2B
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/m42_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_RNI14UM[0]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]_net_1\, 
        B => \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, 
        Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m_0[0]\);
    
    \signal_send_0/cnt_RNI7KVP[2]\ : NOR2
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/un1_cnt_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[127]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[128]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[126]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[127]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[62]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[98]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[62]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[101]\ : DFN1
      port map(D => \data_all[58]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[101]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\);
    
    \signal_send_0/cnt_recive_n16\ : XA1B
      port map(A => \signal_send_0/cnt_N_13_mux\, B => 
        \cnt_recive[16]_net_1\, C => N_378, Y => cnt_recive_n16);
    
    \cnt_send[29]\ : DFN1E1C0
      port map(D => cnt_send_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[29]_net_1\);
    
    \single_recive_0/cnt_RNIR8241[6]\ : NOR3A
      port map(A => \single_recive_0/m23_2\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/m23_6\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[1]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[1]\);
    
    \signal_send_0/cnt_m4_0_a2_11\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_4_0\, B => 
        \signal_send_0/cnt_m5_0_a2_6_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_11_5_net_1\, Y => 
        \signal_send_0/cnt_N_10_mux\);
    
    \signal_send_0/m36_0\ : NOR2
      port map(A => I_17_1, B => I_20_1, Y => 
        \signal_send_0/m36_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[5]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\);
    
    \signal_send_0/data_m1_e_1\ : NOR2A
      port map(A => \signal_send_0/N_887\, B => 
        \signal_send_0/N_318\, Y => \signal_send_0/N_1898_3\);
    
    \signal_send_0/cnt_end[1]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_5[1]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[1]_net_1\);
    
    \signal_send_0/data_all_4_i[79]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[79]_net_1\, Y => N_179);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[20]\ : DFN1
      port map(D => \data_all[139]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[20]_net_1\);
    
    \signal_send_0/m77_0_a3_1_1_0\ : OA1A
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[29]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        \signal_send_0/m77_0_a3_1_1_0_net_1\);
    
    \signal_send_0/end_flag_RNO_0\ : NOR2
      port map(A => \signal_send_0/un2_cnt\, B => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/end_flag_2_sqmuxa\);
    
    \signal_send_0/data_all_4_i_a2[58]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[58]_net_1\, Y => \signal_send_0/N_763\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[14]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[14]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[14]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[8]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]_net_1\);
    
    \signal_send_0/data_all_4_i[8]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0[8]_net_1\, Y => N_307);
    
    \signal_send_0/data_send_buffer_3_1_a2_13[2]\ : NOR3C
      port map(A => \signal_send_0/N_1649\, B => 
        \signal_send_0/N_1660\, C => \data_all[50]_net_1\, Y => 
        \signal_send_0/N_555\);
    
    \signal_send_0/data_all_4_0_a2_1_i[127]\ : OR2A
      port map(A => \signal_send_0/N_320\, B => N_378, Y => 
        \signal_send_0/N_20\);
    
    \signal_send_0/cnt_m6_0_a2_7_2\ : NOR2B
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[7]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_7_2_net_1\);
    
    \signal_send_0/data_all_4_i[23]\ : NOR3
      port map(A => \signal_send_0/N_824\, B => N_378, C => 
        \signal_send_0/N_825\, Y => N_277);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]_net_1\);
    
    \signal_send_0/data_all_4_i_0[29]\ : NOR3
      port map(A => \signal_send_0/N_1758\, B => N_378, C => 
        \signal_send_0/N_1760\, Y => N_265);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_5[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\);
    
    \data_all[1]\ : DFN1E0C0
      port map(D => N_321, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[1]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[79]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[81]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[79]\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIS0TQ2_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_fFfsjX_0\, 
        B => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\, Y
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\);
    
    \signal_send_0/data_all_4_i[4]\ : NOR3
      port map(A => \signal_send_0/N_867\, B => N_378, C => 
        \signal_send_0/N_868\, Y => N_315);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3_0_0[100]\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, Y
         => \signal_send_0/N_344_0\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b10_OFWNT9_Y2x_RNIMPH41\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b10_OFWNT9_Y2x\, B
         => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\, 
        C => \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[134]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[135]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[133]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[134]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[22]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[22]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[22]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_15[3]\ : NOR2B
      port map(A => \data_all[43]_net_1\, B => 
        \signal_send_0/N_971\, Y => \signal_send_0/N_539\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[108]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[108]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[108]\);
    
    \signal_send_0/un5_idle_recive_10\ : NOR2
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[11]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_10_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO_0[2]\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[2]\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[2]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_91\);
    
    \single_recive_0/un7_cnt_1_I_28\ : XOR2
      port map(A => \single_recive_0/N_3\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/I_28\);
    
    \signal_send_0/m77_0_a3_12_0\ : NOR2B
      port map(A => \data_all[45]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/m77_0_a3_12_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[138]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[22]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[138]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[145]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[15]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[145]\);
    
    \single_recive_0/cnt_RNIT31I[8]\ : NOR2
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m36_2\);
    
    \signal_send_0/data_send_buffer_3_1_a2_9_0[0]\ : NOR2B
      port map(A => \data_all[24]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_9_0[0]_net_1\);
    
    \signal_send_0/data_all_4_i[74]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[74]_net_1\, Y => N_189);
    
    \signal_send_0/tx_uart_RNO_6\ : AO1
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/tx_uart31\, C => 
        \signal_send_0/data_send_m[1]\, Y => 
        \signal_send_0/tx_uart_11_iv_0\);
    
    \signal_send_0/un12_cnt_send_26\ : XOR2
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_send[26]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_26_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_a2\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\, 
        C => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/N_30\);
    
    \signal_send_0/data_send_buffer_3_1_13[2]\ : OR3
      port map(A => \signal_send_0/N_553\, B => 
        \signal_send_0/data_send_buffer_3_1_1[2]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_6[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_13[2]_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_10_5\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[5]_net_1\, 
        C => \cnt_send[3]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_10_5_net_1\);
    
    \single_recive_0/cnt_RNIPV0I[1]\ : NOR2B
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/m36_1\);
    
    \signal_send_0/data_all_4_i_a2_0[21]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_386\, Y => 
        \signal_send_0/N_829\);
    
    \signal_send_0/cnt_m6_0_a2_11_1\ : NOR2B
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_11_1_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIFR7V[1]\ : NOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[1]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\);
    
    \signal_send_0/data_send_buffer_3_1_15[4]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_9[4]_net_1\, B => 
        \signal_send_0/N_522\, C => 
        \signal_send_0/data_send_buffer_3_1_12[4]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_15[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[108]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[109]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[107]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[108]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[0]\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[125]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[35]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[125]\);
    
    \cnt_send[25]\ : DFN1E1C0
      port map(D => cnt_send_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[25]_net_1\);
    
    \signal_send_0/data_all_4_i_0[75]\ : AO1A
      port map(A => \data_all[75]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[75]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[5]\ : 
        DFN1
      port map(D => \ident_coreinst/IICE_INST/b5_iSWcC\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[5]_net_1\);
    
    \data_all[90]\ : DFN1E0C0
      port map(D => N_157, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[90]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_97\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[41]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[42]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[40]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[41]\);
    
    \signal_send_0/m137\ : MX2C
      port map(A => \data_all[23]_net_1\, B => 
        \data_all[31]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_138\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[45]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[46]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[44]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[45]\);
    
    \signal_send_0/cnt_RNISOCR4_2[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart34_4_0\, B => 
        \signal_send_0/tx_uart34_3\, C => 
        \signal_send_0/tx_uart34_5\, Y => 
        \signal_send_0/tx_uart34\);
    
    \single_recive_0/data_recive[0]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[0]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[0]\);
    
    \cnt_recive_end[5]\ : DFN1C0
      port map(D => cnt_recive_end_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[5]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]_net_1\);
    
    \single_recive_0/rx_fall1\ : DFN1C0
      port map(D => \single_recive_0/rx_fall_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \single_recive_0/rx_fall1_net_1\);
    
    \data_all[36]\ : DFN1E0C0
      port map(D => N_259, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[36]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3[115]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[115]_net_1\, Y => \signal_send_0/N_1822\);
    
    \signal_send_0/cnt_send_c27\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c26_net_1\, B => 
        \cnt_send[27]_net_1\, Y => 
        \signal_send_0/cnt_send_c27_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[1]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_12_1\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[146]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[145]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[146]\);
    
    \signal_send_0/parity_check_RNO_10\ : NOR3B
      port map(A => \signal_send_0/tx_uart32_6_0\, B => 
        \signal_send_0/tx_uart32_7\, C => 
        \signal_send_0/parity_check_5\, Y => 
        \signal_send_0/parity_check_5_i_m\);
    
    \signal_send_0/data_all_4_0_i_a3_0[117]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1827\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[122]\ : DFN1
      port map(D => \data_all[37]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[122]_net_1\);
    
    \signal_send_0/m77_m3_0_a2_0_0_1\ : NOR3
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send[28]_net_1\, C => N_378, Y => 
        \signal_send_0/m77_m3_0_a2_0_0_0\);
    
    \signal_send_0/data_all_4_0_i_a3[113]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[113]_net_1\, Y => \signal_send_0/N_1817\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[2]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[3]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[1]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[2]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNIPB1S5\ : 
        OA1
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_0\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_0\, 
        C => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_iice2comm\);
    
    \single_recive_0/cnt[5]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[5]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[5]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3[37]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[37]_net_1\, Y => \signal_send_0/N_1882\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[14]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[27]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[158]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[2]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[14]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[14]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[14]_net_1\);
    
    \signal_send_0/un11_receive_endlto7\ : OR3B
      port map(A => \cnt_delay[6]_net_1\, B => 
        \cnt_delay[7]_net_1\, C => 
        \signal_send_0/un11_receive_endlt7\, Y => 
        \signal_send_0/un11_receive_end\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[16]\ : DFN1
      port map(D => \data_all[143]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[16]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNI702K2[3]\ : 
        OA1B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[144]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[143]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[144]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_17[6]\ : NOR2B
      port map(A => \signal_send_0/N_1659\, B => 
        \signal_send_0/N_889\, Y => \signal_send_0/N_1682\);
    
    \signal_send_0/data_all_4_0_i[34]\ : NOR3
      port map(A => \signal_send_0/N_1878\, B => N_378, C => 
        \signal_send_0/N_1879\, Y => N_238);
    
    \signal_send_0/data_all_4_0[109]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[109]_net_1\, C => \signal_send_0/N_678\, Y => 
        \data_all_4[109]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[42]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[42]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[42]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[92]\ : DFN1
      port map(D => \data_all[67]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[92]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_1\ : NOR2
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[25]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_1_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[10]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[11]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[10]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[153]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[153]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[153]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b13_oRB_MqCD2_EdR_0_\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b13_nAzGfFM_sLsv3_RNIVBP6[1]\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[150]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[149]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[150]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_1_0\ : NOR2A
      port map(A => \signal_send_0/N_1680\, B => 
        \data_all[105]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_1_0_net_1\);
    
    \signal_send_0/data_all_4_i_0[61]\ : NOR3
      port map(A => \signal_send_0/N_1780\, B => N_378, C => 
        \signal_send_0/N_1782\, Y => N_215);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[1]\ : DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[1]_net_1\);
    
    \data_all[87]\ : DFN1E0C0
      port map(D => N_163, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[87]_net_1\);
    
    \signal_send_0/data_all_4_i_0[10]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0_0[10]_net_1\, Y => N_303);
    
    \signal_send_0/un38_data_send_buffer_1097_i_a2_6_0_a2\ : 
        NOR2A
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \signal_send_0/N_1649\);
    
    \signal_send_0/un1_cnt_end_1_I_40\ : XOR2
      port map(A => \signal_send_0/cnt_end[8]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_3[0]\, Y => 
        \signal_send_0/I_40\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_5\ : 
        AND2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_g_array_0_1[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[116]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[117]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[115]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[116]\);
    
    \signal_send_0/data_all_4_i_0[3]\ : AO1A
      port map(A => \data_all[3]_net_1\, B => 
        \signal_send_0/N_377\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[3]_net_1\);
    
    \signal_send_0/cnt_RNO[8]\ : XA1
      port map(A => \signal_send_0/N_5\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[8]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_9\ : OR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_9_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[150]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[10]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[166]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[165]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[166]\);
    
    \signal_send_0/un7_cnt_1_I_31\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[6]\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[10]_net_1\, Y => \signal_send_0/N_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[157]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[156]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[157]\);
    
    \signal_send_0/data_send_buffer_3_1_3_tz[2]\ : AO1
      port map(A => \data_all[18]_net_1\, B => 
        \signal_send_0/N_1649\, C => 
        \signal_send_0/data_send_buffer_3_1_a2_18_0[2]_net_1\, Y
         => \signal_send_0/data_send_buffer_3_1_3_tz[2]_net_1\);
    
    \signal_send_0/data_all_4_0_i[39]\ : NOR3
      port map(A => \signal_send_0/N_1886\, B => N_378, C => 
        \signal_send_0/N_1887\, Y => N_250);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[16]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[15]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[16]\);
    
    \signal_send_0/m77_0_a3\ : OA1
      port map(A => \signal_send_0/N_967\, B => 
        \signal_send_0/N_1910\, C => \data_all[5]_net_1\, Y => 
        \signal_send_0/N_399\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[33]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[127]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[33]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[70]\ : DFN1
      port map(D => \data_all[89]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[70]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[137]\ : DFN1
      port map(D => \data_all[22]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[137]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[54]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[55]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[53]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[54]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[124]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[124]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[124]\);
    
    \signal_send_0/OVER_11\ : OR3B
      port map(A => \signal_send_0/un5_idle_recive_5_net_1\, B
         => \signal_send_0/un5_idle_recive_4_0_net_1\, C => 
        \signal_send_0/OVER_11_1_net_1\, Y => 
        \signal_send_0/OVER_11_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[88]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[89]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[87]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[88]\);
    
    \data_all[52]\ : DFN1E0C0
      port map(D => N_233, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[52]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIJV7V[3]\ : OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\);
    
    \signal_send_0/data_all_4_0_i_a3[33]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[33]_net_1\, Y => \signal_send_0/N_1875\);
    
    \signal_send_0/cnt_RNITDMJ1[10]\ : NOR3C
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[10]_net_1\, C => 
        \signal_send_0/tx_uart32_1\, Y => 
        \signal_send_0/tx_uart32_4\);
    
    \signal_send_0/cnt_m6_0_a2_10\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_10_3_net_1\, B => 
        \signal_send_0/cnt_m6_0_a2_10_4_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_10_5_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_4_0\);
    
    \signal_send_0/data_all_4_i_0_0[150]\ : AO1A
      port map(A => \data_all[150]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[150]_net_1\);
    
    \signal_send_0/data_all_4_i_0[46]\ : NOR3
      port map(A => \signal_send_0/N_1773\, B => N_378, C => 
        \signal_send_0/N_492\, Y => N_245);
    
    \signal_send_0/parity_check_RNO_4\ : OR3
      port map(A => \signal_send_0/parity_check_8_i_m\, B => 
        \signal_send_0/parity_check_5_i_m\, C => 
        \signal_send_0/parity_check_10_iv_0\, Y => 
        \signal_send_0/parity_check_10_iv_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[164]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[163]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[164]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[48]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[112]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[48]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]/U0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[3]/Y\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[104]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[105]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[103]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[104]\);
    
    \signal_send_0/cnt_m4_0_a2_3_2\ : NOR2B
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => \signal_send_0/N_1680\);
    
    \signal_send_0/send_RNI25OOL1\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/un1_tx_uart27\, Y => 
        \signal_send_0/tx_uart_11_sqmuxa\);
    
    \signal_send_0/parity_check_RNO\ : NOR3
      port map(A => \signal_send_0/parity_check_10_iv_3\, B => 
        \signal_send_0/parity_check_10_iv_2\, C => 
        \signal_send_0/parity_check_10_iv_4\, Y => 
        \signal_send_0/parity_check_10_iv\);
    
    \signal_send_0/data_all_4_i_0_0[148]\ : AO1A
      port map(A => \data_all[148]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[148]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_1[4]\ : NOR2B
      port map(A => \data_all[148]_net_1\, B => 
        \signal_send_0/N_927\, Y => \signal_send_0/N_507\);
    
    \signal_send_0/cnt_RNISOCR4[3]\ : NOR3C
      port map(A => \signal_send_0/tx_uart37_5\, B => 
        \signal_send_0/tx_uart37_4\, C => 
        \signal_send_0/tx_uart37_6\, Y => 
        \signal_send_0/tx_uart37\);
    
    \signal_send_0/cnt_RNIGAVJ1[3]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart35_4\, Y => 
        \signal_send_0/tx_uart35_4_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO\ : AO1
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_0\, 
        C => \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[5]\ : DFN1
      port map(D => \data_all[154]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[5]_net_1\);
    
    \signal_send_0/un1_cnt_end_1_I_39\ : AX1C
      port map(A => \signal_send_0/DWACT_ADD_CI_0_g_array_11[0]\, 
        B => \signal_send_0/cnt_end[6]_net_1\, C => 
        \signal_send_0/cnt_end[7]_net_1\, Y => 
        \signal_send_0/un1_cnt_end_1[8]\);
    
    \signal_send_0/m90_i_a3\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[119]_net_1\, Y => \signal_send_0/N_390\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[0]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[0]/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[0]\);
    
    \signal_send_0/send\ : DFN1E1C0
      port map(D => \signal_send_0/un2_vld_send_down\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/un2_cnt\, Q => \signal_send_0/send_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[29]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1760\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[112]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[111]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[112]\);
    
    \data_send_buffer[2]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[2]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[22]\ : 
        AO1
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[22]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[22]_net_1\);
    
    \cnt_delay[6]\ : DFN1E1C0
      port map(D => cnt_delay_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[6]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_4\ : XO1
      port map(A => \cnt_send[13]_net_1\, B => 
        \cnt_recive[13]_net_1\, C => 
        \signal_send_0/un12_cnt_send_12_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_4_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[45]\ : NOR2
      port map(A => \signal_send_0/N_1736\, B => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1772\);
    
    \signal_send_0/m62_0_1\ : AO1
      port map(A => \signal_send_0/N_1912\, B => 
        \signal_send_0/m62_0_0_0_tz_net_1\, C => 
        \signal_send_0/N_421\, Y => \signal_send_0/m62_0_1_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[25]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_460\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_comm2iice[7]\, B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]_net_1\);
    
    \signal_send_0/data_all_4_i_o3_i_o2[150]\ : OR3A
      port map(A => 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\, B
         => \signal_send_0/OVER_net_1\, C => 
        \signal_send_0/N_355\, Y => \signal_send_0/N_314\);
    
    \signal_send_0/cnt_m6_0_a2_5\ : NOR2B
      port map(A => \signal_send_0/cnt_m6_0_a2_4_0\, B => 
        \signal_send_0/N_6_0\, Y => \signal_send_0/cnt_send_c11\);
    
    \data_all[125]\ : DFN1E0C0
      port map(D => \data_all_4[125]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[125]_net_1\);
    
    \signal_send_0/un5_idle_recive\ : NOR3C
      port map(A => \signal_send_0/un5_idle_recive_16_net_1\, B
         => \signal_send_0/un5_idle_recive_15_net_1\, C => 
        \signal_send_0/un5_idle_recive_23_net_1\, Y => 
        \signal_send_0/un5_idle_recive_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[13]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[13]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[13]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[147]\ : DFN1
      port map(D => \data_all[12]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[147]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[91]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[69]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[91]\);
    
    \signal_send_0/cnt_RNIANVP[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart31_1\);
    
    \signal_send_0/m77_0_a3_11_0\ : NOR2B
      port map(A => \data_all[53]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m77_0_a3_11_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO_0[1]\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[1]\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[1]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_90\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[50]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[49]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[50]\);
    
    \signal_send_0/data_all_4_i_0_0[145]\ : AO1A
      port map(A => \data_all[145]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[145]_net_1\);
    
    \cnt_recive[10]\ : DFN1E0C0
      port map(D => cnt_recive_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[10]_net_1\);
    
    \signal_send_0/m30\ : NOR3C
      port map(A => \cnt_recive[2]_net_1\, B => 
        \data_recive_buffer[0]\, C => \signal_send_0/m30_0_net_1\, 
        Y => \signal_send_0/un52_data_all[48]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[4]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[4]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[83]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[84]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[82]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[83]\);
    
    \signal_send_0/m77_0_a3_7_0\ : NOR2B
      port map(A => \data_all[117]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m77_0_a3_7_0_net_1\);
    
    \signal_send_0/m62_0_a3_6_0\ : NOR2B
      port map(A => \data_all[127]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/m62_0_a3_6_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[13]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[14]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[13]\);
    
    \signal_send_0/un12_cnt_send_14_0_x2\ : XOR2
      port map(A => \cnt_recive[14]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => \signal_send_0/N_76_i\);
    
    \signal_send_0/cnt_send_c20\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c19_net_1\, B => 
        \cnt_send[20]_net_1\, Y => 
        \signal_send_0/cnt_send_c20_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[148]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[149]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[147]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[148]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[7]\ : DFN1
      port map(D => \data_all[152]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[7]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_0\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\);
    
    \signal_send_0/un12_cnt_send_29\ : XOR2
      port map(A => \cnt_recive[29]_net_1\, B => 
        \cnt_send[29]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_29_net_1\);
    
    \signal_send_0/cnt_RNIG3JDJ[10]\ : OR3
      port map(A => \signal_send_0/tx_uart28\, B => 
        \signal_send_0/tx_uart35\, C => 
        \signal_send_0/un1_tx_uart27_4\, Y => 
        \signal_send_0/un1_tx_uart27_7\);
    
    \data_all[72]\ : DFN1E0C0
      port map(D => N_193, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[72]_net_1\);
    
    \data_all[39]\ : DFN1E0C0
      port map(D => N_250, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[39]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNIRVSD[0]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b4_ycsM\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/ttdo\, S => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_1552\);
    
    \signal_send_0/cnt_m4_0_a2_3_4\ : NOR3C
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[5]_net_1\, 
        C => \signal_send_0/N_1680\, Y => 
        \signal_send_0/cnt_m4_0_a2_3_4_net_1\);
    
    \signal_send_0/cnt_m5_2\ : XA1B
      port map(A => \signal_send_0/cnt_N_9_mux_2\, B => 
        \cnt_send[23]_net_1\, C => N_378, Y => cnt_send_n23);
    
    \data_all[58]\ : DFN1E0C0
      port map(D => N_221, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[58]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[83]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[77]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[83]\);
    
    \signal_send_0/data_all_4_0_a2_0[105]\ : NOR3A
      port map(A => \data_recive_buffer[1]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_686\);
    
    \single_recive_0/cnt_RNIS21I_0[2]\ : NOR2
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m65_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIKRTG[1]\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => \ident_coreinst/IICE_comm2iice[5]\, C => 
        \ident_coreinst/IICE_comm2iice[1]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[10]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[11]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[9]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[10]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_20\ : OR3
      port map(A => \signal_send_0/un12_cnt_send_28_net_1\, B => 
        \signal_send_0/un12_cnt_send_18_net_1\, C => 
        \signal_send_0/N_352_i\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_20_net_1\);
    
    \signal_send_0/data_all_4_i_0[94]\ : NOR3
      port map(A => \signal_send_0/N_1809\, B => N_378, C => 
        \signal_send_0/N_1810\, Y => N_149);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[30]\ : DFN1
      port map(D => \data_all[129]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[30]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIVBP6[1]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b13_nAzGfFM_sLsv3_RNIVBP6[1]\);
    
    \signal_send_0/data_all_4_i_0_a3[31]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[31]_net_1\, Y => \signal_send_0/N_1763\);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_9\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum_0[0]\);
    
    \signal_send_0/un7_cnt_1_I_8\ : AND3
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => \signal_send_0/N_10\);
    
    \signal_send_0/m90_i_o2_1\ : OR3C
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/m90_i_o2_1_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[0]\ : NOR2
      port map(A => \signal_send_0/N_641_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_876\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[23]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[23]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[23]\);
    
    \single_recive_0/data_recive_RNO_1[6]\ : NOR3C
      port map(A => \single_recive_0/m65_6\, B => 
        \single_recive_0/m65_7\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_5\);
    
    \data_all[44]\ : DFN1E0C0
      port map(D => N_249, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[44]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[126]\ : NOR2
      port map(A => \signal_send_0/N_320\, B => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1833\);
    
    \signal_send_0/cnt_RNIBOVP[3]\ : NOR2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart36_3\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[9]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[9]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[4]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[4]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[34]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[34]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[34]\);
    
    \signal_send_0/cnt_end_RNIFVLJ[0]\ : NOR2B
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end[1]_net_1\, Y => 
        \signal_send_0/un8_cnt_end_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[110]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[111]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[109]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[110]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[12]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[12]_net_1\);
    
    \signal_send_0/end_flag_RNIF3S3\ : NOR3A
      port map(A => \signal_send_0/un11_cnt_delay_4\, B => 
        \cnt_delay[2]_net_1\, C => \cnt_delay[1]_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_6\);
    
    \signal_send_0/data_all_4_i_a2[19]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[19]_net_1\, Y => 
        \signal_send_0/N_832\);
    
    \signal_send_0/data_send_buffer_3_1_5[0]\ : AO1
      port map(A => \data_all[88]_net_1\, B => 
        \signal_send_0/N_1688\, C => \signal_send_0/N_571\, Y => 
        \signal_send_0/data_send_buffer_3_1_5[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[32]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[33]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[31]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[32]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_15\ : OR3
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[7]_net_1\, C => 
        \signal_send_0/un17_data_send_bufferlt30_22_7_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_15_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[17]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[104]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[56]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[104]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[151]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[150]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[151]\);
    
    \signal_send_0/un7_cnt_1_I_26\ : AX1C
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[4]\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/I_26_0\);
    
    \signal_send_0/data_all_4_i[16]\ : NOR3
      port map(A => \signal_send_0/N_838\, B => N_378, C => 
        \signal_send_0/N_839\, Y => N_291);
    
    \signal_send_0/data_all_4_0_i[111]\ : NOR3
      port map(A => \signal_send_0/N_1813\, B => N_378, C => 
        \signal_send_0/N_1814\, Y => N_1717);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[113]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[114]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[112]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[113]\);
    
    \signal_send_0/cnt_RNISMVJ1_0[3]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart34_4_0\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[0]\, CLK => 
        sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]_net_1\);
    
    \signal_send_0/data_all_4_0_i[33]\ : NOR3
      port map(A => \signal_send_0/N_1875\, B => N_378, C => 
        \signal_send_0/N_1877\, Y => N_236);
    
    idle_send_down : DFN1C0
      port map(D => idle_send_down_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_down\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[2]\);
    
    \signal_send_0/cnt_send_c26\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c25\, B => 
        \cnt_send[26]_net_1\, Y => 
        \signal_send_0/cnt_send_c26_net_1\);
    
    \signal_send_0/un1_cnt_end_1_I_42\ : XOR2
      port map(A => \signal_send_0/cnt_end[2]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_1[0]\, Y => 
        \signal_send_0/I_42\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[158]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[158]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[158]\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]_net_1\);
    
    \signal_send_0/data_all_4_i[5]\ : NOR3
      port map(A => \signal_send_0/N_1637\, B => N_378, C => 
        \signal_send_0/N_1638\, Y => N_313);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[143]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[143]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[143]\);
    
    \signal_send_0/m62_0_a3_1_0\ : NOR2
      port map(A => \cnt_send[1]_net_1\, B => 
        \signal_send_0/N_123\, Y => 
        \signal_send_0/m62_0_a3_1_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[37]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[123]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[37]\);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3[100]\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, Y
         => \signal_send_0/N_344\);
    
    \signal_send_0/end_flag_RNI22ET1\ : NOR2
      port map(A => \cnt_flag[0]_net_1\, B => 
        \signal_send_0/un1_send_end\, Y => N_1483);
    
    \signal_send_0/cnt_RNIKA6IE[2]\ : OR3
      port map(A => \signal_send_0/tx_uart31\, B => 
        \signal_send_0/tx_uart29\, C => \signal_send_0/tx_uart30\, 
        Y => \signal_send_0/un1_tx_uart27_5\);
    
    \signal_send_0/cnt_delaylde\ : AO1
      port map(A => \signal_send_0/un11_receive_end\, B => 
        \receive_end\, C => N_378, Y => cnt_delaye);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[39]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[39]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[39]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[113]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[113]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[113]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[10]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[11]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[10]\);
    
    \signal_send_0/data_all_4_i_0[42]\ : NOR3
      port map(A => \signal_send_0/N_1769\, B => N_378, C => 
        \signal_send_0/N_484\, Y => N_253);
    
    \data_all[78]\ : DFN1E0C0
      port map(D => N_181, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[78]_net_1\);
    
    \signal_send_0/cnt_RNISVMP[10]\ : NOR2
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/un1_cnt_6\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en4\, CLK
         => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[3]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[3]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[147]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[13]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[147]\);
    
    \signal_send_0/cnt_RNIGNDJ1[3]\ : NOR3B
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/tx_uart27_6\, C => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart31_7\);
    
    \single_recive_0/cnt_RNO[7]\ : XA1
      port map(A => \single_recive_0/N_6\, B => 
        \single_recive_0/cnt[7]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[7]\);
    
    \signal_send_0/m87\ : NOR2A
      port map(A => \signal_send_0/N_1699\, B => N_378, Y => 
        \data_all_4[151]\);
    
    \signal_send_0/data_all_4_i_a2_0[83]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \signal_send_0/N_385\, Y => \signal_send_0/N_714\);
    
    \signal_send_0/data_all_4_i_a2_0[57]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_766\);
    
    \signal_send_0/data_all_4_i_a2[52]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[52]_net_1\, Y => \signal_send_0/N_775\);
    
    \signal_send_0/data_all_4_i_0[148]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[148]_net_1\, Y => N_1596);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[158]\ : DFN1
      port map(D => \data_all[1]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[158]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[107]\ : DFN1
      port map(D => \data_all[52]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[107]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[127]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[33]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[127]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_28\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_22_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_21_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_25_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_28_net_1\);
    
    \data_all[22]\ : DFN1E0C0
      port map(D => N_279, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[22]_net_1\);
    
    \signal_send_0/un1_cnt_end_1_I_60\ : AND2
      port map(A => \signal_send_0/cnt_end[4]_net_1\, B => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_pog_array_1_1[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[144]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[145]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[143]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[144]\);
    
    idle_recive_down : DFN1P0
      port map(D => idle_recive_down_3, CLK => sys_clk_c, PRE => 
        sys_rest_c, Q => idle_recive_down_i_0);
    
    \single_recive_0/cnt_RNIU0FM1[1]\ : NOR3C
      port map(A => \single_recive_0/m36_1\, B => 
        \single_recive_0/m36_0\, C => \single_recive_0/m36_2\, Y
         => \single_recive_0/N_116_mux\);
    
    \signal_send_0/send_end_0_sqmuxa_i_1\ : XO1
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_recive[27]_net_1\, C => 
        \signal_send_0/un12_cnt_send_26_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_1_net_1\);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]\ : OR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \signal_send_0/OVER_11_net_1\, Y => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\);
    
    \signal_send_0/data_all_4_i[69]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_646_2\, C => 
        \signal_send_0/data_all_4_i_0[69]_net_1\, Y => N_199);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[21]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[20]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[21]\);
    
    \signal_send_0/cnt_RNISOCR4[7]\ : NOR3C
      port map(A => \signal_send_0/tx_uart28_4\, B => 
        \signal_send_0/tx_uart28_3\, C => 
        \signal_send_0/tx_uart27_9\, Y => 
        \signal_send_0/tx_uart28\);
    
    \signal_send_0/cnt_RNI8LVP[0]\ : NOR2
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart29_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[84]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[84]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[84]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[22]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[22]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[22]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[8]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[9]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[8]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_1\ : NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[69]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[70]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[68]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[69]\);
    
    \signal_send_0/data_send_buffer_3_1_4[2]\ : AO1
      port map(A => \data_all[106]_net_1\, B => 
        \signal_send_0/N_1673\, C => \signal_send_0/N_547\, Y => 
        \signal_send_0/data_send_buffer_3_1_4[2]_net_1\);
    
    \signal_send_0/m77_0_a2_3_0\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => 
        \signal_send_0/m77_0_a2_3_0_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[157]\ : AO1A
      port map(A => \data_all[157]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[157]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[118]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[117]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[118]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[18]\ : DFN1
      port map(D => \data_all[141]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[18]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[12]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[12]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[12]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[46]\ : NOR2
      port map(A => \signal_send_0/N_1736\, B => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_492\);
    
    \signal_send_0/cnt_end_RNO[1]\ : XA1B
      port map(A => \signal_send_0/cnt_end[1]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_TMP[0]\, C => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/cnt_end_5[1]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[4]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[4]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[26]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_462\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[143]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[17]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[143]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[151]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[152]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[150]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[151]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[11]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[11]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[58]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[102]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[58]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[28]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[132]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[28]\);
    
    \signal_send_0/un37_data_send_buffer_1951_i_i_a3\ : NOR3B
      port map(A => \data_recive_buffer[3]\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[0]_net_1\, Y => 
        \signal_send_0/N_385\);
    
    \signal_send_0/m77_0_a3_15_0\ : NOR2B
      port map(A => \data_all[85]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m77_0_a3_15_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[55]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[55]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[55]\);
    
    \signal_send_0/data_all_4_i[64]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_641_2\, C => 
        \signal_send_0/data_all_4_i_0[64]_net_1\, Y => N_209);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[36]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[37]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[35]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[36]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[73]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[73]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[73]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[123]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[37]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[123]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[118]\ : DFN1
      port map(D => \data_all[41]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[118]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[19]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[20]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[19]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_8[3]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, B
         => \data_all[99]_net_1\, C => N_378, Y => 
        \signal_send_0/N_532\);
    
    \signal_send_0/cnt_RNI0HMJ1[11]\ : NOR3A
      port map(A => \signal_send_0/un1_cnt_1\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart34_5\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[89]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[89]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[89]\);
    
    \signal_send_0/parity_check_RNO_3\ : OR3
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/tx_uart37\, C => \signal_send_0/tx_uart27\, 
        Y => \signal_send_0/un1_tx_uart27_1_1\);
    
    \single_recive_0/cnt_RNI291I_1[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/m65_2\);
    
    \signal_send_0/data_send_buffer_3_1[2]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_13[2]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_12[2]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_17[2]_net_1\, Y => 
        \data_send_buffer_3[2]\);
    
    \test_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => test_c, E => \VCC\, DOUT => 
        \test_pad/U0/NET1\, EOUT => \test_pad/U0/NET2\);
    
    \signal_send_0/data_all_4_0_i_a3[118]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[118]_net_1\, Y => \signal_send_0/N_1828\);
    
    \signal_send_0/cnt_RNICTMJ1[11]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_4\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart33_5\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[87]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[73]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[87]\);
    
    \data_all[5]\ : DFN1E0C0
      port map(D => N_313, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[5]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[130]\ : DFN1
      port map(D => \data_all[29]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[130]_net_1\);
    
    \ident_coreinst/comm_block_INST_IICE_comm2iice_RNISUM1_0[9]\ : 
        BUFF
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_comm2iice_1[9]\);
    
    \signal_send_0/cnt_RNIUEMJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart27_3\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart35_5\);
    
    \signal_send_0/cnt_m4_0_a2_7_2\ : NOR2B
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[21]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_7_2_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[21]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[22]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[21]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme_RNO\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b9_vbTtJX_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme3\);
    
    \signal_send_0/data_all_4_i[156]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0[156]_net_1\, Y => N_1589);
    
    \signal_send_0/m77_m3_0_a2_0\ : OA1A
      port map(A => \signal_send_0/N_1898_3\, B => 
        \signal_send_0/un17_data_send_bufferlt30_22_net_1\, C => 
        \signal_send_0/m77_m3_0_a2_0_0_0\, Y => 
        \signal_send_0/N_878\);
    
    \signal_send_0/data_all_4_0_i_a3[34]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[34]_net_1\, Y => \signal_send_0/N_1878\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[98]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[98]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[98]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[0]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[1]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[0]\);
    
    \cnt_send[17]\ : DFN1E1C0
      port map(D => N_41, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[17]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[99]\ : DFN1
      port map(D => \data_all[60]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[99]_net_1\);
    
    \data_all[28]\ : DFN1E0C0
      port map(D => N_267, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[28]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[29]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[29]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[29]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[3]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[4]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[3]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[54]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[53]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[54]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_15[4]\ : NOR2B
      port map(A => \data_all[36]_net_1\, B => 
        \signal_send_0/N_968\, Y => \signal_send_0/N_521\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[15]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[15]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[15]\);
    
    \data_all[101]\ : DFN1E0C0
      port map(D => N_270, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[101]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[119]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[41]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[119]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[13]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[13]_net_1\);
    
    \signal_send_0/data_all_4_i_0[93]\ : NOR3
      port map(A => \signal_send_0/N_1806\, B => N_378, C => 
        \signal_send_0/N_1808\, Y => N_151);
    
    un19_data_send_buffer_1_I_20 : AX1A
      port map(A => \cnt_send[3]_net_1\, B => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\, C => 
        \cnt_send[4]_net_1\, Y => I_20_1);
    
    \signal_send_0/data_send_buffer_3_1_8[3]\ : OR3
      port map(A => \signal_send_0/N_539\, B => 
        \signal_send_0/N_540\, C => \signal_send_0/N_535\, Y => 
        \signal_send_0/data_send_buffer_3_1_8[3]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_25\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_11_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_10_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_20_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_25_net_1\);
    
    \signal_send_0/OVER_12_4\ : OR3A
      port map(A => \signal_send_0/un5_idle_recive_2_net_1\, B
         => \cnt_recive[10]_net_1\, C => \cnt_recive[6]_net_1\, Y
         => \signal_send_0/OVER_12_4_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[46]\ : DFN1
      port map(D => \data_all[113]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[46]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[90]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[89]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[90]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]_net_1\);
    
    \signal_send_0/data_all_4_i_0[78]\ : AO1A
      port map(A => \data_all[78]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[78]_net_1\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_INST/b8_yYh0_XlK\, B => 
        \ident_coreinst/IICE_comm2iice[0]\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_yYh0_9u_0_a2_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[42]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[42]_net_1\, Y => \signal_send_0/N_1769\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[81]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[80]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[81]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_15[2]\ : NOR2B
      port map(A => \data_all[34]_net_1\, B => 
        \signal_send_0/N_968\, Y => \signal_send_0/N_557\);
    
    \signal_send_0/un38_data_send_buffer_968_i_4\ : OR3
      port map(A => \signal_send_0/N_489\, B => 
        \signal_send_0/N_490\, C => 
        \signal_send_0/un38_data_send_buffer_968_i_1_net_1\, Y
         => \signal_send_0/un38_data_send_buffer_968_i_4_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[140]\ : DFN1
      port map(D => \data_all[19]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[140]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[42]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[43]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[41]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[42]\);
    
    \cnt_send[30]\ : DFN1E1C0
      port map(D => cnt_send_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[30]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_773_i_m3\ : MX2
      port map(A => \signal_send_0/N_609_3\, B => 
        \signal_send_0/N_625_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_451\);
    
    \signal_send_0/m85\ : NOR3B
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/m85_2_net_1\, C => \cnt_recive[2]_net_1\, 
        Y => \signal_send_0/N_148_mux\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[130]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[130]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[130]\);
    
    \signal_send_0/data_all_4_i_o2_0[87]\ : OR2
      port map(A => \signal_send_0/N_348\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_355\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNI4MEM[0]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\, 
        C => \ident_coreinst/IICE_INST/b3_SoW/virOut/N_1552\, Y
         => \ident_coreinst/IICE_INST/b8_yYh0_XlK\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[56]\ : DFN1
      port map(D => \data_all[103]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[56]_net_1\);
    
    \single_recive_0/cnt_RNO[0]\ : NOR2A
      port map(A => \single_recive_0/recive_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/cnt_4[0]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[29]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[30]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[29]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[29]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[12]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[13]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[12]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[24]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_458\);
    
    \signal_send_0/data_all_4_i_a2[100]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[100]_net_1\, Y => \signal_send_0/N_1553\);
    
    \signal_send_0/un38_data_send_buffer_570\ : MX2
      port map(A => \data_all[86]_net_1\, B => 
        \data_all[94]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_567_3\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\);
    
    \signal_send_0/cnt_recive_end_n3\ : XA1
      port map(A => receive_end2lto3, B => 
        \signal_send_0/cnt_recive_end_c2_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[74]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[75]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[73]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[74]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[148]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[148]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[148]\);
    
    \data_all[113]\ : DFN1E0C0
      port map(D => N_1719, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[113]_net_1\);
    
    \signal_send_0/cnt_recive_end_0_sqmuxa\ : NOR2A
      port map(A => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_1_net_1\, B => 
        \signal_send_0/un5_idle_recive_net_1\, Y => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\);
    
    \single_recive_0/cnt_RNI4E1R[0]\ : NOR2B
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/m23_2\, Y => \single_recive_0/m52_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[70]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[90]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[70]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[63]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[97]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[63]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[118]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[118]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[118]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[7]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[8]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[7]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_1\ : AO1
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_9_0_net_1\, 
        B => \signal_send_0/N_889\, C => \signal_send_0/N_480\, Y
         => \signal_send_0/un38_data_send_buffer_968_i_1_net_1\);
    
    \signal_send_0/m82\ : NOR2A
      port map(A => idle_recive_down_i_0, B => N_378, Y => m82);
    
    \signal_send_0/data_all_4_i_0[67]\ : AO1A
      port map(A => \data_all[67]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[67]_net_1\);
    
    \signal_send_0/cnt_RNINHVJ1_0[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/tx_uart33_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart33_3_0\);
    
    \single_recive_0/rx_fall\ : DFN1C0
      port map(D => rx_uart_c, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \single_recive_0/rx_fall_net_1\);
    
    \data_all[30]\ : DFN1E0C0
      port map(D => N_263, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[30]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[0]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[0]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[0]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[23]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[23]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[23]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3_0[7]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[94]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[95]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[93]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[94]\);
    
    \signal_send_0/data_all_4_i[7]\ : NOR3
      port map(A => \signal_send_0/N_856\, B => N_378, C => 
        \signal_send_0/N_857\, Y => N_309);
    
    \data_all[153]\ : DFN1E0C0
      port map(D => N_1592, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[153]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[2]\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_1[3]\ : NOR2B
      port map(A => \data_all[155]_net_1\, B => 
        \signal_send_0/N_1683\, Y => \signal_send_0/N_525\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[37]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[37]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[37]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_4[0]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\, B
         => \data_all[96]_net_1\, C => N_378, Y => 
        \signal_send_0/N_567\);
    
    \signal_send_0/data_send_buffer_3_1_a2_2[4]\ : NOR2B
      port map(A => \data_all[140]_net_1\, B => 
        \signal_send_0/N_1682\, Y => \signal_send_0/N_508\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[155]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[156]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[154]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[155]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[3]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]_net_1\);
    
    \signal_send_0/cnt_recive_n20_0\ : XA1C
      port map(A => \cnt_recive[20]_net_1\, B => 
        \signal_send_0/N_64\, C => N_378, Y => cnt_recive_n20);
    
    \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_comm2iice[1]\, B => 
        \ident_coreinst/IICE_comm2iice[0]\, C => 
        \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\);
    
    \signal_send_0/un5_idle_recive_3\ : NOR2
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_recive[25]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_3_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[130]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[129]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[130]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[47]\ : NOR2
      port map(A => \signal_send_0/N_1736\, B => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1775\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[132]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[132]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[132]\);
    
    \signal_send_0/cnt_send_n16_i_o4\ : OR2A
      port map(A => \cnt_send[15]_net_1\, B => 
        \signal_send_0/N_66\, Y => \signal_send_0/N_68\);
    
    \signal_send_0/data_all_4_i_0_a3_0[27]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[3]\, Y => \signal_send_0/N_464\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[122]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[121]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[122]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_11_0\ : NOR2
      port map(A => \data_all[25]_net_1\, B => 
        \signal_send_0/N_318\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_11_0_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[7]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\);
    
    \signal_send_0/tx_uart_RNO_2\ : OR3
      port map(A => \signal_send_0/tx_uart_11_iv_1\, B => 
        \signal_send_0/tx_uart_11_iv_0\, C => 
        \signal_send_0/tx_uart_11_iv_4\, Y => 
        \signal_send_0/tx_uart_11_iv_7\);
    
    \signal_send_0/cnt[5]\ : DFN1C0
      port map(D => \signal_send_0/I_14_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[5]_net_1\);
    
    \signal_send_0/end_flag_RNI41TV2\ : NOR2A
      port map(A => \signal_send_0/cnt_flag_n4_tz_net_1\, B => 
        \signal_send_0/un1_send_end\, Y => cnt_flag_n4);
    
    \signal_send_0/data_all_4_0_a2_0[106]\ : NOR3A
      port map(A => \data_recive_buffer[2]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_684\);
    
    \signal_send_0/cnt_RNIFSVP[8]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart29_1\);
    
    \signal_send_0/data_all_4_0_i_a3[39]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[39]_net_1\, Y => \signal_send_0/N_1886\);
    
    \data_all[2]\ : DFN1E0C0
      port map(D => N_319, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[1]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[1]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[1]\);
    
    \data_all[11]\ : DFN1E0C0
      port map(D => N_301, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[26]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[25]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[26]\);
    
    \signal_send_0/un37_data_send_buffer_1938_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_647_2\);
    
    \signal_send_0/data_all_4_i_0_a3_0[55]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1779\);
    
    \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]\ : NOR2A
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[137]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[136]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[137]\);
    
    \signal_send_0/m62_0_452\ : OA1
      port map(A => \signal_send_0/m62_0_a3_3_0_net_1\, B => 
        \signal_send_0/m62_0_a3_14_0_net_1\, C => 
        \signal_send_0/N_1662\, Y => 
        \signal_send_0/m62_0_452_net_1\);
    
    \signal_send_0/cnt_send_c10\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c9_net_1\, B => 
        \cnt_send[10]_net_1\, Y => 
        \signal_send_0/cnt_send_c10_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_1_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[53]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[52]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[51]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[50]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[49]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[48]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[47]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[46]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[45]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[44]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[43]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[42]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[41]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[40]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[39]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[38]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[37]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[36]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[53]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[52]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[51]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[50]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[49]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[48]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[47]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[46]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[45]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[44]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[43]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[42]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[41]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[40]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[39]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[38]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[37]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[36]\);
    
    \signal_send_0/data_all_4_i[71]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_648_2\, C => 
        \signal_send_0/data_all_4_i_0[71]_net_1\, Y => N_195);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[61]\ : DFN1
      port map(D => \data_all[98]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[61]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2_0\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[68]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[68]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[68]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_14_0\ : NOR2
      port map(A => \data_all[1]_net_1\, B => 
        \signal_send_0/N_318\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_14_0_net_1\);
    
    \cnt_send[20]\ : DFN1E1C0
      port map(D => cnt_send_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[20]_net_1\);
    
    \signal_send_0/cnt_send_n9_0\ : XA1C
      port map(A => \cnt_send[9]_net_1\, B => 
        \signal_send_0/N_1504\, C => N_378, Y => cnt_send_n9);
    
    \signal_send_0/cnt_m6_0_a2_10_4\ : NOR3C
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[8]_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_10_1_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_10_4_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[46]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[47]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[45]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[46]\);
    
    \signal_send_0/m62_0_0_0_tz\ : OR3
      port map(A => \signal_send_0/m62_0_a3_6_0_net_1\, B => 
        \signal_send_0/m62_0_a3_1_0_net_1\, C => 
        \signal_send_0/m62_0_a3_7_0_net_1\, Y => 
        \signal_send_0/m62_0_0_0_tz_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[140]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[20]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[140]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0\ : 
        OR2B
      port map(A => \ident_coreinst/IICE_comm2iice[10]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, Y
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\);
    
    \data_send_buffer[6]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[6]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[63]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[63]_net_1\, Y => \signal_send_0/N_1783\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[31]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[30]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[31]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[123]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[123]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[123]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[131]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[132]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[130]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[131]\);
    
    \cnt_recive[16]\ : DFN1E0C0
      port map(D => cnt_recive_n16, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[16]_net_1\);
    
    \single_recive_0/cnt_RNI071I[6]\ : NOR2B
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/m47_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[2]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[11]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[11]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[11]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[41]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[41]_net_1\, Y => \signal_send_0/N_481\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[57]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[58]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[56]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[57]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[100]\ : DFN1
      port map(D => \data_all[59]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[100]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[159]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[158]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[159]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[21]\ : DFN1
      port map(D => \data_all[138]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[21]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[120]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[40]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[120]\);
    
    \signal_send_0/m62_0_0_tz_0\ : AO1
      port map(A => \cnt_send[1]_net_1\, B => 
        \signal_send_0/N_1731\, C => 
        \signal_send_0/m62_0_a3_5_0_net_1\, Y => 
        \signal_send_0/m62_0_0_tz_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[25]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[25]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[25]\);
    
    \signal_send_0/cnt_RNIICVJ1[1]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_4\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart27_1\);
    
    \signal_send_0/cnt_recive_end_n5\ : XA1
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        \signal_send_0/cnt_recive_end_c4_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n5);
    
    \signal_send_0/un5_idle_recive_7_0\ : NOR3A
      port map(A => \signal_send_0/un5_idle_recive_3_net_1\, B
         => \cnt_recive[8]_net_1\, C => \cnt_recive[7]_net_1\, Y
         => \signal_send_0/un5_idle_recive_7_net_1\);
    
    \signal_send_0/data_all_4_0_a2_0[123]\ : NOR3A
      port map(A => \data_recive_buffer[3]\, B => N_378, C => 
        \signal_send_0/N_320\, Y => \signal_send_0/N_652\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[19]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[161]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[160]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[161]\);
    
    \signal_send_0/data_all_4_i_0[80]\ : NOR3
      port map(A => \signal_send_0/N_1785\, B => N_378, C => 
        \signal_send_0/N_1786\, Y => N_177);
    
    \signal_send_0/data_send_buffer_3_1_a2[0]\ : NOR2B
      port map(A => \signal_send_0/N_451\, B => 
        \signal_send_0/N_1659\, Y => \signal_send_0/N_562\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[61]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[60]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[61]\);
    
    \cnt_recive[23]\ : DFN1E0C0
      port map(D => cnt_recive_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[23]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[118]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[42]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[118]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[87]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[87]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[87]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[53]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[52]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[53]\);
    
    \sys_clk_pad/U0/U1\ : CLKIO
      port map(A => \sys_clk_pad/U0/NET1\, Y => sys_clk_c);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[70]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[69]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[70]\);
    
    \signal_send_0/data_all_4_i_a2[16]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[16]_net_1\, Y => 
        \signal_send_0/N_838\);
    
    \signal_send_0/data_send_buffer_3_1_7[4]\ : AO1
      port map(A => \data_all[76]_net_1\, B => 
        \signal_send_0/N_1686\, C => \signal_send_0/N_515\, Y => 
        \signal_send_0/data_send_buffer_3_1_7[4]_net_1\);
    
    \signal_send_0/cnt_RNIHUVP[7]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/tx_uart34_4\);
    
    \single_recive_0/cnt_RNIMS0I[4]\ : NOR2B
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m42_2\);
    
    \signal_send_0/data_all_4_i_0[26]\ : NOR3
      port map(A => \signal_send_0/N_461\, B => N_378, C => 
        \signal_send_0/N_462\, Y => N_271);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]/U0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[1]\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]/Y\);
    
    \signal_send_0/data_send_buffer_3_1_7_tz_0[0]\ : AO1
      port map(A => \data_all[0]_net_1\, B => 
        \signal_send_0/N_887\, C => 
        \signal_send_0/data_send_buffer_3_1_a2_11_0[0]_net_1\, Y
         => \signal_send_0/data_send_buffer_3_1_7_tz_0[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIF85L[2]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\, 
        C => \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\);
    
    \data_all[15]\ : DFN1E0C0
      port map(D => N_293, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[15]_net_1\);
    
    I_479 : CLKINT
      port map(A => \genblk9.b9_v_mzCDYXs13_0_a3_1\, Y => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\);
    
    \data_all[42]\ : DFN1E0C0
      port map(D => N_253, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[42]_net_1\);
    
    \signal_send_0/cnt_end_RNIL5MJ[5]\ : NOR2
      port map(A => \signal_send_0/cnt_end[5]_net_1\, B => 
        \signal_send_0/cnt_end[2]_net_1\, Y => 
        \signal_send_0/un8_cnt_end_1\);
    
    \signal_send_0/cnt[6]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[6]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[19]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[19]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[19]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[41]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[40]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[41]\);
    
    \signal_send_0/cnt_RNIOVDJ1[8]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_6\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/tx_uart27_9\);
    
    \signal_send_0/data_all_4_i_0_a3[45]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[45]_net_1\, Y => \signal_send_0/N_1770\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_o3\ : 
        OR2
      port map(A => \ident_coreinst/IICE_comm2iice[10]\, B => 
        \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/N_1551\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIS0TQ2\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\, B
         => 
        \ident_coreinst/comm_block_INST/jtagi/b9_96_cLqgOF3_1\, C
         => \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, 
        Y => \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\);
    
    \signal_send_0/cnt_recive_n17_0\ : XA1C
      port map(A => \cnt_recive[17]_net_1\, B => 
        \signal_send_0/N_61\, C => N_378, Y => cnt_recive_n17);
    
    \signal_send_0/un12_cnt_send_16_0_x2\ : XOR2
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_send[16]_net_1\, Y => \signal_send_0/N_74_i\);
    
    \signal_send_0/data_all_4_i_0_a3[30]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[30]_net_1\, Y => \signal_send_0/N_1761\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_6_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[143]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[142]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[141]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[140]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[139]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[138]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[137]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[136]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[135]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[134]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[133]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[132]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[131]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[130]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[129]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[128]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[127]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[126]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[143]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[142]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[141]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[140]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[139]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[138]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[137]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[136]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[135]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[134]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[133]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[132]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[131]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[130]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[129]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[128]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[127]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[126]\);
    
    \cnt_recive[5]\ : DFN1E0C0
      port map(D => N_32, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[5]_net_1\);
    
    \signal_send_0/data_m2_e_0_2\ : NOR3A
      port map(A => \signal_send_0/data_m2_e_0_1_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive[1]_net_1\, Y => 
        \signal_send_0/data_m2_e_0_2_net_1\);
    
    \signal_send_0/data_all_4_i_a2[2]\ : NOR2A
      port map(A => \signal_send_0/N_377\, B => 
        \data_all[2]_net_1\, Y => \signal_send_0/N_871\);
    
    \signal_send_0/data_all_4_i_a2[59]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[59]_net_1\, Y => \signal_send_0/N_761\);
    
    \signal_send_0/m62_0_4\ : OA1
      port map(A => \signal_send_0/m62_0_4_tz_0_net_1\, B => 
        \signal_send_0/m62_0_4_tz_1_net_1\, C => 
        \signal_send_0/N_1660\, Y => 
        \signal_send_0/m62_0_4_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[29]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[30]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[28]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[29]\);
    
    \test_pad/U0/U0\ : IOPAD_TRI
      port map(D => \test_pad/U0/NET1\, E => \test_pad/U0/NET2\, 
        PAD => test);
    
    \signal_send_0/data_all_4_i[147]\ : OA1C
      port map(A => \signal_send_0/N_314\, B => 
        \data_all[147]_net_1\, C => 
        \signal_send_0/data_all_4_i_0[147]_net_1\, Y => N_1597);
    
    \data_all[91]\ : DFN1E0C0
      port map(D => N_155, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[91]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_15\ : AND2
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[1]\);
    
    \data_all[109]\ : DFN1E0C0
      port map(D => \data_all_4[109]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[109]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[67]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[93]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[67]\);
    
    \signal_send_0/data_all_4_0[110]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[110]_net_1\, C => \signal_send_0/N_676\, Y => 
        \data_all_4[110]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_5[2]\ : NOR2B
      port map(A => \data_all[114]_net_1\, B => 
        \signal_send_0/N_1675\, Y => \signal_send_0/N_547\);
    
    \signal_send_0/data_all_4_0[108]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[108]_net_1\, C => \signal_send_0/N_680\, Y => 
        \data_all_4[108]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\);
    
    \signal_send_0/data_all_4_0_i_a3[103]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[103]_net_1\, Y => \signal_send_0/N_648\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[0]\ : DFN1
      port map(D => \data_all[159]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[86]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[85]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[86]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[17]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[17]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[91]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[91]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[91]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[11]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[12]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[11]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[94]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[93]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[94]\);
    
    \signal_send_0/data_all_4_0_a2_1_i[111]\ : OR2A
      port map(A => \signal_send_0/N_337\, B => N_378, Y => 
        \signal_send_0/N_1713\);
    
    \signal_send_0/m85_2\ : NOR2A
      port map(A => \signal_send_0/m85_0\, B => 
        \cnt_recive[3]_net_1\, Y => \signal_send_0/m85_2_net_1\);
    
    \signal_send_0/m81_i_1\ : AO1
      port map(A => \signal_send_0/m81_i_a3_1_0_net_1\, B => 
        \signal_send_0/N_1583\, C => 
        \signal_send_0/m81_i_0_net_1\, Y => 
        \signal_send_0/m81_i_1_net_1\);
    
    \signal_send_0/cnt_recive_n2_i\ : XA1C
      port map(A => \cnt_recive[2]_net_1\, B => 
        \signal_send_0/N_46\, C => N_378, Y => N_38);
    
    \signal_send_0/data_all_4_i_0[54]\ : NOR3
      port map(A => \signal_send_0/N_1776\, B => N_378, C => 
        \signal_send_0/N_1777\, Y => N_229);
    
    \signal_send_0/cnt_send_n22\ : XA1B
      port map(A => \signal_send_0/cnt_send_c21_net_1\, B => 
        \cnt_send[22]_net_1\, C => N_378, Y => cnt_send_n22);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, B => 
        \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, C => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[45]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[45]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[45]\);
    
    \signal_send_0/cnt_recive_n13\ : XA1C
      port map(A => \signal_send_0/N_57\, B => 
        \cnt_recive[13]_net_1\, C => N_378, Y => cnt_recive_n13);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[86]\ : DFN1
      port map(D => \data_all[73]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[86]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[3]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[4]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[3]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[29]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[29]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[29]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[146]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[14]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[146]\);
    
    \signal_send_0/un38_data_send_buffer_812_i_m3\ : MX2
      port map(A => \signal_send_0/N_455\, B => 
        \signal_send_0/N_453\, S => \cnt_send[2]_net_1\, Y => 
        \signal_send_0/N_450\);
    
    \signal_send_0/data_send_buffer_3_1_a2_10_1[6]\ : NOR3B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_10_1[6]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[132]\ : DFN1
      port map(D => \data_all[27]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[132]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_17_0[3]\ : NOR2
      port map(A => N_378, B => I_17_1, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_17_0[3]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[45]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[115]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[45]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[7]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[8]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[7]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[34]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[126]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[34]\);
    
    \signal_send_0/cnt_recive_n3_i\ : XA1C
      port map(A => \cnt_recive[3]_net_1\, B => 
        \signal_send_0/N_1491\, C => N_378, Y => N_36);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[131]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[130]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[131]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[126]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[34]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[126]\);
    
    \signal_send_0/data_all_4_i_0_0[139]\ : AO1A
      port map(A => \data_all[139]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[139]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[48]\ : DFN1
      port map(D => \data_all[111]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[48]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[112]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[113]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[111]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[112]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_21\ : NOR3C
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_4_net_1\, B => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_3\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_16_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_21_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_1\ : 
        OA1
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_86\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[128]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[127]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[128]\);
    
    \signal_send_0/cnt_RNIGNDJ1_0[3]\ : NOR3B
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/tx_uart27_6\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart30_4\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIMR1A3_1\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, B => 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, Y
         => \ident_coreinst/IICE_comm2iice[9]\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNO_1\ : 
        OA1
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/b9_96_cLqgOF3_1\, B
         => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\, C
         => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\, Y
         => 
        \ident_coreinst/comm_block_INST/jtagi/un1_b9_96_cLqgOF3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[2]\ : DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_1[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\);
    
    \cnt_recive_end[6]\ : DFN1C0
      port map(D => cnt_recive_end_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[6]_net_1\);
    
    \signal_send_0/data_all_4_i_0[87]\ : NOR3
      port map(A => \signal_send_0/N_1794\, B => N_378, C => 
        \signal_send_0/N_1795\, Y => N_163);
    
    \signal_send_0/cnt_m3_0_a2\ : NOR3C
      port map(A => \signal_send_0/cnt_m3_0_a2_3_net_1\, B => 
        \signal_send_0/cnt_m3_0_a2_2_net_1\, C => 
        \signal_send_0/cnt_N_13_mux\, Y => 
        \signal_send_0/cnt_N_9_mux_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[4]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[4]\);
    
    \single_recive_0/cnt[8]\ : DFN1C0
      port map(D => \single_recive_0/I_23\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[8]_net_1\);
    
    \data_all[48]\ : DFN1E0C0
      port map(D => N_241, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[48]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_12_2\, CLK
         => sys_clk_c, CLR => \ident_coreinst/IICE_INST/b5_voSc3\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_14[3]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_5[3]_net_1\, B => 
        \signal_send_0/data_send_buffer_3_1_4[3]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_10[3]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_14[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[101]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[102]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[100]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[101]\);
    
    \signal_send_0/data_all_4_0_i[97]\ : NOR3
      port map(A => \signal_send_0/N_1890\, B => N_378, C => 
        \signal_send_0/N_1892\, Y => N_258);
    
    \signal_send_0/un1_cnt_end_1_I_55\ : NOR3C
      port map(A => \signal_send_0/cnt_end[2]_net_1\, B => 
        \signal_send_0/cnt_end[3]_net_1\, C => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_1[0]\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\);
    
    \signal_send_0/un37_data_send_buffer_1773_i_i_a3\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_384\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[58]\ : DFN1
      port map(D => \data_all[101]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[58]_net_1\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_14\ : OR3
      port map(A => \cnt_send[13]_net_1\, B => 
        \cnt_send[12]_net_1\, C => 
        \signal_send_0/un17_data_send_bufferlt30_22_5_net_1\, Y
         => \signal_send_0/un17_data_send_bufferlt30_22_14_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[149]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[11]\);
    
    \data_all[95]\ : DFN1E0C0
      port map(D => N_147, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[95]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[71]\ : DFN1
      port map(D => \data_all[88]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[71]_net_1\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[135]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[136]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[134]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[135]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[19]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[19]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[19]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[1]\);
    
    \signal_send_0/un7_cnt_1_I_11\ : NOR2B
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[0]\, Y => \signal_send_0/N_9\);
    
    \signal_send_0/data_all_4_i_0_a3_0[31]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1764\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[16]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[16]_net_1\);
    
    \single_recive_0/cnt_RNI73E41[11]\ : NOR3B
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/m23_2\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m31_4\);
    
    \signal_send_0/data_all_4_i_0[15]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0_0[15]_net_1\, Y => N_293);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[3]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3[126]\ : NOR2A
      port map(A => \signal_send_0/N_320\, B => 
        \data_all[126]_net_1\, Y => \signal_send_0/N_1832\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIMR1A3_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, B => 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, Y
         => \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\);
    
    \signal_send_0/data_all_4_i_o3[135]\ : OR3B
      port map(A => 
        \signal_send_0/data_all_4_i_o2_1_i_a3_0[135]_net_1\, B
         => \signal_send_0/un5_idle_recive_23_net_1\, C => 
        \signal_send_0/OVER_net_1\, Y => \signal_send_0/N_366\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[142]\ : DFN1
      port map(D => \data_all[17]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[142]_net_1\);
    
    \single_recive_0/cnt_RNIMS0I_2[4]\ : NOR2
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m99_2\);
    
    \signal_send_0/m62_0_451\ : OA1
      port map(A => \signal_send_0/m62_0_a3_12_0_net_1\, B => 
        \signal_send_0/m62_0_a3_13_0_net_1\, C => 
        \signal_send_0/N_1658\, Y => 
        \signal_send_0/m62_0_451_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2_I_1\ : 
        AND2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_TMP[0]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[62]\ : DFN1
      port map(D => \data_all[97]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[62]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_0[0]\ : NOR2B
      port map(A => \signal_send_0/N_454\, B => 
        \signal_send_0/N_1660\, Y => \signal_send_0/N_563\);
    
    \data_all[57]\ : DFN1E0C0
      port map(D => N_223, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[57]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_24\ : XO1
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_18_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_24_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[113]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[112]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[113]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[128]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[128]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[128]\);
    
    \data_all[123]\ : DFN1E0C0
      port map(D => \data_all_4[123]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[123]_net_1\);
    
    \signal_send_0/data_all_4_i_0[129]\ : AO1A
      port map(A => \data_all[129]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[129]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[120]\ : NOR2
      port map(A => \signal_send_0/N_320\, B => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_1831\);
    
    \signal_send_0/cnt_RNIEPL73[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart28_2\, B => 
        \signal_send_0/tx_uart32_2\, C => 
        \signal_send_0/tx_uart32_4\, Y => 
        \signal_send_0/tx_uart32_7\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[98]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[62]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[98]\);
    
    \signal_send_0/un38_data_send_buffer_532\ : MX2
      port map(A => \data_all[48]_net_1\, B => 
        \data_all[56]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_529_3\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[22]\ : DFN1
      port map(D => \data_all[137]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[22]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[36]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[35]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[36]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_14\ : 
        AX1C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/I_14_2\);
    
    \signal_send_0/m77_0_463\ : OA1
      port map(A => \signal_send_0/m77_0_463_tz_0_net_1\, B => 
        \signal_send_0/m77_0_463_tz_1_net_1\, C => 
        \signal_send_0/N_1912\, Y => 
        \signal_send_0/m77_0_463_net_1\);
    
    \signal_send_0/cnt_RNIRUMP[11]\ : NOR2A
      port map(A => \signal_send_0/cnt[11]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/un1_cnt_0\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[2]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[4]\);
    
    \signal_send_0/data_send_buffer_3_1_2[3]\ : AO1
      port map(A => \data_all[59]_net_1\, B => 
        \signal_send_0/N_1690\, C => \signal_send_0/N_538\, Y => 
        \signal_send_0/data_send_buffer_3_1_2[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[10]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[9]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[10]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[84]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[76]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[84]\);
    
    \single_recive_0/cnt_RNO[3]\ : XA1
      port map(A => \single_recive_0/N_10\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[3]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_3\ : OR2
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_3_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_17_7\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_17_4_net_1\, B => 
        \signal_send_0/cnt_m3_0_a2_2_1_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_17_5_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_17_7_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[155]\ : DFN1
      port map(D => \data_all[4]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[155]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[128]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[129]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[127]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[128]\);
    
    \data_all[140]\ : DFN1E0C0
      port map(D => N_1604, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[140]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[0]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2[6]\ : NOR3B
      port map(A => \signal_send_0/N_450\, B => 
        \signal_send_0/N_878\, C => \cnt_send[3]_net_1\, Y => 
        \signal_send_0/N_494\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[66]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[65]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[66]\);
    
    \data_all[83]\ : DFN1E0C0
      port map(D => N_171, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[83]_net_1\);
    
    \signal_send_0/m77_0_464_tz_0\ : AO1
      port map(A => \data_all[37]_net_1\, B => 
        \signal_send_0/N_887\, C => 
        \signal_send_0/m77_0_a3_11_0_net_1\, Y => 
        \signal_send_0/m77_0_464_tz_0_net_1\);
    
    \single_recive_0/data_recive_RNO_0[2]\ : AOI1B
      port map(A => \single_recive_0/m42_4\, B => 
        \single_recive_0/N_116_mux\, C => \data_recive_buffer[2]\, 
        Y => \single_recive_0/m89_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_comm2iice[2]\, B => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\);
    
    \signal_send_0/cnt_send_c21\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c20_net_1\, B => 
        \cnt_send[21]_net_1\, Y => 
        \signal_send_0/cnt_send_c21_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[61]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[61]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[61]\);
    
    \cnt_send[11]\ : DFN1E1C0
      port map(D => cnt_send_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[11]_net_1\);
    
    \signal_send_0/OVER_12_8\ : OR3
      port map(A => \signal_send_0/OVER_12_2_net_1\, B => 
        \signal_send_0/OVER_12_1_net_1\, C => 
        \signal_send_0/OVER_12_6_net_1\, Y => 
        \signal_send_0/OVER_12_8_net_1\);
    
    \signal_send_0/m81_i_a2\ : NOR2B
      port map(A => \signal_send_0/un17_data_send_buffer\, B => 
        \cnt_send[4]_net_1\, Y => \signal_send_0/N_1917\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[51]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[52]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[50]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[51]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[55]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[56]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[54]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[55]\);
    
    \cnt_send[2]\ : DFN1E1C0
      port map(D => cnt_send_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[2]_net_1\);
    
    \data_all[116]\ : DFN1E0C0
      port map(D => N_1722, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[116]_net_1\);
    
    \single_recive_0/cnt_RNIS1UC3[2]\ : OR2B
      port map(A => \single_recive_0/m99_4\, B => 
        \single_recive_0/N_116_mux\, Y => 
        \single_recive_0/un1_cnt\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_23\ : NOR3C
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_14_net_1\, B => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_13_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_19_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_23_net_1\);
    
    \signal_send_0/un12_cnt_send_5_0_x2\ : XOR2
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_send[5]_net_1\, Y => \signal_send_0/N_78_i\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_0\ : NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_0_sqmuxa_1\);
    
    send_end_RNI08T6 : CLKINT
      port map(A => \send_end\, Y => N_378);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[6]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[6]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[6]_net_1\);
    
    \data_all[77]\ : DFN1E0C0
      port map(D => N_183, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[77]_net_1\);
    
    \signal_send_0/data_all_4_i[72]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[72]_net_1\, Y => N_193);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[31]\ : DFN1
      port map(D => \data_all[128]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[31]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[74]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[73]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[74]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[131]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[131]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[131]\);
    
    \signal_send_0/cnt_m4_0_a2_11_5\ : NOR3C
      port map(A => \signal_send_0/cnt_m3_0_a2_2_1_net_1\, B => 
        \signal_send_0/cnt_m4_0_a2_11_1_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_11_3_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_11_5_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[54]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1777\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[0]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => \ident_coreinst/IICE_INST/b9_ubTt3_Mxf\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[46]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[45]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[46]\);
    
    \signal_send_0/OVER\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/OVER_11_net_1\, Y => 
        \signal_send_0/OVER_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[93]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[92]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[93]\);
    
    \signal_send_0/data_all_4_i[56]\ : NOR3
      port map(A => \signal_send_0/N_767\, B => N_378, C => 
        \signal_send_0/N_768\, Y => N_225);
    
    \signal_send_0/cnt_m4_0_a2_7\ : NOR3B
      port map(A => \signal_send_0/cnt_m4_0_a2_7_4_net_1\, B => 
        \signal_send_0/cnt_m4_0_a2_7_3_net_1\, C => 
        \signal_send_0/N_71\, Y => \signal_send_0/cnt_N_11_mux_1\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_2\ : 
        OAI1
      port map(A => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, B => 
        \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\);
    
    \signal_send_0/m62_0_a3_13_0\ : NOR2B
      port map(A => \data_all[87]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m62_0_a3_13_0_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[14]\ : DFN1
      port map(D => \data_all[145]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[14]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[42]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[118]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[42]\);
    
    \data_all[156]\ : DFN1E0C0
      port map(D => N_1589, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[156]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[115]\ : DFN1
      port map(D => \data_all[44]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[115]_net_1\);
    
    \signal_send_0/cnt_RNICPVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/un1_cnt_2\);
    
    \signal_send_0/data_send_buffer_3_1_a2_14[6]\ : NOR2B
      port map(A => \signal_send_0/N_1912\, B => 
        \signal_send_0/N_1649\, Y => \signal_send_0/N_1675\);
    
    \single_recive_0/un7_cnt_1_I_24\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[3]\, Y => 
        \single_recive_0/DWACT_FINC_E[4]\);
    
    \signal_send_0/cnt_send_107\ : NOR3C
      port map(A => \cnt_send[28]_net_1\, B => 
        \signal_send_0/cnt_send_c27_net_1\, C => 
        \signal_send_0/cnt_send_107_0_net_1\, Y => 
        \signal_send_0/N_995\);
    
    \signal_send_0/cnt_recive_n18_0_o4\ : OR2A
      port map(A => \cnt_recive[17]_net_1\, B => 
        \signal_send_0/N_61\, Y => \signal_send_0/N_62\);
    
    \signal_send_0/cnt_RNI7KVP[1]\ : NOR2B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart29_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_12\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/I_12_2\);
    
    \signal_send_0/un1_cnt_end_1_I_1\ : AND2
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end_1_sqmuxa\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_TMP[0]\);
    
    \signal_send_0/data_all_4_i[3]\ : OA1B
      port map(A => \signal_send_0/N_804_2\, B => 
        \signal_send_0/N_377\, C => 
        \signal_send_0/data_all_4_i_0[3]_net_1\, Y => N_317);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[102]\ : DFN1
      port map(D => \data_all[57]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[102]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[17]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[18]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[17]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[17]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[119]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[120]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[118]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[119]\);
    
    \signal_send_0/cnt_recive_c14_0_o4\ : OR2A
      port map(A => \cnt_recive[14]_net_1\, B => 
        \signal_send_0/N_58\, Y => \signal_send_0/N_59\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[105]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[106]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[104]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[105]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[155]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[154]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[155]\);
    
    \signal_send_0/data_all_4_i_o2_0[79]\ : OR2A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \signal_send_0/N_341\, Y => \signal_send_0/N_346\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[70]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[70]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[70]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_24\ : NOR3C
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_18_net_1\, B => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_17_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_21_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_24_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[2]\);
    
    \signal_send_0/cnt_m4_0_a2_7_3\ : NOR3C
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[24]_net_1\, C => \cnt_send[18]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_7_3_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[156]\ : DFN1
      port map(D => \data_all[3]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[156]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[93]\ : DFN1
      port map(D => \data_all[66]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[93]_net_1\);
    
    \signal_send_0/m62_0_a3_10_0\ : NOR2B
      port map(A => \data_all[47]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/m62_0_a3_10_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[141]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[142]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[140]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[141]\);
    
    \signal_send_0/data_all_4_i_0[158]\ : AO1A
      port map(A => \data_all[158]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[158]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[137]\ : AO1A
      port map(A => \data_all[137]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[137]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[55]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[105]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[55]\);
    
    \signal_send_0/cnt_m5_0_a2_1\ : NOR2B
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[12]_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_1_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[25]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[135]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[25]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[30]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[30]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[30]_net_1\);
    
    \signal_send_0/data_all_4_0_i[32]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_310\, C => 
        \signal_send_0/data_all_4_0_i_0[32]_net_1\, Y => N_234);
    
    \signal_send_0/cnt_flag_c2\ : NOR3C
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        C => \cnt_flag[2]_net_1\, Y => 
        \signal_send_0/cnt_flag_c2_net_1\);
    
    \signal_send_0/cnt_recive_n12_0\ : XA1C
      port map(A => \cnt_recive[12]_net_1\, B => 
        \signal_send_0/N_56\, C => N_378, Y => cnt_recive_n12);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[159]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[1]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[159]\);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3_1[100]\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, Y
         => \signal_send_0/N_344_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[0]\);
    
    \data_all[137]\ : DFN1E0C0
      port map(D => N_1607, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[137]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_6[6]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_1[6]_net_1\, B => 
        \signal_send_0/N_499\, C => 
        \signal_send_0/data_send_buffer_3_1_3[6]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_6[6]_net_1\);
    
    \signal_send_0/cnt_RNIOHPM9[1]\ : OR2
      port map(A => \signal_send_0/tx_uart33\, B => 
        \signal_send_0/tx_uart27\, Y => 
        \signal_send_0/un1_tx_uart27_4\);
    
    \signal_send_0/data_all_4_i_a2_0[59]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[3]\, Y => \signal_send_0/N_762\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[36]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[124]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[36]\);
    
    \signal_send_0/data_all_4_i_a2[81]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[81]_net_1\, Y => \signal_send_0/N_717\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[124]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[125]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[123]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[124]\);
    
    \signal_send_0/cnt_RNIFSVP[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart27_4\);
    
    \signal_send_0/data_send_buffer_3_1_11[2]\ : AO1
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_19_0[2]_net_1\, B
         => \signal_send_0/N_1662\, C => 
        \signal_send_0/data_send_buffer_3_1_4[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_11[2]_net_1\);
    
    \single_recive_0/cnt[9]\ : DFN1C0
      port map(D => \single_recive_0/I_26\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[9]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[25]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[26]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[25]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[25]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[72]\ : DFN1
      port map(D => \data_all[87]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[72]_net_1\);
    
    \signal_send_0/cnt_RNIOHPM9[11]\ : AO1
      port map(A => \signal_send_0/tx_uart32_7\, B => 
        \signal_send_0/tx_uart32_6_0\, C => 
        \signal_send_0/tx_uart37\, Y => 
        \signal_send_0/un1_tx_uart27_1_0\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[2]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[25]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[26]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[25]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_0\ : NOR3B
      port map(A => \signal_send_0/N_1680\, B => 
        \signal_send_0/N_1649\, C => \data_all[113]_net_1\, Y => 
        \signal_send_0/N_472\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_8\ : NOR2
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[9]_net_1\, 
        Y => \signal_send_0/send_end_0_sqmuxa_i_a3_8_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[38]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[39]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[37]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[38]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk9.b11_nFG0rDY_9e2_2_0_a3\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_comm2iice[10]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/N_30\, C => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2_0\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[141]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[19]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[141]\);
    
    \signal_send_0/cnt_send_c9\ : NOR2A
      port map(A => \cnt_send[9]_net_1\, B => 
        \signal_send_0/N_1504\, Y => 
        \signal_send_0/cnt_send_c9_net_1\);
    
    \data_all[132]\ : DFN1E0C0
      port map(D => N_1612, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[132]_net_1\);
    
    \signal_send_0/tx_uart\ : DFN1E0P0
      port map(D => \signal_send_0/tx_uart_11\, CLK => sys_clk_c, 
        PRE => sys_rest_c, E => \signal_send_0/tx_uart_11_sqmuxa\, 
        Q => tx_uart_c);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[77]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[78]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[76]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[77]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[88]\ : DFN1
      port map(D => \data_all[71]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[88]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_4[4]\ : NOR2B
      port map(A => \data_all[124]_net_1\, B => 
        \signal_send_0/N_1676\, Y => \signal_send_0/N_510\);
    
    \signal_send_0/cnt_recive_n7_i_o2\ : OR2A
      port map(A => \cnt_recive[5]_net_1\, B => 
        \signal_send_0/N_1496\, Y => \signal_send_0/N_1499\);
    
    \signal_send_0/cnt_RNIIVVP[7]\ : NOR2A
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/tx_uart29_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[116]\ : DFN1
      port map(D => \data_all[43]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[116]_net_1\);
    
    \data_all[27]\ : DFN1E0C0
      port map(D => N_269, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[27]_net_1\);
    
    \signal_send_0/un12_cnt_send_7_0_x2\ : XOR2
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_send[7]_net_1\, Y => \signal_send_0/N_1542\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[121]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[39]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[121]\);
    
    \data_all[64]\ : DFN1E0C0
      port map(D => N_209, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[64]_net_1\);
    
    \single_recive_0/data_recive_RNO[3]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m87_0\, C => 
        \single_recive_0/rx_uart_m_2\, Y => 
        \single_recive_0/data_recive_12[3]\);
    
    \signal_send_0/data_all_4_i[77]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[77]_net_1\, Y => N_183);
    
    \signal_send_0/data_all_4_i_o3_i_o2[15]\ : OR3
      port map(A => \signal_send_0/OVER_net_1\, B => 
        \signal_send_0/data_all_4_i_o2_i_o2_0[47]_net_1\, C => 
        \signal_send_0/N_346\, Y => \signal_send_0/N_316\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[100]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[99]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[100]\);
    
    \signal_send_0/data_send_buffer_3_1_3[4]\ : AO1
      port map(A => \data_all[108]_net_1\, B => 
        \signal_send_0/N_1673\, C => \signal_send_0/N_511\, Y => 
        \signal_send_0/data_send_buffer_3_1_3[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[97]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[98]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[96]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[97]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[132]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[28]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[132]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[13]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[14]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[15]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[13]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[14]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_10\ : NOR2
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[21]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_10_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\);
    
    \signal_send_0/data_all_4_i_0_0[14]\ : AO1A
      port map(A => \data_all[14]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[14]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_30\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[5]\, Y => 
        \signal_send_0/DWACT_FINC_E[6]\);
    
    \signal_send_0/data_all_4_i_0[144]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[144]_net_1\, Y => N_1600);
    
    \signal_send_0/cnt_end_RNO[9]\ : XA1B
      port map(A => \signal_send_0/cnt_end[9]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_12_3[0]\, C => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/cnt_end_5[9]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[1]/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[1]\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]\, 
        S => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[1]/Y\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_3_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[89]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[88]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[87]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[86]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[85]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[84]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[83]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[82]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[81]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[80]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[79]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[78]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[77]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[76]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[75]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[74]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[73]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[72]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[89]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[88]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[87]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[86]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[85]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[84]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[83]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[82]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[81]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[80]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[79]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[78]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[77]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[76]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[75]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[74]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[73]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[72]\);
    
    \single_recive_0/cnt_RNIH9DR[1]\ : NOR3
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m47_2\);
    
    \signal_send_0/data_all_4_i_a2[17]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[17]_net_1\, Y => 
        \signal_send_0/N_836\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]/U0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[2]\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]/Y\);
    
    \signal_send_0/data_all_4_i_0[138]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[138]_net_1\, Y => N_1606);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_3\ : 
        NOR3A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[0]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa_1\);
    
    \signal_send_0/data_all_4_i[129]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_642_2\, C => 
        \signal_send_0/data_all_4_i_0[129]_net_1\, Y => N_120);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[107]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[106]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[107]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b10_OFWNT9_Y2x_RNI0KKN3\ : 
        OR3
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a1_2\, 
        C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_2_0\);
    
    \signal_send_0/data_send_buffer_3_1_7[3]\ : AO1
      port map(A => \data_all[91]_net_1\, B => 
        \signal_send_0/N_1688\, C => \signal_send_0/N_536\, Y => 
        \signal_send_0/data_send_buffer_3_1_7[3]_net_1\);
    
    \signal_send_0/data_all_4_i[18]\ : NOR3
      port map(A => \signal_send_0/N_834\, B => N_378, C => 
        \signal_send_0/N_835\, Y => N_287);
    
    \data_all[86]\ : DFN1E0C0
      port map(D => N_165, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[86]_net_1\);
    
    \signal_send_0/m77_0_a2_3\ : NOR3B
      port map(A => \signal_send_0/N_1677\, B => 
        \signal_send_0/m77_0_a2_3_0_net_1\, C => N_378, Y => 
        \signal_send_0/N_1658\);
    
    \signal_send_0/data_all_4_i_0[41]\ : NOR3
      port map(A => \signal_send_0/N_481\, B => N_378, C => 
        \signal_send_0/N_482\, Y => N_255);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[33]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[34]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[32]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[33]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[33]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[33]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[33]\);
    
    \signal_send_0/data_all_4_i_a2[56]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[56]_net_1\, Y => \signal_send_0/N_767\);
    
    \signal_send_0/un38_data_send_buffer_651_i_m3\ : MX2
      port map(A => \signal_send_0/N_487_3\, B => 
        \signal_send_0/N_503_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_455\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[14]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[13]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[14]\);
    
    \signal_send_0/data_all_4_i_0[65]\ : AO1A
      port map(A => \data_all[65]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[65]_net_1\);
    
    \signal_send_0/cnt_send_n12\ : XA1B
      port map(A => \signal_send_0/cnt_send_c11\, B => 
        \cnt_send[12]_net_1\, C => N_378, Y => cnt_send_n12);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[139]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[138]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[139]\);
    
    \signal_send_0/data_all_4_i_a2_0[49]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \signal_send_0/N_383\, Y => \signal_send_0/N_782\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[86]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[74]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[86]\);
    
    \cnt_recive[14]\ : DFN1E0C0
      port map(D => cnt_recive_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[14]_net_1\);
    
    \signal_send_0/end_flag_RNIUH00F\ : OA1C
      port map(A => \signal_send_0/un3_end_flag\, B => 
        \signal_send_0/cnt_flag_0_sqmuxa\, C => N_378, Y => 
        vld_send_0_sqmuxa);
    
    idle_send_fall : DFN1C0
      port map(D => idle_send_fall_2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_fall\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[107]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[107]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[107]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[73]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[72]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[73]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[26]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\);
    
    \signal_send_0/data_all_4_i_o2_i_o2_0[47]\ : OR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/data_all_4_i_o2_i_o2_0[47]_net_1\);
    
    \signal_send_0/data_all_4_i_a2[21]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[21]_net_1\, Y => 
        \signal_send_0/N_828\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[5]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[60]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[61]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[59]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[60]\);
    
    \cnt_recive_end[2]\ : DFN1C0
      port map(D => cnt_recive_end_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto2);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_13\ : NOR3A
      port map(A => \signal_send_0/N_889\, B => 
        \signal_send_0/N_318\, C => \data_all[9]_net_1\, Y => 
        \signal_send_0/N_490\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[32]\ : DFN1
      port map(D => \data_all[127]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[32]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[89]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[90]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[88]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[89]\);
    
    \signal_send_0/data_all_4_i_0[140]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[140]_net_1\, Y => N_1604);
    
    \signal_send_0/m128_i\ : MX2
      port map(A => \data_all[71]_net_1\, B => 
        \data_all[79]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_1730\);
    
    \single_recive_0/un7_cnt_1_I_5\ : XOR2
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/I_5\);
    
    \data_all[134]\ : DFN1E0C0
      port map(D => N_1610, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[134]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[64]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[96]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[64]\);
    
    \signal_send_0/data_all_4_i_0[92]\ : NOR3
      port map(A => \signal_send_0/N_1804\, B => N_378, C => 
        \signal_send_0/N_1805\, Y => N_153);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[134]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[134]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[134]\);
    
    \signal_send_0/m23_0_a3\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => N_378, Y => N_24_0);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[145]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[146]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[144]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[145]\);
    
    \signal_send_0/cnt_recive_n10_0\ : XA1C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \signal_send_0/N_54\, C => N_378, Y => cnt_recive_n10);
    
    \signal_send_0/data_all_4_i_0[142]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[142]_net_1\, Y => N_1602);
    
    \signal_send_0/un5_idle_recive_14\ : NOR3C
      port map(A => \signal_send_0/un5_idle_recive_4_0_net_1\, B
         => \signal_send_0/un5_idle_recive_5_net_1\, C => 
        \signal_send_0/un5_idle_recive_10_net_1\, Y => 
        \signal_send_0/un5_idle_recive_14_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_7_6\ : NOR2B
      port map(A => \signal_send_0/cnt_m6_0_a2_7_3\, B => 
        \signal_send_0/cnt_m6_0_a2_7_4_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_7_6_net_1\);
    
    \signal_send_0/un37_data_send_buffer_1937_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_646_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[52]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[108]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[52]\);
    
    \single_recive_0/un7_cnt_1_I_13\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/N_8\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[22]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[138]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[22]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[26]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]_net_1\);
    
    \signal_send_0/cnt_recive_end_n1\ : XA1
      port map(A => \cnt_recive_end[1]_net_1\, B => 
        \cnt_recive_end[0]_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n1);
    
    \signal_send_0/cnt_recive_end_c4\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_c3_net_1\, B
         => \cnt_recive_end[4]_net_1\, Y => 
        \signal_send_0/cnt_recive_end_c4_net_1\);
    
    \signal_send_0/data_all_4_i_o3_i_o2_1[55]\ : OR2
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[55]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[69]\ : DFN1
      port map(D => \data_all[90]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[69]_net_1\);
    
    \single_recive_0/cnt[6]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[6]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[158]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[2]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[158]\);
    
    \signal_send_0/data_all_4_i_0_0[40]\ : AO1A
      port map(A => \data_all[40]_net_1\, B => 
        \signal_send_0/N_1736\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[40]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[83]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[83]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[83]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[2]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[3]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_16\);
    
    \signal_send_0/end_flag\ : DFN1E0C0
      port map(D => \signal_send_0/end_flag_1_sqmuxa\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/end_flag_2_sqmuxa\, Q => 
        \signal_send_0/end_flag_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_RNI3AM23[0]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\, B
         => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\, C
         => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m_0[0]\, 
        Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m[0]\);
    
    \single_recive_0/cnt_RNIS1UC3_0[9]\ : NOR3C
      port map(A => \single_recive_0/m31_4\, B => 
        \single_recive_0/N_104_mux\, C => \single_recive_0/m31_5\, 
        Y => \single_recive_0/data_recive30\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[13]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[13]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[95]\ : DFN1
      port map(D => \data_all[64]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[95]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[97]\ : DFN1
      port map(D => \data_all[62]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[97]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[71]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[89]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[71]\);
    
    \signal_send_0/data_all_4_i_o3_i_o2[100]\ : OR2A
      port map(A => \signal_send_0/data_N_5_mux_0\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_312\);
    
    \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_rKlrtX_RNO\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk2_no_clk_buffer_needed\, 
        B => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Y
         => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[29]\ : DFN1
      port map(D => \data_all[130]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[29]_net_1\);
    
    \sys_rest_pad/U0/U0\ : IOPAD_IN
      port map(PAD => sys_rest, Y => \sys_rest_pad/U0/NET1\);
    
    \signal_send_0/OVER_12_6\ : OR3A
      port map(A => \signal_send_0/un5_idle_recive_10_0_net_1\, B
         => \cnt_recive[15]_net_1\, C => \cnt_recive[16]_net_1\, 
        Y => \signal_send_0/OVER_12_6_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[17]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[17]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[17]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[8]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[152]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[8]\);
    
    \data_all[31]\ : DFN1E0C0
      port map(D => N_261, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[31]_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[146]\ : AO1A
      port map(A => \data_all[146]_net_1\, B => 
        \signal_send_0/N_314\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[146]_net_1\);
    
    \signal_send_0/un11_receive_endlto2\ : NOR3
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => \cnt_delay[2]_net_1\, Y => 
        \signal_send_0/un11_receive_endlt4\);
    
    \data_all[126]\ : DFN1E0C0
      port map(D => N_1726, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[126]_net_1\);
    
    \cnt_recive_end[3]\ : DFN1C0
      port map(D => cnt_recive_end_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto3);
    
    \single_recive_0/cnt_RNI73E41_0[11]\ : NOR3A
      port map(A => \single_recive_0/m12_1\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m12_4\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[154]\ : DFN1
      port map(D => \data_all[5]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[154]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNIVT0E4\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa_0\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, Y
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa\);
    
    \signal_send_0/cnt_RNISOCR4_1[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart35_4_0\, B => 
        \signal_send_0/tx_uart35_3\, C => 
        \signal_send_0/tx_uart35_5\, Y => 
        \signal_send_0/tx_uart35\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[123]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[122]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[123]\);
    
    \signal_send_0/m77_0_1\ : AO1
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_2924_tz\, C => 
        \signal_send_0/m77_0_464_net_1\, Y => 
        \signal_send_0/m77_0_1_net_1\);
    
    \signal_send_0/cnt_RNI4EPV11[11]\ : OR3
      port map(A => \signal_send_0/un1_tx_uart27_2\, B => 
        \signal_send_0/un1_tx_uart27_1_0\, C => 
        \signal_send_0/un1_tx_uart27_5\, Y => 
        \signal_send_0/un1_tx_uart27_8\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[2]\ : DFN1
      port map(D => \data_all[157]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[2]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_12[3]\ : OR3
      port map(A => \signal_send_0/N_534\, B => 
        \signal_send_0/data_send_buffer_3_1_0[3]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_7[3]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_12[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[101]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[100]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[101]\);
    
    \data_all[138]\ : DFN1E0C0
      port map(D => N_1606, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[138]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[140]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[139]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[140]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[48]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[49]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[47]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[48]\);
    
    \cnt_recive[22]\ : DFN1E0C0
      port map(D => cnt_recive_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[22]_net_1\);
    
    \signal_send_0/m18\ : XA1B
      port map(A => \cnt_send[3]_net_1\, B => 
        \signal_send_0/N_6_0\, C => N_378, Y => cnt_send_n3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_2\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\);
    
    \signal_send_0/cnt_recive_n30\ : AX1C
      port map(A => \signal_send_0/cnt_recive_c27_net_1\, B => 
        \signal_send_0/cnt_recive_169_1_net_1\, C => 
        \signal_send_0/N_1058\, Y => cnt_recive_n30);
    
    \signal_send_0/data_all_4_i_a2[20]\ : OA1C
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_all[20]_net_1\, Y => 
        \signal_send_0/N_830\);
    
    \signal_send_0/cnt_send_c13\ : NOR2B
      port map(A => \signal_send_0/cnt_send_c12_net_1\, B => 
        \cnt_send[13]_net_1\, Y => 
        \signal_send_0/cnt_send_c13_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[0]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[0]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk2.b3_nUT[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[2]\);
    
    \signal_send_0/cnt_delay_n1\ : XA1B
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => N_378, Y => cnt_delay_n1);
    
    \signal_send_0/cnt[7]\ : DFN1C0
      port map(D => \signal_send_0/I_20_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[7]_net_1\);
    
    \data_all[89]\ : DFN1E0C0
      port map(D => N_159, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[89]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[147]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[146]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[147]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_18_0[2]\ : NOR2B
      port map(A => \data_all[10]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_18_0[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[27]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[39]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1887\);
    
    \signal_send_0/cnt_RNISOCR4[0]\ : NOR2B
      port map(A => \signal_send_0/tx_uart29_7\, B => 
        \signal_send_0/tx_uart29_6\, Y => 
        \signal_send_0/tx_uart29\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[5]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[5]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[3]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[4]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[2]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[3]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3_RNIB15G3[7]\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_iice2comm\, B => 
        \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, C => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, Y => 
        \ident_coreinst/comm_block_INST/IICE_iice2comm_m\);
    
    \signal_send_0/data_all_4_i_a2[62]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[62]_net_1\, Y => \signal_send_0/N_755\);
    
    \signal_send_0/data_all_4_i_a2_0[18]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_384\, Y => 
        \signal_send_0/N_835\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, 
        B => \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\);
    
    \single_recive_0/cnt_RNIPDRV1[1]\ : NOR3C
      port map(A => \single_recive_0/m47_1\, B => 
        \single_recive_0/N_14_0\, C => \single_recive_0/m47_2\, Y
         => \single_recive_0/N_123_mux\);
    
    \signal_send_0/cnt_send_n13\ : XA1B
      port map(A => \signal_send_0/cnt_send_c12_net_1\, B => 
        \cnt_send[13]_net_1\, C => N_378, Y => cnt_send_n13);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[114]\ : DFN1
      port map(D => \data_all[45]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[114]_net_1\);
    
    \single_recive_0/cnt_RNI8TCI[10]\ : NOR2B
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/m4_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[71]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[72]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[70]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[71]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[116]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[115]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[116]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[75]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[76]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[74]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[75]\);
    
    \signal_send_0/data_all_4_i[62]\ : NOR3
      port map(A => \signal_send_0/N_755\, B => N_378, C => 
        \signal_send_0/N_756\, Y => N_213);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[15]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[16]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[15]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[15]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[160]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[159]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[160]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[20]\ : 
        AO1
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[20]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[20]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\);
    
    \data_all[35]\ : DFN1E0C0
      port map(D => N_240, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[35]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[6]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[7]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[2]_net_1\, S
         => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[13]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[12]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[13]\);
    
    \signal_send_0/data_all_4_0[122]\ : AO1A
      port map(A => \signal_send_0/N_20\, B => 
        \data_all[122]_net_1\, C => \signal_send_0/N_654\, Y => 
        \data_all_4[122]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[43]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[44]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[42]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[43]\);
    
    \signal_send_0/cnt_send_n18_i\ : XA1C
      port map(A => \cnt_send[18]_net_1\, B => 
        \signal_send_0/N_71\, C => N_378, Y => N_39);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[91]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[92]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[90]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[91]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[95]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[96]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[94]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[95]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[44]\ : DFN1
      port map(D => \data_all[115]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[44]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/U0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[0]\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/Y\);
    
    \signal_send_0/cnt_RNI5IVP[0]\ : NOR2B
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart28_2\);
    
    \signal_send_0/data_all_4_i_a2_0[7]\ : NOR2
      port map(A => \signal_send_0/N_648_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_857\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[114]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[113]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[114]\);
    
    \signal_send_0/data_all_4_i_0[149]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[149]_net_1\, Y => N_1595);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[20]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[19]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[20]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[9]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[167]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[166]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[135]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[25]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[135]\);
    
    \single_recive_0/data_recive[7]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[7]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[7]\);
    
    \cnt_recive[27]\ : DFN1E0C0
      port map(D => cnt_recive_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[27]_net_1\);
    
    \cnt_recive[29]\ : DFN1E0C0
      port map(D => cnt_recive_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[29]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[1]\);
    
    \signal_send_0/m77_0_a2_0\ : NOR2B
      port map(A => \signal_send_0/N_1662\, B => 
        \signal_send_0/N_887\, Y => \signal_send_0/N_1910\);
    
    \signal_send_0/data_all_4_0_i_a3[97]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[97]_net_1\, Y => \signal_send_0/N_1890\);
    
    \signal_send_0/data_all_4_i_0_a3_0[63]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1784\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIKL9U\ : 
        NOR2
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\);
    
    \cnt_recive[25]\ : DFN1E0C0
      port map(D => cnt_recive_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[25]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_25[4]\ : NOR2B
      port map(A => \signal_send_0/N_1660\, B => 
        \signal_send_0/N_1645\, Y => \signal_send_0/N_1690\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[54]\ : DFN1
      port map(D => \data_all[105]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[54]_net_1\);
    
    AFLSDF_INV_0 : INV
      port map(A => N_378, Y => \AFLSDF_INV_0\);
    
    \signal_send_0/data_all_4_i_0[85]\ : NOR3
      port map(A => \signal_send_0/N_1789\, B => N_378, C => 
        \signal_send_0/N_1791\, Y => N_167);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[7]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[7]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[7]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[58]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[58]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[58]\);
    
    \signal_send_0/send_RNIACO65\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/tx_uart37\, Y => 
        \signal_send_0/un1_tx_uart42\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[52]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[53]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[51]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[52]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[16]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[16]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[16]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[79]\ : DFN1
      port map(D => \data_all[80]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[79]_net_1\);
    
    \data_all[47]\ : DFN1E0C0
      port map(D => N_243, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[47]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[92]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[92]_net_1\, Y => \signal_send_0/N_1804\);
    
    \signal_send_0/data_all_4_i_0_a3[94]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[94]_net_1\, Y => \signal_send_0/N_1809\);
    
    \signal_send_0/cnt_m3_0_a2_2\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_4_0\, B => 
        \signal_send_0/cnt_m5_0_a2_6_net_1\, C => 
        \signal_send_0/cnt_m3_0_a2_2_4_net_1\, Y => 
        \signal_send_0/cnt_N_9_mux_2\);
    
    \signal_send_0/data_send_buffer_3_1_8[0]\ : OR3
      port map(A => \signal_send_0/N_569\, B => 
        \signal_send_0/N_566\, C => 
        \signal_send_0/data_send_buffer_3_1_5[0]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_8[0]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[95]\ : NOR3
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1812\);
    
    \signal_send_0/data_all_4_i_o3_0_0_o3_2[100]\ : OR3
      port map(A => \signal_send_0/OVER_12_7_net_1\, B => 
        \signal_send_0/OVER_12_8_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_0_0_o3_0[100]_net_1\, Y
         => \signal_send_0/N_344_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[76]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[76]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[76]\);
    
    \signal_send_0/OVER_12_2\ : OR2
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[9]_net_1\, Y => 
        \signal_send_0/OVER_12_2_net_1\);
    
    \single_recive_0/cnt[1]\ : DFN1C0
      port map(D => \single_recive_0/I_5\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[1]_net_1\);
    
    \signal_send_0/data_all_4_i_o2[7]\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => \signal_send_0/N_341\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[3]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_191\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[3]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[16]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[16]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[16]\);
    
    \signal_send_0/OVER_12_1\ : OR2
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_recive[7]_net_1\, Y => 
        \signal_send_0/OVER_12_1_net_1\);
    
    \signal_send_0/data_all_4_i_0[40]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_1736\, C => 
        \signal_send_0/data_all_4_i_0_0[40]_net_1\, Y => N_257);
    
    \signal_send_0/cnt_send_n24\ : XA1B
      port map(A => \signal_send_0/cnt_N_10_mux\, B => 
        \cnt_send[24]_net_1\, C => N_378, Y => cnt_send_n24);
    
    \rx_uart_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rx_uart_pad/U0/NET1\, Y => rx_uart_c);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[66]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[94]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[66]\);
    
    \signal_send_0/data_all_4_i_0[9]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0_0[9]_net_1\, Y => N_305);
    
    \signal_send_0/cnt_send_n27\ : XA1B
      port map(A => \signal_send_0/cnt_send_c26_net_1\, B => 
        \cnt_send[27]_net_1\, C => N_378, Y => cnt_send_n27);
    
    \signal_send_0/data_all_4_0_a2_0[122]\ : NOR3A
      port map(A => \data_recive_buffer[2]\, B => N_378, C => 
        \signal_send_0/N_320\, Y => \signal_send_0/N_654\);
    
    \signal_send_0/data_send_buffer_3_1_11[4]\ : OR3
      port map(A => \signal_send_0/N_514\, B => 
        \signal_send_0/data_send_buffer_3_1_0[4]_net_1\, C => 
        \signal_send_0/data_send_buffer_3_1_5[4]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_11[4]_net_1\);
    
    \signal_send_0/cnt_send_c17_0_o4\ : OR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_4_0\, B => 
        \signal_send_0/cnt_m5_0_a2_6_net_1\, C => 
        \cnt_send[17]_net_1\, Y => \signal_send_0/N_71\);
    
    \signal_send_0/m77_0_462\ : OA1
      port map(A => \signal_send_0/m77_0_462_tz_0_net_1\, B => 
        \signal_send_0/m77_0_462_tz_1_net_1\, C => 
        \signal_send_0/N_1659\, Y => 
        \signal_send_0/m77_0_462_net_1\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIEGED1_1\ : 
        NOR3A
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        C => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_fFfsjX_0\);
    
    \signal_send_0/cnt_end[4]\ : DFN1C0
      port map(D => \signal_send_0/I_35\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt_end[4]_net_1\);
    
    \signal_send_0/cnt_recive_c12_0_o4\ : OR2A
      port map(A => \cnt_recive[12]_net_1\, B => 
        \signal_send_0/N_56\, Y => \signal_send_0/N_57\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[1]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[18]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[18]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[18]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[15]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[15]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[15]\);
    
    \single_recive_0/data_recive_RNO[0]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m93_0\, C => 
        \single_recive_0/rx_uart_m\, Y => 
        \single_recive_0/data_recive_12[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[94]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[94]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[94]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[141]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[140]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[141]\);
    
    \signal_send_0/cnt_RNISMVJ1[3]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart32_5\, Y => 
        \signal_send_0/tx_uart37_6\);
    
    \cnt_recive_end[4]\ : DFN1C0
      port map(D => cnt_recive_end_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[4]_net_1\);
    
    \signal_send_0/data_all_4_i_o3[7]\ : OR2A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_341\, Y => \signal_send_0/N_377\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[157]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[157]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[157]\);
    
    \signal_send_0/data_all_4_i[67]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_804_2\, C => 
        \signal_send_0/data_all_4_i_0[67]_net_1\, Y => N_203);
    
    \signal_send_0/data_all_4_0_i_a3_0[33]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_1877\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_nUTQ_XlK_RNI6U8F\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_INST/b8_nUTQ_XlK\, B => 
        \ident_coreinst/IICE_comm2iice[3]\, C => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_5tt_m2_e_0\);
    
    \signal_send_0/data_send_buffer_3_1_a2_22[4]\ : NOR2B
      port map(A => \signal_send_0/N_1660\, B => 
        \signal_send_0/N_887\, Y => \signal_send_0/N_968\);
    
    \signal_send_0/receive_end2lto8\ : AO1
      port map(A => \signal_send_0/receive_end2lt7\, B => 
        receive_end2lto7, C => receive_end2lto8, Y => 
        \signal_send_0/receive_end2lt9\);
    
    \signal_send_0/data_send_buffer_3_1_a2_4[2]\ : NOR2B
      port map(A => \data_all[122]_net_1\, B => 
        \signal_send_0/N_1676\, Y => \signal_send_0/N_546\);
    
    \signal_send_0/data_send_buffer_3_1_a2_2[2]\ : NOR2B
      port map(A => \data_all[138]_net_1\, B => 
        \signal_send_0/N_1682\, Y => \signal_send_0/N_544\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[135]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[134]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[135]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_3\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\);
    
    \signal_send_0/m77_0_462_tz_0\ : AO1
      port map(A => \data_all[133]_net_1\, B => 
        \signal_send_0/N_887\, C => 
        \signal_send_0/m77_0_a3_2_0_net_1\, Y => 
        \signal_send_0/m77_0_462_tz_0_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[32]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[117]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[118]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[116]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[117]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[95]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[65]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[95]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[18]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[142]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[18]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum_0[0]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_ack\, CLK
         => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_9_0\ : NOR2A
      port map(A => \signal_send_0/N_1656\, B => 
        \data_all[41]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_9_0_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_29\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_24_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_23_net_1\, C => 
        N_378, Y => \signal_send_0/send_end_0_sqmuxa_i_29_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[80]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[79]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[80]\);
    
    \signal_send_0/end_flag_RNIS4TD1\ : NOR3C
      port map(A => \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\, B
         => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, C => 
        \signal_send_0/cnt_flag_0_sqmuxa_2\, Y => 
        \signal_send_0/cnt_flag_0_sqmuxa\);
    
    \signal_send_0/un1_cnt_end_1_I_36\ : XOR2
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_11[0]\, Y => 
        \signal_send_0/I_36\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[39]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[121]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[39]\);
    
    \signal_send_0/un7_cnt_1_I_18\ : AND3
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[2]\);
    
    \signal_send_0/cnt_m6_0_a2_17\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_4_0\, B => 
        \signal_send_0/cnt_m5_0_a2_6_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_17_7_net_1\, Y => 
        \signal_send_0/cnt_send_c25\);
    
    \data_all[62]\ : DFN1E0C0
      port map(D => N_213, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[62]_net_1\);
    
    \signal_send_0/un5_idle_recive_12\ : NOR3C
      port map(A => \signal_send_0/un5_idle_recive_1_net_1\, B
         => \signal_send_0/un5_idle_recive_2_net_1\, C => 
        \signal_send_0/un5_idle_recive_5_0_net_1\, Y => 
        \signal_send_0/un5_idle_recive_12_net_1\);
    
    \signal_send_0/un7_cnt_1_I_27\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[4]\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/N_3\);
    
    \signal_send_0/data_all_4_0_i_a3[120]\ : NOR2A
      port map(A => \signal_send_0/N_320\, B => 
        \data_all[120]_net_1\, Y => \signal_send_0/N_1830\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[20]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[21]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[19]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[20]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[25]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[25]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[25]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[99]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[99]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[99]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_2\ : OR2
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_send[24]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_2_net_1\);
    
    \signal_send_0/cnt_recive_c1_0_o4_0_o3\ : OR2B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_46\);
    
    \signal_send_0/data_all_4_i_0_o2[40]\ : OR2B
      port map(A => \signal_send_0/data_N_5_mux_1\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_1736\);
    
    \signal_send_0/cnt_m3_0_a2_2_1\ : NOR2B
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[20]_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_2_1_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[13]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[13]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[9]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[151]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[9]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[56]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[57]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[55]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[56]\);
    
    \data_all[111]\ : DFN1E0C0
      port map(D => N_1717, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[111]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[39]\ : DFN1
      port map(D => \data_all[120]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[39]_net_1\);
    
    \signal_send_0/m62_0_a3_8_0\ : NOR2B
      port map(A => \data_all[63]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/m62_0_a3_8_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[161]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[160]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[161]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_12\ : OR3
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_send[25]_net_1\, C => \cnt_send[4]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_12_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_RNI0GM6\ : 
        CLKINT
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_voSc3\);
    
    \signal_send_0/un38_data_send_buffer_1097_i_a2_5_0_a2\ : 
        NOR2A
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \signal_send_0/N_889\);
    
    \signal_send_0/data_all_4_i_a2[57]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_all[57]_net_1\, Y => \signal_send_0/N_765\);
    
    \cnt_send[22]\ : DFN1E1C0
      port map(D => cnt_send_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[22]_net_1\);
    
    \signal_send_0/cnt_delay_c1\ : NOR2B
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, Y => 
        \signal_send_0/cnt_delay_c1_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[10]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[10]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[10]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[38]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1885\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[2]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[3]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[2]\);
    
    \signal_send_0/cnt_send_n6_i\ : XA1C
      port map(A => \cnt_send[6]_net_1\, B => 
        \signal_send_0/N_1498\, C => N_378, Y => N_1488);
    
    \signal_send_0/cnt_m6_0_a2_11\ : NOR3B
      port map(A => \signal_send_0/cnt_m6_0_a2_11_6_net_1\, B => 
        \signal_send_0/data_m2_e_0_1_net_1\, C => 
        \signal_send_0/N_46\, Y => \signal_send_0/cnt_N_13_mux_0\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[43]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[117]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[43]\);
    
    \signal_send_0/cnt_recive_c28\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_c27_net_1\, B => 
        \cnt_recive[28]_net_1\, Y => 
        \signal_send_0/cnt_recive_c28_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[102]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_647\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk3.b8_vABZ3qsY/U0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\, B
         => \ident_coreinst/IICE_INST/b10_vbTtJX_Y2x\, S => 
        \ident_coreinst/IICE_INST/b9_vbTtJX_ab\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk3_b8_vABZ3qsY/Y\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[160]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[0]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[160]\);
    
    \signal_send_0/data_all_4_i_0_a3[36]\ : NOR2A
      port map(A => \signal_send_0/N_310\, B => 
        \data_all[36]_net_1\, Y => \signal_send_0/N_1765\);
    
    \data_all[151]\ : DFN1E0C0
      port map(D => \data_all_4[151]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[151]_net_1\);
    
    \single_recive_0/data_recive[3]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[3]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[3]\);
    
    \signal_send_0/data_all_4_i_a2_0[16]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_481_2\, Y
         => \signal_send_0/N_839\);
    
    \signal_send_0/data_all_4_i_0_a3[91]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[91]_net_1\, Y => \signal_send_0/N_1802\);
    
    \signal_send_0/cnt_RNINHVJ1[2]\ : NOR3C
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/tx_uart31_1\, Y => 
        \signal_send_0/tx_uart31_5\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/un1_b13_PLF_2grFt_FH923_i_a3\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_comm2iice[5]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/N_30\, C => 
        \ident_coreinst/IICE_INST/N_1551\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\);
    
    \cnt_send[14]\ : DFN1E1C0
      port map(D => cnt_send_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[14]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[144]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[16]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[144]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[9]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[3]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[9]_net_1\);
    
    \signal_send_0/data_all_4_i_0[47]\ : NOR3
      port map(A => \signal_send_0/N_1774\, B => N_378, C => 
        \signal_send_0/N_1775\, Y => N_243);
    
    \cnt_recive[28]\ : DFN1E0C0
      port map(D => cnt_recive_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[28]_net_1\);
    
    \signal_send_0/data_all_4_i_0[36]\ : NOR3
      port map(A => \signal_send_0/N_1765\, B => N_378, C => 
        \signal_send_0/N_1766\, Y => N_259);
    
    \signal_send_0/m77_0_464\ : AOI1D
      port map(A => \signal_send_0/m77_0_464_tz_0_net_1\, B => 
        \signal_send_0/m77_0_464_tz_1_net_1\, C => 
        \signal_send_0/N_1660\, Y => 
        \signal_send_0/m77_0_464_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[142]\ : AO1A
      port map(A => \data_all[142]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[142]_net_1\);
    
    \signal_send_0/cnt_recive_n21_0\ : XA1C
      port map(A => \cnt_recive[21]_net_1\, B => 
        \signal_send_0/N_65\, C => N_378, Y => cnt_recive_n21);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[72]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[72]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[72]\);
    
    \single_recive_0/data_recive_RNO[2]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m89_0\, C => 
        \single_recive_0/rx_uart_m_1\, Y => 
        \single_recive_0/data_recive_12[2]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_0_1\ : NOR3B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \data_all[121]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_0_net_1\);
    
    \data_all[135]\ : DFN1E0C0
      port map(D => N_1609, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[135]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_13[4]\ : NOR3C
      port map(A => \signal_send_0/N_1649\, B => 
        \signal_send_0/N_1660\, C => \data_all[52]_net_1\, Y => 
        \signal_send_0/N_519\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]\ : 
        DFN1P1
      port map(D => \GND\, CLK => sys_clk_c, PRE => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[6]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[7]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[6]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[6]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[124]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[36]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[124]\);
    
    \signal_send_0/data_send_buffer_3_1_1[6]\ : OR3
      port map(A => \signal_send_0/N_494\, B => 
        \signal_send_0/N_503\, C => \signal_send_0/N_495\, Y => 
        \signal_send_0/data_send_buffer_3_1_1[6]_net_1\);
    
    \single_recive_0/data_recive_RNO_1[2]\ : NOR3C
      port map(A => \single_recive_0/N_116_mux\, B => 
        \single_recive_0/m42_4\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_1\);
    
    \signal_send_0/un12_cnt_send_18\ : XOR2
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_18_net_1\);
    
    \cnt_delay[5]\ : DFN1E1C0
      port map(D => cnt_delay_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[5]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[61]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\, C => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1782\);
    
    \signal_send_0/data_all_4_i_0[143]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[143]_net_1\, Y => N_1601);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[0]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\);
    
    \signal_send_0/data_all_4_i_0[68]\ : AO1A
      port map(A => \data_all[68]_net_1\, B => 
        \signal_send_0/N_367\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[68]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[5]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[155]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[5]\);
    
    \signal_send_0/data_all_4_i_o2_i_a3[55]\ : NOR3
      port map(A => \signal_send_0/OVER_net_1\, B => 
        \signal_send_0/data_all_4_i_o2_i_o2_0[47]_net_1\, C => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_379\);
    
    \signal_send_0/cnt_RNI5VDP[10]\ : NOR2
      port map(A => \signal_send_0/cnt[11]_net_1\, B => 
        \signal_send_0/cnt[10]_net_1\, Y => 
        \signal_send_0/tx_uart27_6\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[31]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[31]_net_1\);
    
    \signal_send_0/cnt_recive_n21_0_o4\ : OR2A
      port map(A => \cnt_recive[20]_net_1\, B => 
        \signal_send_0/N_64\, Y => \signal_send_0/N_65\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[17]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[18]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[16]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[17]\);
    
    \signal_send_0/receive_end_1_sqmuxa\ : AOI1
      port map(A => \signal_send_0/receive_end2lt9\, B => 
        receive_end2lto9, C => N_378, Y => receive_end_1_sqmuxa);
    
    \signal_send_0/data_all_4_i_0_a3_0[43]\ : NOR2
      port map(A => \data_recive_buffer[3]\, B => 
        \signal_send_0/N_1736\, Y => \signal_send_0/N_486\);
    
    \signal_send_0/cnt_RNIHBVJ1[0]\ : NOR2B
      port map(A => \signal_send_0/tx_uart28_2\, B => 
        \signal_send_0/un1_cnt_2\, Y => 
        \signal_send_0/tx_uart28_4\);
    
    \data_all[68]\ : DFN1E0C0
      port map(D => N_201, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[68]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[14]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[14]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[14]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b4_ycsM\);
    
    \signal_send_0/un38_data_send_buffer_968_i_6\ : AO1
      port map(A => \signal_send_0/N_887\, B => 
        \signal_send_0/un38_data_send_buffer_968_i_10_tz_net_1\, 
        C => \signal_send_0/un38_data_send_buffer_968_i_11_net_1\, 
        Y => \signal_send_0/un38_data_send_buffer_968_i_6_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[89]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[71]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[89]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[24]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[23]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[24]\);
    
    \signal_send_0/un11_cnt_delay_2\ : NOR2B
      port map(A => \cnt_delay[4]_net_1\, B => 
        \cnt_delay[6]_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_2_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[95]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[95]_net_1\, Y => \signal_send_0/N_1811\);
    
    \signal_send_0/data_all_4_i_o3_i_o2_0[87]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \signal_send_0/N_355\, Y => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\);
    
    \signal_send_0/cnt_m6_0_a2_17_2\ : NOR2B
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_17_2_net_1\);
    
    \data_all[80]\ : DFN1E0C0
      port map(D => N_177, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[80]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[153]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[7]\);
    
    \signal_send_0/data_send_buffer_3_1_a2[3]\ : NOR3C
      port map(A => \signal_send_0/N_140_mux\, B => 
        \data_all[3]_net_1\, C => \signal_send_0/N_1674\, Y => 
        \signal_send_0/N_523\);
    
    \signal_send_0/data_all_4_i[50]\ : NOR3
      port map(A => \signal_send_0/N_779\, B => N_378, C => 
        \signal_send_0/N_780\, Y => N_237);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[84]\ : DFN1
      port map(D => \data_all[75]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[84]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[159]\ : DFN1
      port map(D => \data_all[0]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[159]_net_1\);
    
    \signal_send_0/data_m2_e_0_1\ : NOR2B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        \signal_send_0/data_m2_e_0_1_net_1\);
    
    \signal_send_0/data_all_4_i_0_0[141]\ : AO1A
      port map(A => \data_all[141]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[141]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[3]\);
    
    \single_recive_0/data_recive_RNO_1[5]\ : NOR3C
      port map(A => \single_recive_0/m76_6\, B => 
        \single_recive_0/m76_7\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_4\);
    
    \signal_send_0/cnt_m6_0_a2_7_5\ : NOR3C
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => 
        \signal_send_0/cnt_m6_0_a2_7_2_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_7_5_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[64]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[64]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[64]\);
    
    \cnt_delay[1]\ : DFN1E1C0
      port map(D => cnt_delay_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[109]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[108]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[109]\);
    
    \signal_send_0/un12_cnt_send_25\ : XOR2
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_send[25]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_25_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[30]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[29]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[30]\);
    
    \signal_send_0/m56_i\ : MX2
      port map(A => \data_all[151]_net_1\, B => 
        \data_all[159]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_1731\);
    
    \signal_send_0/data_all_4_i_0_a3_0[89]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_1799\);
    
    \cnt_recive[30]\ : DFN1E0C0
      port map(D => cnt_recive_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[30]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[10]\ : DFN1
      port map(D => \data_all[149]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[10]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[28]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[28]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[28]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[85]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1791\);
    
    \signal_send_0/data_all_4_i_0[8]\ : AO1A
      port map(A => \data_all[8]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[8]_net_1\);
    
    \signal_send_0/data_all_4_0_a2_0[125]\ : NOR3A
      port map(A => \data_recive_buffer[5]\, B => N_378, C => 
        \signal_send_0/N_320\, Y => \signal_send_0/N_1631\);
    
    \signal_send_0/cnt[2]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[2]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_22\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_4_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_3_net_1\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_14_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_22_net_1\);
    
    \signal_send_0/cnt_recive_end_n0\ : NOR2A
      port map(A => \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, 
        B => \cnt_recive_end[0]_net_1\, Y => cnt_recive_end_n0);
    
    \signal_send_0/cnt_send_n16_i\ : OA1C
      port map(A => \signal_send_0/N_68\, B => 
        \cnt_send[16]_net_1\, C => 
        \signal_send_0/cnt_send_n16_i_0_net_1\, Y => N_43);
    
    \data_all[53]\ : DFN1E0C0
      port map(D => N_231, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[53]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[1]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[1]_net_1\);
    
    \signal_send_0/end_flag_RNISCQK1\ : OR2
      port map(A => \signal_send_0/cnt_flag_0_sqmuxa\, B => N_378, 
        Y => \signal_send_0/un1_send_end\);
    
    \signal_send_0/data_send_buffer_3_1_2[2]\ : AO1
      port map(A => \data_all[42]_net_1\, B => 
        \signal_send_0/N_971\, C => \signal_send_0/N_555\, Y => 
        \signal_send_0/data_send_buffer_3_1_2[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[24]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[24]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[24]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[60]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[59]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[60]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[1]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[2]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[0]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[1]\);
    
    \signal_send_0/data_all_4_i[75]\ : OA1B
      port map(A => \signal_send_0/N_372\, B => 
        \data_recive_buffer[3]\, C => 
        \signal_send_0/data_all_4_i_0[75]_net_1\, Y => N_187);
    
    \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_RNIP5P9\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_iSWcC\, Y => 
        \ident_coreinst/IICE_INST/b13_PSyil9s_FMZ_L_2\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[153]\ : DFN1
      port map(D => \data_all[6]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[153]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[7]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[7]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[7]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[92]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[68]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[92]\);
    
    \signal_send_0/vld_send_down_RNIL7KK\ : NOR2A
      port map(A => \signal_send_0/vld_send_down_net_1\, B => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/un2_vld_send_down\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[121]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[122]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[120]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[121]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[51]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[51]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[51]\);
    
    \signal_send_0/data_all_4_i[48]\ : NOR3
      port map(A => \signal_send_0/N_783\, B => N_378, C => 
        \signal_send_0/N_784\, Y => N_241);
    
    \signal_send_0/cnt[8]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[8]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[8]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[1]\ : 
        AO1A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[1]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_16\ : NOR3A
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_6_net_1\, B => 
        \cnt_send[7]_net_1\, C => \cnt_send[8]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_16_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[128]\ : DFN1
      port map(D => \data_all[31]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[128]_net_1\);
    
    \cnt_recive[7]\ : DFN1E0C0
      port map(D => N_28, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[7]_net_1\);
    
    \signal_send_0/cnt_send_n20\ : XA1B
      port map(A => \signal_send_0/cnt_send_c19_net_1\, B => 
        \cnt_send[20]_net_1\, C => N_378, Y => cnt_send_n20);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[133]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[133]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[133]\);
    
    \signal_send_0/receive_end2lto6\ : OR3
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        \cnt_recive_end[6]_net_1\, C => 
        \signal_send_0/receive_end2lto6_1_net_1\, Y => 
        \signal_send_0/receive_end2lt7\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[69]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[69]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[69]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[147]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[147]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[147]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[119]\ : DFN1
      port map(D => \data_all[40]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[119]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[50]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \signal_send_0/N_384\, Y => \signal_send_0/N_780\);
    
    \signal_send_0/data_all_4_i[73]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[73]_net_1\, Y => N_191);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[137]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[23]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[137]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[117]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[117]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[117]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[40]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[39]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[40]\);
    
    \signal_send_0/data_all_4_i_0_0[11]\ : AO1A
      port map(A => \data_all[11]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[30]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[30]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[30]\);
    
    \signal_send_0/data_all_4_i_0_a3[82]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[82]_net_1\, Y => \signal_send_0/N_1787\);
    
    \signal_send_0/cnt_recive_169_1\ : NOR3B
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_recive[29]_net_1\, C => N_378, Y => 
        \signal_send_0/cnt_recive_169_1_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[6]_net_1\);
    
    \single_recive_0/cnt_RNI291I_0[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/m76_2\);
    
    \signal_send_0/data_all_4_0_i_a3[116]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_all[116]_net_1\, Y => \signal_send_0/N_1824\);
    
    \signal_send_0/un37_data_send_buffer_1939_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_648_2\);
    
    \signal_send_0/data_all_4_i_a2_0[4]\ : NOR2
      port map(A => \signal_send_0/N_377\, B => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_868\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[4]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[4]\);
    
    \data_all[100]\ : DFN1E0C0
      port map(D => N_1544, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[100]_net_1\);
    
    \signal_send_0/cnt_RNIMTUD2[0]\ : NOR3C
      port map(A => \signal_send_0/tx_uart29_3\, B => 
        \signal_send_0/tx_uart29_2\, C => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart29_7\);
    
    \signal_send_0/data_m2_e_0\ : NOR3A
      port map(A => \signal_send_0/data_m2_e_0_3_net_1\, B => 
        \signal_send_0/OVER_12_7_net_1\, C => 
        \signal_send_0/OVER_12_8_net_1\, Y => 
        \signal_send_0/data_N_5_mux_0\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b10_PKFoLX_Y2x_RNI9D5A1\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\, 
        C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1_tz\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_m3_i_tz_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[113]\ : DFN1
      port map(D => \data_all[46]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[113]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11_0[2]\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_comm2iice[4]\, B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, C => 
        \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b9_OFWNT9_ab\);
    
    \signal_send_0/un12_cnt_send_17_0_x2\ : XOR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_recive[17]_net_1\, Y => \signal_send_0/N_73_i\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[47]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[113]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[47]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[15]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[126]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[125]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[126]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[4]\ : DFN1
      port map(D => \data_all[155]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[11]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[11]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[11]\);
    
    \data_all[73]\ : DFN1E0C0
      port map(D => N_191, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[73]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[112]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[48]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[112]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11_4[2]\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, 
        B => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, Y => 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[48]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[48]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[48]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[84]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[83]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[84]\);
    
    \signal_send_0/un7_cnt_1_I_14\ : XOR2
      port map(A => \signal_send_0/N_8\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => \signal_send_0/I_14_0\);
    
    \signal_send_0/cnt_RNIE8VJ1[1]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_1\, Y => 
        \signal_send_0/tx_uart30_5\);
    
    \signal_send_0/data_all_4_i_0_a3_0[94]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1810\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[133]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[27]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[133]\);
    
    \signal_send_0/cnt_m6\ : XA1B
      port map(A => \signal_send_0/cnt_N_11_mux_1\, B => 
        \cnt_send[25]_net_1\, C => N_378, Y => cnt_send_n25);
    
    \signal_send_0/data_all_4_i_0[154]\ : AO1A
      port map(A => \data_all[154]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[154]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[63]\ : DFN1
      port map(D => \data_all[96]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[63]_net_1\);
    
    \signal_send_0/data_all_4_i_0[146]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[146]_net_1\, Y => N_1598);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[97]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[97]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[97]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[52]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[51]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[52]\);
    
    \signal_send_0/data_all_4_i[58]\ : NOR3
      port map(A => \signal_send_0/N_763\, B => N_378, C => 
        \signal_send_0/N_764\, Y => N_221);
    
    \signal_send_0/data_all_4_0_a2_0[108]\ : NOR3A
      port map(A => \data_recive_buffer[4]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_680\);
    
    \signal_send_0/data_send_buffer_3_1_0[3]\ : AO1
      port map(A => \data_all[131]_net_1\, B => 
        \signal_send_0/N_925\, C => \signal_send_0/N_532\, Y => 
        \signal_send_0/data_send_buffer_3_1_0[3]_net_1\);
    
    \signal_send_0/cnt_m5_0_a2_4_3\ : NOR2B
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_4_3_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[124]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[123]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[124]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[112]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[0]\, Y => \signal_send_0/N_1816\);
    
    \signal_send_0/vld_send_down_RNO\ : NOR2B
      port map(A => \signal_send_0/vld_send_fall_i_0\, B => 
        \vld_send\, Y => \signal_send_0/vld_send_down_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[30]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1762\);
    
    \data_all[119]\ : DFN1E0C0
      port map(D => N_1715, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[119]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[23]\ : DFN1
      port map(D => \data_all[136]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[23]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3_RNI6M3I6[7]\ : 
        AO1A
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, B => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/tdo_sig_m_0\, 
        C => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_m[0]\, 
        Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql.b3_PLF_iv_0\);
    
    \signal_send_0/data_send_buffer_3_1_7[0]\ : OA1
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_7_tz_0[0]_net_1\, B
         => \signal_send_0/data_send_buffer_3_1_7_tz_1[0]_net_1\, 
        C => \signal_send_0/N_1662\, Y => 
        \signal_send_0/data_send_buffer_3_1_7[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[53]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[107]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[53]\);
    
    \signal_send_0/un7_cnt_1_I_9\ : XOR2
      port map(A => \signal_send_0/N_10\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => \signal_send_0/I_9_0\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[23]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[137]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[23]\);
    
    \signal_send_0/data_all_4_0_a2_0[107]\ : NOR3A
      port map(A => \data_recive_buffer[3]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_682\);
    
    \signal_send_0/cnt_end[8]\ : DFN1C0
      port map(D => \signal_send_0/I_40\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt_end[8]_net_1\);
    
    \data_send_buffer[1]\ : DFN1E0C0
      port map(D => N_1716, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[1]_net_1\);
    
    \signal_send_0/data_all_4_i_o3[79]\ : OR3
      port map(A => \signal_send_0/OVER_net_1\, B => 
        \signal_send_0/data_all_4_i_o2_0_0_0[71]_net_1\, C => 
        \signal_send_0/N_346\, Y => \signal_send_0/N_372\);
    
    \signal_send_0/un7_cnt_1_I_10\ : AND3
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[0]\);
    
    \signal_send_0/data_m2_e_0_3\ : NOR2A
      port map(A => \signal_send_0/data_m2_e_0_2_net_1\, B => 
        \signal_send_0/OVER_11_net_1\, Y => 
        \signal_send_0/data_m2_e_0_3_net_1\);
    
    \signal_send_0/data_all_4_i[20]\ : NOR3
      port map(A => \signal_send_0/N_830\, B => N_378, C => 
        \signal_send_0/N_831\, Y => N_283);
    
    \cnt_send_0[1]\ : DFN1E1C0
      port map(D => N_115, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende, Q => \cnt_send_0[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[72]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[73]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[71]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[72]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[80]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[80]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[80]\);
    
    \signal_send_0/parity_check_RNO_9\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[7]_net_1\, C => 
        \signal_send_0/tx_uart35\, Y => 
        \signal_send_0/parity_check_8_i_m\);
    
    \data_all[159]\ : DFN1E0C0
      port map(D => N_1586, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[159]_net_1\);
    
    \signal_send_0/cnt_recive_n9_i\ : XA1C
      port map(A => \cnt_recive[9]_net_1\, B => 
        \signal_send_0/N_1505\, C => N_378, Y => N_24);
    
    \signal_send_0/data_all_4_i_0_a3_0[41]\ : NOR2
      port map(A => \signal_send_0/N_1736\, B => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_482\);
    
    \signal_send_0/data_all_4_i_a2[48]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[48]_net_1\, Y => \signal_send_0/N_783\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[23]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[22]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[23]\);
    
    \signal_send_0/data_all_4_i_o2_0_0_0[71]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => 
        \signal_send_0/data_all_4_i_o2_0_0_0[71]_net_1\);
    
    \signal_send_0/cnt_RNO[6]\ : XA1
      port map(A => \signal_send_0/N_7\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[6]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[8]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[8]\);
    
    \signal_send_0/m77_0_a3_6_0\ : NOR2B
      port map(A => \data_all[125]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/m77_0_a3_6_0_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[2]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[2]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_iSWcC\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[149]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[148]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[149]\);
    
    \signal_send_0/data_all_4_i_0[150]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_314\, C => 
        \signal_send_0/data_all_4_i_0_0[150]_net_1\, Y => N_1594);
    
    \signal_send_0/cnt_send_n14\ : XA1B
      port map(A => \signal_send_0/cnt_send_c13_net_1\, B => 
        \cnt_send[14]_net_1\, C => N_378, Y => cnt_send_n14);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[92]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[93]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[91]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[92]\);
    
    \signal_send_0/data_all_4_0[124]\ : AO1A
      port map(A => \signal_send_0/N_20\, B => 
        \data_all[124]_net_1\, C => \signal_send_0/N_650\, Y => 
        \data_all_4[124]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_0[6]\ : NOR2B
      port map(A => \signal_send_0/N_452\, B => 
        \signal_send_0/N_1658\, Y => \signal_send_0/N_495\);
    
    \signal_send_0/data_m2_e_1_2\ : NOR3A
      port map(A => \signal_send_0/data_m2_e_1_1_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive[1]_net_1\, Y => 
        \signal_send_0/data_m2_e_1_2_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[109]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[51]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[109]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[114]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_1821\);
    
    \data_all[121]\ : DFN1E0C0
      port map(D => \data_all_4[121]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[121]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[86]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[6]\, Y => \signal_send_0/N_1793\);
    
    \signal_send_0/data_all_4_i_0[134]\ : AO1A
      port map(A => \data_all[134]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[134]_net_1\);
    
    \signal_send_0/data_all_4_i_0[88]\ : NOR3
      port map(A => \signal_send_0/N_1796\, B => N_378, C => 
        \signal_send_0/N_1797\, Y => N_161);
    
    \signal_send_0/data_all_4_i_0[152]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0_0[152]_net_1\, Y => N_1593);
    
    \signal_send_0/data_all_4_i_a2_0[5]\ : NOR2
      port map(A => \signal_send_0/N_646_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_1638\);
    
    \signal_send_0/cnt_recive_end_n9\ : XA1
      port map(A => \signal_send_0/cnt_recive_end_19_0_net_1\, B
         => receive_end2lto9, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n9);
    
    \signal_send_0/data_all_4_0_i[112]\ : NOR3
      port map(A => \signal_send_0/N_1815\, B => N_378, C => 
        \signal_send_0/N_1816\, Y => N_1718);
    
    \signal_send_0/send_end_0_sqmuxa_i_17\ : OR3
      port map(A => \signal_send_0/N_78_i\, B => 
        \signal_send_0/N_1543\, C => 
        \signal_send_0/send_end_0_sqmuxa_i_8_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_17_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\);
    
    \signal_send_0/data_all_4_i[84]\ : NOR3
      port map(A => \signal_send_0/N_711\, B => N_378, C => 
        \signal_send_0/N_712\, Y => N_169);
    
    \signal_send_0/data_send_buffer_3_1_a2_10[3]\ : NOR2B
      port map(A => \data_all[83]_net_1\, B => 
        \signal_send_0/N_1687\, Y => \signal_send_0/N_534\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[125]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[126]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[124]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[125]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[4]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[5]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[4]_net_1\);
    
    \signal_send_0/data_all_4_0_i[98]\ : NOR3
      port map(A => \signal_send_0/N_1893\, B => N_378, C => 
        \signal_send_0/N_641\, Y => N_262);
    
    \signal_send_0/idle_send\ : DFN1E0C0
      port map(D => \signal_send_0/un1_tx_uart42\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/tx_uart_11_sqmuxa\, Q => 
        \signal_send_0/idle_send_net_1\);
    
    \signal_send_0/m62_0_a3_12_0\ : NOR2B
      port map(A => \data_all[95]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/m62_0_a3_12_0_net_1\);
    
    \data_all[56]\ : DFN1E0C0
      port map(D => N_225, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[56]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_15\ : AND2
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[1]\);
    
    \signal_send_0/m20\ : XA1B
      port map(A => \signal_send_0/N_1645\, B => 
        \cnt_send[2]_net_1\, C => N_378, Y => cnt_send_n2);
    
    \data_all[23]\ : DFN1E0C0
      port map(D => N_277, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[23]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_5_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[125]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[124]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[123]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[122]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[121]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[120]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[119]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[118]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[117]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[116]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[115]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[114]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[113]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[112]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[111]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[110]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[109]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[108]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[125]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[124]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[123]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[122]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[121]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[120]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[119]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[118]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[117]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[116]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[115]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[114]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[113]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[112]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[111]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[110]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[109]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[108]\);
    
    \signal_send_0/un1_cnt_end_1_I_33\ : AX1C
      port map(A => \signal_send_0/DWACT_ADD_CI_0_g_array_1[0]\, 
        B => \signal_send_0/cnt_end[2]_net_1\, C => 
        \signal_send_0/cnt_end[3]_net_1\, Y => 
        \signal_send_0/un1_cnt_end_1[4]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[10]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[10]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[10]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[8]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[9]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[8]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[8]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[11]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[12]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[10]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[11]\);
    
    \cnt_send_0[0]\ : DFN1E1C0
      port map(D => N_24_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send_0[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[15]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[16]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[14]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[15]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[34]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[33]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[34]\);
    
    \signal_send_0/cnt_recive_n6_i\ : XA1C
      port map(A => \cnt_recive[6]_net_1\, B => 
        \signal_send_0/N_1499\, C => N_378, Y => N_30);
    
    \single_recive_0/cnt_RNI6RCI_0[2]\ : NOR2A
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m42_0\);
    
    \signal_send_0/cnt_RNILFVJ1[4]\ : NOR3A
      port map(A => \signal_send_0/tx_uart29_1\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart31_6\);
    
    \tx_uart_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => tx_uart_c, E => \VCC\, DOUT => 
        \tx_uart_pad/U0/NET1\, EOUT => \tx_uart_pad/U0/NET2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[138]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[138]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[138]\);
    
    \signal_send_0/data_all_4_0_i_a3[99]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[99]_net_1\, Y => \signal_send_0/N_642\);
    
    \signal_send_0/data_all_4_i_a2_0[6]\ : NOR2
      port map(A => \signal_send_0/N_647_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_1636\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[78]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[82]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[78]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[69]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[91]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[69]\);
    
    \signal_send_0/cnt_m6_0_a2\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_7_5_net_1\, B => 
        \signal_send_0/cnt_m6_0_a2_7_6_net_1\, C => 
        \signal_send_0/cnt_N_11_mux_0\, Y => 
        \signal_send_0/cnt_N_13_mux\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[154]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[6]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[8]\ : DFN1
      port map(D => \data_all[151]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[8]_net_1\);
    
    \cnt_flag[2]\ : DFN1E1C0
      port map(D => cnt_flag_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[2]_net_1\);
    
    \signal_send_0/data_all_4_i_0_o2[36]\ : OR2A
      port map(A => \signal_send_0/data_N_5_mux_1\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_310\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[64]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[63]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[64]\);
    
    \signal_send_0/data_all_4_i_0_a3[85]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[85]_net_1\, Y => \signal_send_0/N_1789\);
    
    \signal_send_0/data_all_4_0_i[101]\ : NOR3
      port map(A => \signal_send_0/N_644\, B => N_378, C => 
        \signal_send_0/N_645\, Y => N_270);
    
    \signal_send_0/data_all_4_i_0[130]\ : AO1A
      port map(A => \data_all[130]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[130]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_RNI9DMF\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\);
    
    \data_all[14]\ : DFN1E0C0
      port map(D => N_295, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[14]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[76]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[77]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[75]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[76]\);
    
    \cnt_recive[4]\ : DFN1E0C0
      port map(D => N_34, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[4]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNIEBGP\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\, 
        C => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[21]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[21]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[21]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[20]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[20]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[20]\);
    
    \single_recive_0/data_recive[6]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[6]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[67]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[67]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[67]\);
    
    \signal_send_0/data_all_4_i_0[132]\ : AO1A
      port map(A => \data_all[132]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[132]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_23\ : XOR2
      port map(A => \single_recive_0/N_5\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/I_23\);
    
    \signal_send_0/data_all_4_i_0_a3[46]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[46]_net_1\, Y => \signal_send_0/N_1773\);
    
    \data_all[76]\ : DFN1E0C0
      port map(D => N_185, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[76]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[73]\ : DFN1
      port map(D => \data_all[86]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[73]_net_1\);
    
    \signal_send_0/data_all_4_i_0[74]\ : AO1A
      port map(A => \data_all[74]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[74]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[80]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[81]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[79]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[80]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[83]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[82]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[83]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[96]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[97]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[95]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[96]\);
    
    \signal_send_0/cnt_end[3]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_5[3]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[44]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[43]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[44]\);
    
    \cnt_recive_end[8]\ : DFN1C0
      port map(D => cnt_recive_end_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto8);
    
    \signal_send_0/un12_cnt_send_6_0_x2\ : XOR2
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_send[6]_net_1\, Y => \signal_send_0/N_1543\);
    
    \signal_send_0/data_all_4_i_0_0[138]\ : AO1A
      port map(A => \data_all[138]_net_1\, B => 
        \signal_send_0/N_306\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[138]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[156]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[157]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[155]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[156]\);
    
    \signal_send_0/data_all_4_i_0[91]\ : NOR3
      port map(A => \signal_send_0/N_1802\, B => N_378, C => 
        \signal_send_0/N_1803\, Y => N_155);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[105]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[104]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[105]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[57]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[103]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[57]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[27]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[133]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[27]\);
    
    \signal_send_0/data_all_4_i_a2[51]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[51]_net_1\, Y => \signal_send_0/N_777\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[5]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[1]_net_1\, S
         => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[5]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_6[6]\ : NOR2B
      port map(A => \data_all[118]_net_1\, B => 
        \signal_send_0/N_1675\, Y => \signal_send_0/N_501\);
    
    \signal_send_0/data_all_4_i_0_a3[47]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[47]_net_1\, Y => \signal_send_0/N_1774\);
    
    \signal_send_0/data_all_4_0[104]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[104]_net_1\, C => \signal_send_0/N_688\, Y => 
        \data_all_4[104]\);
    
    \signal_send_0/m62_0_a3_14_0\ : NOR2B
      port map(A => \data_all[15]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/m62_0_a3_14_0_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[23]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[23]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[23]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[65]\ : DFN1
      port map(D => \data_all[94]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[65]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[67]\ : DFN1
      port map(D => \data_all[92]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[67]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[7]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[6]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[7]\);
    
    \signal_send_0/data_all_4_i_0[79]\ : AO1A
      port map(A => \data_all[79]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[79]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[130]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[30]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[130]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[16]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[16]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[16]_net_1\);
    
    \cnt_send[13]\ : DFN1E1C0
      port map(D => cnt_send_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[64]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[65]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[63]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[64]\);
    
    \single_recive_0/cnt[3]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[3]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[37]\ : NOR2
      port map(A => \signal_send_0/N_310\, B => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_1883\);
    
    \signal_send_0/parity_check_RNO_12\ : XOR2
      port map(A => \data_send_buffer[4]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_5\);
    
    \signal_send_0/data_all_4_0[121]\ : AO1A
      port map(A => \signal_send_0/N_20\, B => 
        \data_all[121]_net_1\, C => \signal_send_0/N_656\, Y => 
        \data_all_4[121]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[127]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[127]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[127]\);
    
    \signal_send_0/m77_0_a3_2_0\ : NOR2B
      port map(A => \data_all[157]_net_1\, B => 
        \signal_send_0/N_1645\, Y => 
        \signal_send_0/m77_0_a3_2_0_net_1\);
    
    \signal_send_0/data_all_4_i_0_o2_0[24]\ : OR2
      port map(A => \cnt_recive[3]_net_1\, B => 
        \signal_send_0/N_292\, Y => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_11[3]\ : NOR2B
      port map(A => \data_all[75]_net_1\, B => 
        \signal_send_0/N_1686\, Y => \signal_send_0/N_535\);
    
    \signal_send_0/m77_0_a2_1_0\ : NOR3B
      port map(A => \signal_send_0/N_140_mux\, B => 
        \signal_send_0/m36_0_net_1\, C => N_378, Y => 
        \signal_send_0/m77_0_a2_1_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[109]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[109]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[109]\);
    
    \signal_send_0/cnt_recive_n7_i_o2_0\ : OR2A
      port map(A => \cnt_recive[4]_net_1\, B => 
        \signal_send_0/N_1492\, Y => \signal_send_0/N_1496\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[25]\ : DFN1
      port map(D => \data_all[134]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[25]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[17]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_383\, Y => 
        \signal_send_0/N_837\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[27]\ : DFN1
      port map(D => \data_all[132]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[27]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[90]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[90]_net_1\, Y => \signal_send_0/N_1800\);
    
    \signal_send_0/data_all_4_0[123]\ : AO1A
      port map(A => \signal_send_0/N_20\, B => 
        \data_all[123]_net_1\, C => \signal_send_0/N_652\, Y => 
        \data_all_4[123]\);
    
    \signal_send_0/cnt_delay_n7\ : XA1B
      port map(A => \signal_send_0/cnt_delay_35_0_net_1\, B => 
        \cnt_delay[7]_net_1\, C => N_378, Y => cnt_delay_n7);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[18]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_comm2iice[7]\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[18]\);
    
    \signal_send_0/data_all_4_i_0[159]\ : AO1A
      port map(A => \data_all[159]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[159]_net_1\);
    
    receive_end : DFN1E0C0
      port map(D => \AFLSDF_INV_0\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => receive_end_1_sqmuxa, Q => \receive_end\);
    
    \signal_send_0/tx_uart_RNO_5\ : AO1
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/parity_check_net_1\, C => 
        \signal_send_0/data_send_m[4]\, Y => 
        \signal_send_0/tx_uart_11_iv_1\);
    
    \cnt_recive[9]\ : DFN1E0C0
      port map(D => N_24, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[9]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[0]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b8_nUTQ_XlK\, CLK
         => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[0]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[115]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[45]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[115]\);
    
    \signal_send_0/m122\ : MX2C
      port map(A => \data_all[103]_net_1\, B => 
        \data_all[111]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_123\);
    
    \signal_send_0/data_send_buffer_3_1_5[3]\ : AO1
      port map(A => \data_all[147]_net_1\, B => 
        \signal_send_0/N_927\, C => \signal_send_0/N_527\, Y => 
        \signal_send_0/data_send_buffer_3_1_5[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[41]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[41]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[41]\);
    
    \signal_send_0/N_488_2_i_i_a2\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_1920\);
    
    \signal_send_0/send_end_0_sqmuxa_i_3\ : XO1
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_recive[15]_net_1\, C => \signal_send_0/N_76_i\, Y
         => \signal_send_0/send_end_0_sqmuxa_i_3_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[14]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[14]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[14]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[108]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[52]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[108]\);
    
    \signal_send_0/data_all_4_i_a2_0[20]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \data_recive_buffer[4]\, Y
         => \signal_send_0/N_831\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[92]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[91]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[92]\);
    
    un19_data_send_buffer_1_I_17 : AX1A
      port map(A => \cnt_send[2]_net_1\, B => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\, C => 
        \cnt_send[3]_net_1\, Y => I_17_1);
    
    \data_all[94]\ : DFN1E0C0
      port map(D => N_149, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[94]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_20[4]\ : NOR2B
      port map(A => \signal_send_0/N_1658\, B => 
        \signal_send_0/N_1649\, Y => \signal_send_0/N_1687\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[40]\ : DFN1
      port map(D => \data_all[119]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[40]_net_1\);
    
    \data_all[59]\ : DFN1E0C0
      port map(D => N_219, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[59]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[87]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1795\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[30]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[130]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[30]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIJB9G4[1]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_194\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[2]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[3]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[2]\);
    
    \signal_send_0/cnt_send_n29\ : NOR2A
      port map(A => \signal_send_0/cnt_send_n29_tz_net_1\, B => 
        N_378, Y => cnt_send_n29);
    
    \signal_send_0/data_all_4_i[65]\ : OA1B
      port map(A => \signal_send_0/N_367\, B => 
        \signal_send_0/N_642_2\, C => 
        \signal_send_0/data_all_4_i_0[65]_net_1\, Y => N_207);
    
    \signal_send_0/cnt_RNI6JVP[1]\ : NOR2A
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart33_2\);
    
    \signal_send_0/m62_0_0_tz\ : AO1
      port map(A => \data_all[143]_net_1\, B => 
        \signal_send_0/N_889\, C => 
        \signal_send_0/m62_0_0_tz_0_net_1\, Y => 
        \signal_send_0/m62_0_0_tz_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[16]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[16]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[16]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[39]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[40]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[38]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[39]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[33]\ : DFN1
      port map(D => \data_all[126]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[33]_net_1\);
    
    \data_all[26]\ : DFN1E0C0
      port map(D => N_271, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[26]_net_1\);
    
    \single_recive_0/cnt_RNI6RCI[2]\ : NOR2B
      port map(A => \single_recive_0/cnt[11]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m99_0\);
    
    \signal_send_0/cnt_send_n10\ : XA1B
      port map(A => \signal_send_0/cnt_send_c9_net_1\, B => 
        \cnt_send[10]_net_1\, C => N_378, Y => cnt_send_n10);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[50]\ : DFN1
      port map(D => \data_all[109]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[50]_net_1\);
    
    \signal_send_0/tx_uart_RNO_8\ : NOR3C
      port map(A => \signal_send_0/tx_uart32_6_0\, B => 
        \signal_send_0/tx_uart32_7\, C => 
        \data_send_buffer[4]_net_1\, Y => 
        \signal_send_0/data_send_m[4]\);
    
    \signal_send_0/data_all_4_i_0_o2_0[88]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \signal_send_0/N_292\, Y => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[54]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[54]_net_1\, Y => \signal_send_0/N_1776\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_4\ : NOR3B
      port map(A => \signal_send_0/N_1677\, B => 
        \signal_send_0/N_1649\, C => \data_all[81]_net_1\, Y => 
        \signal_send_0/N_476\);
    
    \signal_send_0/data_all_4_0[106]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[106]_net_1\, C => \signal_send_0/N_684\, Y => 
        \data_all_4[106]\);
    
    \single_recive_0/cnt_RNIMS0I_0[4]\ : NOR2A
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m23_4\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_i\, S
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/un1_in_en_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req/Y\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[9]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[9]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[9]\);
    
    \cnt_send[1]\ : DFN1E1C0
      port map(D => N_115, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende, Q => \cnt_send[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[33]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[32]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[33]\);
    
    \signal_send_0/cnt_RNIEVMJ1_0[11]\ : NOR3A
      port map(A => \signal_send_0/tx_uart32_5\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart32_6_0\);
    
    \signal_send_0/cnt[0]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[145]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[15]\);
    
    \signal_send_0/data_all_4_i_a2[50]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[50]_net_1\, Y => \signal_send_0/N_779\);
    
    \data_all[129]\ : DFN1E0C0
      port map(D => N_120, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[129]_net_1\);
    
    \cnt_send[5]\ : DFN1E1C0
      port map(D => N_1489, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[5]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[81]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \signal_send_0/N_383\, Y => \signal_send_0/N_718\);
    
    \signal_send_0/cnt_recive_n18_0\ : XA1C
      port map(A => \cnt_recive[18]_net_1\, B => 
        \signal_send_0/N_62\, C => N_378, Y => cnt_recive_n18);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[17]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[17]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[7]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[8]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[7]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[7]_net_1\);
    
    \signal_send_0/data_all_4_i_0[27]\ : NOR3
      port map(A => \signal_send_0/N_463\, B => N_378, C => 
        \signal_send_0/N_464\, Y => N_269);
    
    \signal_send_0/cnt_flag_n2_tz\ : AX1C
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        C => \cnt_flag[2]_net_1\, Y => 
        \signal_send_0/cnt_flag_n2_tz_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[30]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[30]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[30]\);
    
    \signal_send_0/un7_cnt_1_I_21\ : AND2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[3]\);
    
    \signal_send_0/data_all_4_i[19]\ : NOR3
      port map(A => \signal_send_0/N_833\, B => N_378, C => 
        \signal_send_0/N_832\, Y => N_285);
    
    \signal_send_0/un38_data_send_buffer_490\ : MX2
      port map(A => \data_all[6]_net_1\, B => 
        \data_all[14]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/N_487_3\);
    
    \signal_send_0/un38_data_send_buffer_677_i_m3\ : MX2
      port map(A => \signal_send_0/N_513_3\, B => 
        \signal_send_0/N_529_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_454\);
    
    \data_all[147]\ : DFN1E0C0
      port map(D => N_1597, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[147]_net_1\);
    
    \signal_send_0/data_all_4_i_0[139]\ : OA1B
      port map(A => \signal_send_0/N_306\, B => 
        \data_recive_buffer[3]\, C => 
        \signal_send_0/data_all_4_i_0_0[139]_net_1\, Y => N_1605);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[15]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]_net_1\);
    
    \signal_send_0/un5_idle_recive_7\ : NOR2
      port map(A => \cnt_recive[18]_net_1\, B => 
        \cnt_recive[17]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_7_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[136]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[24]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[136]\);
    
    \signal_send_0/cnt_delay_n2\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c1_net_1\, B => 
        \cnt_delay[2]_net_1\, C => N_378, Y => cnt_delay_n2);
    
    \signal_send_0/m90_i_o2_2\ : OR2A
      port map(A => \signal_send_0/N_46\, B => 
        \signal_send_0/m90_i_o2_1_net_1\, Y => 
        \signal_send_0/m90_i_o2_2_net_1\);
    
    \signal_send_0/m30_0\ : NOR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => \signal_send_0/m30_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[63]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[62]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[63]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        CLK => sys_clk_c, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[36]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[36]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[36]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[28]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[29]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[28]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[150]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[151]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[149]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[150]\);
    
    \data_all[79]\ : DFN1E0C0
      port map(D => N_179, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[79]_net_1\);
    
    \single_recive_0/cnt_RNIK1241_1[9]\ : NOR3B
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/m12_3\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/m12_5\);
    
    \signal_send_0/vld_send_down_RNIH01G5\ : AO1
      port map(A => \signal_send_0/un1_cnt_5\, B => 
        \signal_send_0/un1_cnt_4_0\, C => 
        \signal_send_0/un2_vld_send_down\, Y => 
        \signal_send_0/un2_cnt\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_4_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[107]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[106]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[105]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[104]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[103]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[102]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[101]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[100]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[99]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[98]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[97]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[96]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[95]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[94]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[93]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[92]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[91]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[90]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[107]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[106]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[105]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[104]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[103]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[102]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[101]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[100]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[99]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[98]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[97]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[96]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[95]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[94]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[93]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[92]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[91]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[90]\);
    
    \data_all[142]\ : DFN1E0C0
      port map(D => N_1602, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[142]_net_1\);
    
    \signal_send_0/cnt_recive_end_c6\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_c5_net_1\, B
         => \cnt_recive_end[6]_net_1\, Y => 
        \signal_send_0/cnt_recive_end_c6_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[153]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[154]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[152]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[153]\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[2]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[26]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[26]_net_1\);
    
    \signal_send_0/data_all_4_i_0[45]\ : NOR3
      port map(A => \signal_send_0/N_1770\, B => N_378, C => 
        \signal_send_0/N_1772\, Y => N_247);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO[1]\ : NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_90\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[43]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[42]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[43]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[145]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[144]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[145]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[58]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[59]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[57]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[58]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[80]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[80]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[80]\);
    
    \signal_send_0/end_flag_RNIQ5EB\ : NOR2A
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        \cnt_flag[0]_net_1\, Y => 
        \signal_send_0/cnt_flag_0_sqmuxa_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[8]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[8]\);
    
    \signal_send_0/data_all_4_i_0_a3[24]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[24]_net_1\, Y => \signal_send_0/N_1757\);
    
    \signal_send_0/data_all_4_i_0[73]\ : AO1A
      port map(A => \data_all[73]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[73]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3_0[28]\ : NOR3
      port map(A => \signal_send_0/N_344_1\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_466\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[1]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/tdo_sig\);
    
    \signal_send_0/un38_data_send_buffer_968_i\ : OR3
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_5_net_1\, B
         => \signal_send_0/un38_data_send_buffer_968_i_4_net_1\, 
        C => \signal_send_0/un38_data_send_buffer_968_i_6_net_1\, 
        Y => \signal_send_0/N_1583\);
    
    \signal_send_0/data_m2_e_1_3\ : NOR2A
      port map(A => \signal_send_0/data_m2_e_1_2_net_1\, B => 
        \signal_send_0/OVER_11_net_1\, Y => 
        \signal_send_0/data_m2_e_1_3_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[59]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[58]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[59]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[31]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]_net_1\);
    
    \signal_send_0/cnt_recive_n11_0\ : XA1B
      port map(A => \cnt_recive[11]_net_1\, B => 
        \signal_send_0/cnt_N_13_mux_0\, C => N_378, Y => 
        cnt_recive_n11);
    
    \signal_send_0/data_all_4_i[158]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0[158]_net_1\, Y => N_1587);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIORE8_0[1]\ : 
        NOR2
      port map(A => \ident_coreinst/IICE_comm2iice[5]\, B => 
        \ident_coreinst/IICE_comm2iice[1]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[16]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[16]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[16]\);
    
    \signal_send_0/cnt_RNIHUVP_0[7]\ : NOR2A
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/tx_uart30_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[75]\ : DFN1
      port map(D => \data_all[84]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[75]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[77]\ : DFN1
      port map(D => \data_all[82]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[77]_net_1\);
    
    \signal_send_0/data_all_4_0_i[118]\ : NOR3
      port map(A => \signal_send_0/N_1828\, B => N_378, C => 
        \signal_send_0/N_1829\, Y => N_1724);
    
    idle_recive_fall : DFN1C0
      port map(D => idle_recive_fall_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_recive_fall\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[44]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[116]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[44]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[13]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[13]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[0]/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[0]\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]\, 
        S => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[0]/Y\);
    
    \signal_send_0/cnt_recive_end_c2\ : NOR3C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        \signal_send_0/cnt_recive_end_c2_net_1\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNO_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, B
         => 
        \ident_coreinst/comm_block_INST/jtagi/un1_b9_96_cLqgOF3\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2_0\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[27]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[27]_net_1\);
    
    \signal_send_0/cnt_m4_0_a2\ : NOR2B
      port map(A => \signal_send_0/cnt_m4_0_a2_6_net_1\, B => 
        \signal_send_0/cnt_N_11_mux_0\, Y => 
        \signal_send_0/cnt_N_9_mux\);
    
    \signal_send_0/un11_cnt_delay_5\ : NOR3C
      port map(A => \cnt_delay[3]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => 
        \signal_send_0/un11_cnt_delay_2_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_5_net_1\);
    
    \signal_send_0/cnt_m5_0_a2_4_2\ : NOR3C
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_recive[6]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        \signal_send_0/cnt_m5_0_a2_4_2_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_21\ : OR3
      port map(A => \signal_send_0/send_end_0_sqmuxa_i_1_net_1\, 
        B => \signal_send_0/send_end_0_sqmuxa_i_0_net_1\, C => 
        \signal_send_0/N_359_i\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_21_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[25]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[25]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[25]_net_1\);
    
    \single_recive_0/data_recive_RNO_0[1]\ : NOR3A
      port map(A => \data_recive_buffer[1]\, B => 
        \single_recive_0/data_recive24\, C => N_378, Y => 
        \single_recive_0/N_27_i_0\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[9]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[9]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[9]_net_1\);
    
    \data_all[43]\ : DFN1E0C0
      port map(D => N_251, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[43]_net_1\);
    
    vld_send : DFN1E0C0
      port map(D => vld_send_0_sqmuxa, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => vld_send_2_sqmuxa, Q => \vld_send\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk3.b8_vABZ3qsY/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk3_b8_vABZ3qsY/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\);
    
    \data_all[67]\ : DFN1E0C0
      port map(D => N_203, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[67]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[136]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[137]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[135]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[136]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_2_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[71]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[70]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[69]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[68]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[67]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[66]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[65]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[64]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[63]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[62]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[61]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[60]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[59]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[58]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[57]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[56]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[55]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[54]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[71]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[70]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[69]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[68]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[67]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[66]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[65]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[64]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[63]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[62]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[61]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[60]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[59]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[58]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[57]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[56]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[55]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[54]\);
    
    \signal_send_0/parity_check_RNO_5\ : XOR2
      port map(A => \data_send_buffer[0]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_1\);
    
    \signal_send_0/cnt_end_RNIRBMJ[9]\ : NOR2A
      port map(A => \signal_send_0/cnt_end[9]_net_1\, B => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/un8_cnt_end_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[86]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[86]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[86]\);
    
    \signal_send_0/cnt_end[7]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_5[7]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[7]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[125]\ : DFN1
      port map(D => \data_all[34]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[125]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[103]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1894\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[165]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[164]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[165]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[106]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[106]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[106]\);
    
    \single_recive_0/cnt_RNIBAED1[3]\ : NOR3C
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/N_103_mux\, Y => \single_recive_0/m65_6\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[75]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[75]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[75]\);
    
    \signal_send_0/m77_0_2\ : OR3
      port map(A => \signal_send_0/m77_0_462_net_1\, B => 
        \signal_send_0/m77_0_463_net_1\, C => 
        \signal_send_0/m77_0_1_net_1\, Y => 
        \signal_send_0/m77_0_2_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[26]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[26]\);
    
    \signal_send_0/un12_cnt_send_9_0_x2\ : XOR2
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_send[9]_net_1\, Y => \signal_send_0/N_1540\);
    
    \signal_send_0/cnt_send_n21\ : XA1B
      port map(A => \signal_send_0/cnt_send_c20_net_1\, B => 
        \cnt_send[21]_net_1\, C => N_378, Y => cnt_send_n21);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[53]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[54]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[52]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[53]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[72]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[71]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[72]\);
    
    \signal_send_0/m22_i\ : NOR3
      port map(A => \signal_send_0/N_887\, B => N_378, C => 
        \signal_send_0/N_1645\, Y => N_115);
    
    \signal_send_0/data_all_4_i_o3_i_o2_1[63]\ : OR3A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => \signal_send_0/N_46\, Y => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[63]_net_1\);
    
    \data_all[133]\ : DFN1E0C0
      port map(D => N_1611, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[133]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_net_1\);
    
    \cnt_recive[13]\ : DFN1E0C0
      port map(D => cnt_recive_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[13]_net_1\);
    
    \signal_send_0/data_all_4_0_i[37]\ : NOR3
      port map(A => \signal_send_0/N_1882\, B => N_378, C => 
        \signal_send_0/N_1883\, Y => N_242);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[20]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[20]_net_1\);
    
    \signal_send_0/data_all_4_i_0[153]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0_0[153]_net_1\, Y => N_1592);
    
    \data_all[29]\ : DFN1E0C0
      port map(D => N_265, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[29]_net_1\);
    
    \signal_send_0/parity_check_RNO_8\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[5]_net_1\, C => 
        \signal_send_0/tx_uart33\, Y => 
        \signal_send_0/parity_check_6_i_m\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[1]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[2]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[1]\);
    
    \signal_send_0/data_all_4_i_0[141]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[141]_net_1\, Y => N_1603);
    
    \signal_send_0/data_all_4_0_i_a3_0[101]\ : NOR2
      port map(A => \signal_send_0/N_312\, B => 
        \data_recive_buffer[5]\, Y => \signal_send_0/N_645\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[93]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[67]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[93]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_5\ : OR3
      port map(A => \signal_send_0/N_476\, B => 
        \signal_send_0/N_477\, C => 
        \signal_send_0/un38_data_send_buffer_968_i_3_net_1\, Y
         => \signal_send_0/un38_data_send_buffer_968_i_5_net_1\);
    
    \data_all[144]\ : DFN1E0C0
      port map(D => N_1600, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[144]_net_1\);
    
    \signal_send_0/m62_0_a3\ : OA1
      port map(A => \signal_send_0/N_967\, B => 
        \signal_send_0/N_1910\, C => \data_all[7]_net_1\, Y => 
        \signal_send_0/N_417\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[2]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_14_1\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\);
    
    \signal_send_0/cnt_recive_n23_0\ : XA1B
      port map(A => \cnt_recive[23]_net_1\, B => 
        \signal_send_0/cnt_N_9_mux\, C => N_378, Y => 
        cnt_recive_n23);
    
    \single_recive_0/un7_cnt_1_I_16\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[1]\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_7\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[6]\ : DFN1
      port map(D => \data_all[153]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[32]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[32]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[32]\);
    
    \signal_send_0/data_all_4_i_a2_0[52]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_776\);
    
    \signal_send_0/un12_cnt_send_19\ : XOR2
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_recive[19]_net_1\, Y => 
        \signal_send_0/un12_cnt_send_19_net_1\);
    
    \signal_send_0/data_all_4_i_0[90]\ : NOR3
      port map(A => \signal_send_0/N_1800\, B => N_378, C => 
        \signal_send_0/N_1801\, Y => N_157);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[148]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[12]\);
    
    \cnt_send[18]\ : DFN1E1C0
      port map(D => N_39, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[18]_net_1\);
    
    \signal_send_0/cnt_end_RNICU2R1[5]\ : NOR3C
      port map(A => \signal_send_0/un8_cnt_end_1\, B => 
        \signal_send_0/un8_cnt_end_0\, C => 
        \signal_send_0/un8_cnt_end_4\, Y => 
        \signal_send_0/un8_cnt_end_7\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[57]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[56]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[57]\);
    
    \cnt_send[16]\ : DFN1E1C0
      port map(D => N_43, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[16]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[55]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[55]_net_1\, Y => \signal_send_0/N_1778\);
    
    \signal_send_0/cnt_RNI3GVP_0[1]\ : NOR2A
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart37_2\);
    
    \signal_send_0/m77_0_463_tz_0\ : AO1
      port map(A => \data_all[101]_net_1\, B => 
        \signal_send_0/N_887\, C => 
        \signal_send_0/m77_0_a3_6_0_net_1\, Y => 
        \signal_send_0/m77_0_463_tz_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[152]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[8]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[152]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[49]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[50]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[48]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[49]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_RNIK43C\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[96]\ : DFN1
      port map(D => \data_all[63]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[96]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[1]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[12]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[35]\ : DFN1
      port map(D => \data_all[124]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[35]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[37]\ : DFN1
      port map(D => \data_all[122]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[37]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_1_0[2]\ : NOR2
      port map(A => I_12_3, B => I_14_3, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_1[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[93]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[93]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[93]\);
    
    un19_data_send_buffer_1_I_18 : NOR3
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \cnt_send[0]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\);
    
    \data_all[81]\ : DFN1E0C0
      port map(D => N_175, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[81]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[2]\ : NOR2
      port map(A => \signal_send_0/N_643_2\, B => 
        \signal_send_0/N_377\, Y => \signal_send_0/N_872\);
    
    \signal_send_0/data_all_4_i_0_a3[80]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_0[87]_net_1\, C => 
        \data_all[80]_net_1\, Y => \signal_send_0/N_1785\);
    
    \signal_send_0/data_all_4_0_i_a3[96]\ : NOR2A
      port map(A => \signal_send_0/N_312\, B => 
        \data_all[96]_net_1\, Y => \signal_send_0/N_1888\);
    
    \signal_send_0/parity_check_RNO_6\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[2]_net_1\, C => 
        \signal_send_0/tx_uart30\, Y => 
        \signal_send_0/parity_check_3_i_m\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[80]\ : DFN1
      port map(D => \data_all[79]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[80]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_9[6]\ : NOR2B
      port map(A => \data_all[6]_net_1\, B => 
        \signal_send_0/N_967\, Y => \signal_send_0/N_504\);
    
    \signal_send_0/data_all_4_0_a2_0[104]\ : NOR3A
      port map(A => \data_recive_buffer[0]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_688\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[126]\ : DFN1
      port map(D => \data_all[33]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[126]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[11]\ : DFN1
      port map(D => \data_all[148]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[11]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_6[2]\ : AO1
      port map(A => \data_all[154]_net_1\, B => 
        \signal_send_0/N_1683\, C => \signal_send_0/N_543\, Y => 
        \signal_send_0/data_send_buffer_3_1_6[2]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_3[6]\ : AO1
      port map(A => \data_all[126]_net_1\, B => 
        \signal_send_0/N_1676\, C => \signal_send_0/N_501\, Y => 
        \signal_send_0/data_send_buffer_3_1_3[6]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_7\ : AX1C
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/I_7\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[159]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[159]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[159]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[8]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[8]\);
    
    \signal_send_0/un7_cnt_1_I_19\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => \signal_send_0/N_6\);
    
    \signal_send_0/cnt_recive_end_c7\ : NOR2B
      port map(A => \signal_send_0/cnt_recive_end_c6_net_1\, B
         => receive_end2lto7, Y => 
        \signal_send_0/cnt_recive_end_c7_net_1\);
    
    \signal_send_0/vld_send_down\ : DFN1C0
      port map(D => \signal_send_0/vld_send_down_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/vld_send_down_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_7_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => \GND\, WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[160]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[159]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[158]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[157]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[156]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[155]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[154]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[153]\, 
        WD8 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[152]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[151]\, 
        WD6 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[150]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[149]\, 
        WD4 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[148]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[147]\, 
        WD2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[146]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[145]\, 
        WD0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[144]\, 
        RW0 => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, 
        PIPE => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => OPEN, RD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[160]\, RD15
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[159]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[158]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[157]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[156]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[155]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[154]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[153]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[152]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[151]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[150]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[149]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[148]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[147]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[146]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[145]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[144]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[24]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[25]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[23]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[24]\);
    
    \signal_send_0/data_all_4_i_0[133]\ : AO1A
      port map(A => \data_all[133]_net_1\, B => 
        \signal_send_0/N_366\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[133]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[12]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[13]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[11]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[12]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[117]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[43]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[117]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_17_4[2]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_17_2[2]_net_1\, B
         => \signal_send_0/N_1645\, C => N_378, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_17_4[2]_net_1\);
    
    \signal_send_0/data_all_4_0_a2_1_i_o2[111]\ : OR2B
      port map(A => \signal_send_0/data_N_5_mux_0\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_337\);
    
    \data_all[148]\ : DFN1E0C0
      port map(D => N_1596, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[148]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_12\ : AX1C
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/DWACT_FINC_E[0]\, C => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/I_12\);
    
    \signal_send_0/m62_0\ : OR3
      port map(A => \signal_send_0/m62_0_452_net_1\, B => 
        \signal_send_0/m62_0_3_net_1\, C => \signal_send_0/N_417\, 
        Y => \data_send_buffer_3[7]\);
    
    \signal_send_0/vld_send_fall\ : DFN1P0
      port map(D => \signal_send_0/vld_send_i\, CLK => sys_clk_c, 
        PRE => sys_rest_c, Q => \signal_send_0/vld_send_fall_i_0\);
    
    \data_all[12]\ : DFN1E0C0
      port map(D => N_299, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[12]_net_1\);
    
    \signal_send_0/m90_i\ : NOR3
      port map(A => \signal_send_0/N_390\, B => N_378, C => 
        \signal_send_0/N_391\, Y => N_1715);
    
    \signal_send_0/idle_send_RNIUUSA3_0\ : AOI1
      port map(A => \signal_send_0/un8_cnt_end_7\, B => 
        \signal_send_0/un8_cnt_end_6\, C => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/cnt_end_1_sqmuxa\);
    
    \signal_send_0/cnt_delay_c2\ : NOR2B
      port map(A => \signal_send_0/cnt_delay_c1_net_1\, B => 
        \cnt_delay[2]_net_1\, Y => 
        \signal_send_0/cnt_delay_c2_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[16]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[16]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[16]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[12]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[12]\);
    
    \signal_send_0/data_m1_0_a2_3\ : NOR2B
      port map(A => \signal_send_0/N_887\, B => 
        \signal_send_0/N_1659\, Y => 
        \signal_send_0/data_m1_0_a2_3_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[151]\ : DFN1
      port map(D => \data_all[8]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[151]_net_1\);
    
    \data_all[50]\ : DFN1E0C0
      port map(D => N_237, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[50]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[130]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[131]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[129]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[130]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_10\ : XO1
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_send[22]_net_1\, C => 
        \signal_send_0/un12_cnt_send_21_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_10_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[25]\ : OA1B
      port map(A => \signal_send_0/N_344_3\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[24]_net_1\, C => 
        \data_all[25]_net_1\, Y => \signal_send_0/N_459\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[82]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[82]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[82]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[106]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[107]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[105]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[106]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[138]\ : DFN1
      port map(D => \data_all[21]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[138]_net_1\);
    
    \signal_send_0/un17_data_send_bufferlt30_22\ : OR2
      port map(A => 
        \signal_send_0/un17_data_send_bufferlt30_22_21_net_1\, B
         => \signal_send_0/un17_data_send_bufferlt30_22_20_net_1\, 
        Y => \signal_send_0/un17_data_send_bufferlt30_22_net_1\);
    
    \signal_send_0/m81_i_3_tz\ : OR3
      port map(A => \signal_send_0/m81_i_a3_2_0_net_1\, B => 
        \signal_send_0/m81_i_a3_5_0_net_1\, C => 
        \signal_send_0/m81_i_a3_3_0_net_1\, Y => 
        \signal_send_0/m81_i_3_tz_net_1\);
    
    \signal_send_0/data_all_4_0_a2_0[110]\ : NOR3A
      port map(A => \data_recive_buffer[6]\, B => N_378, C => 
        \signal_send_0/N_337\, Y => \signal_send_0/N_676\);
    
    \signal_send_0/data_send_buffer_3_1_14[2]\ : OR3
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_2[2]_net_1\, B => 
        \signal_send_0/N_551\, C => 
        \signal_send_0/data_send_buffer_3_1_8[2]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_14[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[133]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[134]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[132]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[133]\);
    
    \cnt_recive_end[1]\ : DFN1C0
      port map(D => cnt_recive_end_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[1]_net_1\);
    
    \signal_send_0/cnt_recive_n14\ : XA1C
      port map(A => \signal_send_0/N_58\, B => 
        \cnt_recive[14]_net_1\, C => N_378, Y => cnt_recive_n14);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[160]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[161]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[159]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[160]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[54]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[54]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[54]\);
    
    \signal_send_0/m12_i_x2\ : XOR2
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => \signal_send_0/N_352_i\);
    
    \signal_send_0/data_all_4_i_0_0[44]\ : AO1A
      port map(A => \data_all[44]_net_1\, B => 
        \signal_send_0/N_1736\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[44]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[24]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[24]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[24]_net_1\);
    
    \data_all[85]\ : DFN1E0C0
      port map(D => N_167, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[85]_net_1\);
    
    \cnt_recive[21]\ : DFN1E0C0
      port map(D => cnt_recive_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[21]_net_1\);
    
    \single_recive_0/cnt_RNIJBDR[11]\ : NOR3B
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m65_4\);
    
    \signal_send_0/data_all_4_0_i_a3_0[127]\ : NOR2
      port map(A => \signal_send_0/N_320\, B => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1835\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[7]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[7]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[7]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[152]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[151]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[152]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[131]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[29]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[131]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[55]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[54]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[55]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_11_0[0]\ : NOR2B
      port map(A => \data_all[8]_net_1\, B => 
        \signal_send_0/N_889\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_11_0[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[113]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[47]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[113]\);
    
    \signal_send_0/m77_0_a2_1_1\ : NOR3A
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send[28]_net_1\, C => \signal_send_0/N_318\, Y => 
        \signal_send_0/m77_0_a2_1_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_16\, Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]_net_1\);
    
    \data_all[46]\ : DFN1E0C0
      port map(D => N_245, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[46]_net_1\);
    
    \cnt_send[6]\ : DFN1E1C0
      port map(D => N_1488, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[6]_net_1\);
    
    \signal_send_0/data_all_4_i_0[156]\ : AO1A
      port map(A => \data_all[156]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[156]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[9]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[10]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[8]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[9]\);
    
    \single_recive_0/cnt_RNIJBDR_0[11]\ : NOR3
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m76_4\);
    
    \signal_send_0/data_send_buffer_3_1_a2_3[0]\ : NOR2B
      port map(A => \data_all[104]_net_1\, B => 
        \signal_send_0/N_1673\, Y => \signal_send_0/N_566\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[54]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[106]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[54]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[24]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[136]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[24]\);
    
    \signal_send_0/cnt_m6_0_a2_17_4\ : NOR3C
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_send[25]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        \signal_send_0/cnt_m6_0_a2_17_4_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[118]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[119]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[117]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[118]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[111]\ : DFN1
      port map(D => \data_all[48]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[111]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[12]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[11]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[12]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[0]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[1]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[0]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[46]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[114]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[46]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[5]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[6]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[5]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[5]_net_1\);
    
    \signal_send_0/idle_recive_fall_3\ : NOR2A
      port map(A => idle_recive, B => N_378, Y => 
        idle_recive_fall_3);
    
    \signal_send_0/cnt_send_n19_tz\ : AX1
      port map(A => \signal_send_0/N_71\, B => 
        \cnt_send[18]_net_1\, C => \cnt_send[19]_net_1\, Y => 
        \signal_send_0/cnt_send_n19_tz_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY_RNI0PP92\ : 
        OA1
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_0\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY_net_1\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b3_SoW/b3_SoW_tile_I_1\ : 
        RAM512X18
      port map(RADDR8 => AFLSDF_GND, RADDR7 => \GND\, RADDR6 => 
        \GND\, RADDR5 => \GND\, RADDR4 => \GND\, RADDR3 => \GND\, 
        RADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\, RADDR1
         => \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\, 
        RADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\, WADDR8
         => AFLSDF_GND, WADDR7 => \GND\, WADDR6 => \GND\, WADDR5
         => \GND\, WADDR4 => \GND\, WADDR3 => \GND\, WADDR2 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        WADDR1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        WADDR0 => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        WD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[17]\, 
        WD16 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[16]\, 
        WD15 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[15]\, 
        WD14 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[14]\, 
        WD13 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[13]\, 
        WD12 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[12]\, 
        WD11 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[11]\, 
        WD10 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[10]\, 
        WD9 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[9]\, WD8
         => \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[8]\, 
        WD7 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[7]\, WD6
         => \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[6]\, 
        WD5 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[5]\, WD4
         => \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[4]\, 
        WD3 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[3]\, WD2
         => \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[2]\, 
        WD1 => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[1]\, WD0
         => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, RW0
         => \GND\, RW1 => \VCC\, WW0 => \GND\, WW1 => \VCC\, PIPE
         => \GND\, REN => \GND\, WEN => 
        \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z_i\, RCLK => 
        \ident_coreinst/IICE_comm2iice[11]\, WCLK => sys_clk_c, 
        RESET => \VCC\, RD17 => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[17]\, RD16
         => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[16]\, 
        RD15 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[15]\, 
        RD14 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[14]\, 
        RD13 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[13]\, 
        RD12 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[12]\, 
        RD11 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[11]\, 
        RD10 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[10]\, 
        RD9 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[9]\, 
        RD8 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[8]\, 
        RD7 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[7]\, 
        RD6 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[6]\, 
        RD5 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[5]\, 
        RD4 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[4]\, 
        RD3 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[3]\, 
        RD2 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[2]\, 
        RD1 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[1]\, 
        RD0 => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[0]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_10_3[6]\ : NOR3B
      port map(A => 
        \signal_send_0/data_send_buffer_3_1_a2_10_1[6]_net_1\, B
         => \signal_send_0/m77_0_a2_3_0_net_1\, C => 
        \cnt_send_0[0]_net_1\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_10_3[6]_net_1\);
    
    \signal_send_0/cnt_send_n19\ : NOR2A
      port map(A => \signal_send_0/cnt_send_n19_tz_net_1\, B => 
        N_378, Y => cnt_send_n19);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[97]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[63]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[97]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[59]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[59]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[59]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[113]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[1]\, Y => \signal_send_0/N_1819\);
    
    \signal_send_0/cnt_m4_0_a2_11_3\ : NOR3C
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[23]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_11_3_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[99]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[98]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[99]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[148]\ : DFN1
      port map(D => \data_all[11]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[148]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[60]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[100]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[60]\);
    
    \data_all[70]\ : DFN1E0C0
      port map(D => N_197, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[70]_net_1\);
    
    \data_all[18]\ : DFN1E0C0
      port map(D => N_287, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[18]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[14]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[14]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[14]\);
    
    \signal_send_0/data_all_4_i[81]\ : NOR3
      port map(A => \signal_send_0/N_717\, B => N_378, C => 
        \signal_send_0/N_718\, Y => N_175);
    
    \signal_send_0/data_all_4_i[154]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => 
        \signal_send_0/N_1739\, C => 
        \signal_send_0/data_all_4_i_0[154]_net_1\, Y => N_1591);
    
    \signal_send_0/cnt_m4_0_a2_6\ : NOR3C
      port map(A => \signal_send_0/cnt_m6_0_a2_7_5_net_1\, B => 
        \signal_send_0/cnt_m6_0_a2_7_6_net_1\, C => 
        \signal_send_0/cnt_m4_0_a2_5_net_1\, Y => 
        \signal_send_0/cnt_m4_0_a2_6_net_1\);
    
    \signal_send_0/cnt_RNIGTVP[5]\ : NOR2B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart36_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[1]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[159]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[1]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[3]\ : DFN1
      port map(D => \data_all[156]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[3]_net_1\);
    
    \signal_send_0/send_end_0_sqmuxa_i_18\ : OR3
      port map(A => \signal_send_0/N_73_i\, B => 
        \signal_send_0/un12_cnt_send_23_net_1\, C => 
        \signal_send_0/N_354_i\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_18_net_1\);
    
    \signal_send_0/end_flag_RNI256BD\ : NOR2A
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        \signal_send_0/un5_idle_recive_net_1\, Y => 
        \signal_send_0/un3_end_flag\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[16]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[17]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[15]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[16]\);
    
    \signal_send_0/un38_data_send_buffer_1097_i_a2_3_0_a2\ : 
        NOR2B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \signal_send_0/N_1645\);
    
    \data_all[92]\ : DFN1E0C0
      port map(D => N_153, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[92]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b13_oRB_MqCD2_EdR_0__RNI1A7L\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, B
         => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa_0\, 
        C => \ident_coreinst/IICE_INST/b5_voSc3\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[63]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[63]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[63]\);
    
    \signal_send_0/data_all_4_0_i_a3_0[111]\ : NOR2
      port map(A => \signal_send_0/N_337\, B => 
        \data_recive_buffer[7]\, Y => \signal_send_0/N_1814\);
    
    \signal_send_0/parity_check_RNO_2\ : AO1A
      port map(A => \signal_send_0/parity_check_7\, B => 
        \signal_send_0/tx_uart34\, C => 
        \signal_send_0/parity_check_6_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_2\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req_RNO\ : 
        INV
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_i\);
    
    \data_send_buffer[7]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[7]_net_1\);
    
    \cnt_send[3]\ : DFN1E1C0
      port map(D => cnt_send_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[3]_net_1\);
    
    \signal_send_0/cnt_send_n15_i\ : XA1C
      port map(A => \cnt_send[15]_net_1\, B => 
        \signal_send_0/N_66\, C => N_378, Y => N_45);
    
    \signal_send_0/data_send_buffer_3_1_a2_23[4]\ : NOR2B
      port map(A => \signal_send_0/N_1660\, B => 
        \signal_send_0/N_889\, Y => \signal_send_0/N_971\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[15]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[16]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[15]\);
    
    \signal_send_0/un38_data_send_buffer_628\ : MX2
      port map(A => \data_all[144]_net_1\, B => 
        \data_all[152]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        \signal_send_0/N_625_3\);
    
    \signal_send_0/data_all_4_i[6]\ : NOR3
      port map(A => \signal_send_0/N_858\, B => N_378, C => 
        \signal_send_0/N_1636\, Y => N_311);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[67]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[68]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[66]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[67]\);
    
    \signal_send_0/data_all_4_i_0[136]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_306\, C => 
        \signal_send_0/data_all_4_i_0_0[136]_net_1\, Y => N_1608);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[19]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[19]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[19]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[75]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[85]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[75]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_RNO\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_ack\);
    
    \cnt_send[19]\ : DFN1E1C0
      port map(D => cnt_send_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[19]_net_1\);
    
    \single_recive_0/data_recive_RNO[4]\ : AO1
      port map(A => \single_recive_0/data_recive27\, B => 
        rx_uart_c, C => \single_recive_0/data_recive_2_m[4]\, Y
         => \single_recive_0/data_recive_12[4]\);
    
    \signal_send_0/parity_check_RNO_7\ : XOR2
      port map(A => \data_send_buffer[6]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_7\);
    
    \signal_send_0/data_all_4_0_i[117]\ : NOR3
      port map(A => \signal_send_0/N_1826\, B => N_378, C => 
        \signal_send_0/N_1827\, Y => N_1723);
    
    \signal_send_0/idle_send_RNIUUSA3\ : NOR3B
      port map(A => \signal_send_0/un8_cnt_end_6\, B => 
        \signal_send_0/un8_cnt_end_7\, C => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/cnt_end_0_sqmuxa\);
    
    \signal_send_0/m77_0_a3_3_0\ : NOR2B
      port map(A => \data_all[149]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m77_0_a3_3_0_net_1\);
    
    \single_recive_0/data_recive[4]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[4]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[4]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_2[6]\ : NOR2B
      port map(A => \data_all[150]_net_1\, B => 
        \signal_send_0/N_927\, Y => \signal_send_0/N_497\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]_net_1\);
    
    \signal_send_0/data_all_4_i_0[31]\ : NOR3
      port map(A => \signal_send_0/N_1763\, B => N_378, C => 
        \signal_send_0/N_1764\, Y => N_261);
    
    \signal_send_0/cnt_RNISOCR4[1]\ : NOR3C
      port map(A => \signal_send_0/tx_uart27_2\, B => 
        \signal_send_0/tx_uart27_1\, C => 
        \signal_send_0/tx_uart27_9\, Y => 
        \signal_send_0/tx_uart27\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11_3[2]\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, 
        B => \ident_coreinst/IICE_comm2iice[3]\, C => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\);
    
    \single_recive_0/cnt_RNIHNFV1[2]\ : NOR3C
      port map(A => \single_recive_0/m65_2\, B => 
        \single_recive_0/m65_1\, C => \single_recive_0/m65_4\, Y
         => \single_recive_0/m65_7\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[110]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[109]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[110]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[100]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[101]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[99]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[100]\);
    
    \single_recive_0/cnt_RNIDNP41[1]\ : NOR3B
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/N_14_0\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m23_5\);
    
    \signal_send_0/cnt_RNI6RDD2[7]\ : NOR3C
      port map(A => \signal_send_0/tx_uart29_1\, B => 
        \signal_send_0/tx_uart29_0\, C => 
        \signal_send_0/tx_uart27_6\, Y => 
        \signal_send_0/tx_uart29_6\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_PSyi_XlK_RNI3QOA\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_INST/b12_PSyi_XlK_qHv\, 
        B => \ident_coreinst/IICE_comm2iice[3]\, C => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_4tt_m2_e_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[156]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[156]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[156]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[10]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[11]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[10]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[10]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[12]\ : DFN1
      port map(D => \data_all[147]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[12]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[149]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[149]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[149]\);
    
    \signal_send_0/m62_0_a3_7_0\ : NOR2B
      port map(A => \data_all[119]_net_1\, B => 
        \signal_send_0/N_1649\, Y => 
        \signal_send_0/m62_0_a3_7_0_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_4[3]\ : AO1
      port map(A => \data_all[107]_net_1\, B => 
        \signal_send_0/N_1673\, C => \signal_send_0/N_525\, Y => 
        \signal_send_0/data_send_buffer_3_1_4[3]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_19\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/N_6\);
    
    \signal_send_0/cnt_recive_n7_i\ : XA1B
      port map(A => \cnt_recive[7]_net_1\, B => 
        \signal_send_0/cnt_N_11_mux_0\, C => N_378, Y => N_28);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[119]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[119]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[119]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[103]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[104]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[102]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[103]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[78]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[79]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[77]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[78]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[114]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[115]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[113]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[114]\);
    
    \data_all[34]\ : DFN1E0C0
      port map(D => N_238, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[34]_net_1\);
    
    \signal_send_0/data_all_4_i_0_a3[43]\ : NOR2A
      port map(A => \signal_send_0/N_1736\, B => 
        \data_all[43]_net_1\, Y => \signal_send_0/N_485\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[97]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[96]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[97]\);
    
    \signal_send_0/data_all_4_i_a2[49]\ : OA1B
      port map(A => \signal_send_0/N_344_2\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \data_all[49]_net_1\, Y => \signal_send_0/N_781\);
    
    \cnt_send[27]\ : DFN1E1C0
      port map(D => cnt_send_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[27]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[117]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[116]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[117]\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[22]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[23]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[22]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[22]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[155]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[5]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[155]\);
    
    \signal_send_0/data_all_4_0_i[113]\ : NOR3
      port map(A => \signal_send_0/N_1817\, B => N_378, C => 
        \signal_send_0/N_1819\, Y => N_1719);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[146]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[147]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[145]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[146]\);
    
    \signal_send_0/cnt_recive_n24_0\ : XA1C
      port map(A => \cnt_recive[24]_net_1\, B => 
        \signal_send_0/N_72\, C => N_378, Y => cnt_recive_n24);
    
    \data_all[98]\ : DFN1E0C0
      port map(D => N_262, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[98]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_net_1\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[53]\ : NOR3
      port map(A => \signal_send_0/N_344_0\, B => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\, C => 
        \signal_send_0/N_386\, Y => \signal_send_0/N_774\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[17]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]_net_1\);
    
    \data_all[20]\ : DFN1E0C0
      port map(D => N_283, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[20]_net_1\);
    
    \signal_send_0/data_all_4_0_i_a3_0[116]\ : NOR3
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/m90_i_o2_2_net_1\, C => 
        \data_recive_buffer[4]\, Y => \signal_send_0/N_1825\);
    
    \signal_send_0/un5_idle_recive_5\ : NOR2
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_recive[21]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_5_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[124]\ : DFN1
      port map(D => \data_all[35]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[124]_net_1\);
    
    \cnt_send[15]\ : DFN1E1C0
      port map(D => N_45, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[15]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[6]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[7]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[6]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[98]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[99]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[97]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[98]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[98]\ : DFN1
      port map(D => \data_all[61]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[98]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[2]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[3]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[2]\);
    
    \signal_send_0/cnt_recive_n20_0_o4\ : OR3B
      port map(A => \cnt_recive[19]_net_1\, B => 
        \cnt_recive[18]_net_1\, C => \signal_send_0/N_62\, Y => 
        \signal_send_0/N_64\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[108]\ : DFN1
      port map(D => \data_all[51]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[108]_net_1\);
    
    \data_all[49]\ : DFN1E0C0
      port map(D => N_239, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[49]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[158]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[157]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[158]\);
    
    \signal_send_0/cnt_recive_n19_0\ : XA1C
      port map(A => \cnt_recive[19]_net_1\, B => 
        \signal_send_0/N_63\, C => N_378, Y => cnt_recive_n19);
    
    \signal_send_0/data_all_4_i_0_a3[88]\ : OA1B
      port map(A => \signal_send_0/N_344\, B => 
        \signal_send_0/data_all_4_i_0_o2_0[88]_net_1\, C => 
        \data_all[88]_net_1\, Y => \signal_send_0/N_1796\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[16]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[17]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[16]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_3_0\ : NOR2A
      port map(A => \signal_send_0/N_1677\, B => 
        \data_all[89]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_3_0_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_10_1[0]\ : NOR2A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => \signal_send_0/N_1656\);
    
    \signal_send_0/data_all_4_i[155]\ : OA1B
      port map(A => \signal_send_0/N_1739\, B => 
        \data_recive_buffer[3]\, C => 
        \signal_send_0/data_all_4_i_0[155]_net_1\, Y => N_1590);
    
    \single_recive_0/recive\ : DFN1E1C0
      port map(D => \single_recive_0/un1_cnt\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \single_recive_0/un2_cnt\, Q => 
        \single_recive_0/recive_net_1\);
    
    \signal_send_0/cnt_recive_n29\ : XA1B
      port map(A => \signal_send_0/cnt_recive_c28_net_1\, B => 
        \cnt_recive[29]_net_1\, C => N_378, Y => cnt_recive_n29);
    
    \signal_send_0/data_all_4_i_o3_i_o2_2[55]\ : OR3B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => 
        \signal_send_0/data_all_4_i_o3_i_o2_1[55]_net_1\, Y => 
        \signal_send_0/data_all_4_i_o3_i_o2_2[55]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[23]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[24]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[23]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_0_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[23]_net_1\);
    
    \single_recive_0/data_recive_RNO_0[5]\ : AOI1B
      port map(A => \single_recive_0/m76_7\, B => 
        \single_recive_0/m76_6\, C => \data_recive_buffer[5]\, Y
         => \single_recive_0/m78_0\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_8\ : NOR3B
      port map(A => \signal_send_0/N_1656\, B => 
        \signal_send_0/N_1649\, C => \data_all[49]_net_1\, Y => 
        \signal_send_0/N_480\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[58]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[57]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[58]\);
    
    \signal_send_0/cnt_send_n11\ : XA1B
      port map(A => \signal_send_0/cnt_send_c10_net_1\, B => 
        \cnt_send[11]_net_1\, C => N_378, Y => cnt_send_n11);
    
    \signal_send_0/data_send_buffer_3_1_a2_0_0[2]\ : NOR2A
      port map(A => \data_all[2]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \signal_send_0/data_send_buffer_3_1_a2_0[2]\);
    
    \data_all[136]\ : DFN1E0C0
      port map(D => N_1608, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[136]_net_1\);
    
    \signal_send_0/data_all_4_i_a2_0[22]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_388\, Y => 
        \signal_send_0/N_827\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[1]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[1]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[1]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[11]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[11]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[11]\);
    
    \signal_send_0/un17_data_send_bufferlt30_22_11\ : OR3
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[11]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        \signal_send_0/un17_data_send_bufferlt30_22_11_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[73]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[74]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[72]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[73]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[23]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[24]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[23]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[152]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[153]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[151]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[152]\);
    
    \signal_send_0/un38_data_send_buffer_968_i_a2_7_0\ : NOR2A
      port map(A => \signal_send_0/N_1656\, B => 
        \data_all[57]_net_1\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_7_0_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_a2_14[3]\ : NOR3C
      port map(A => \signal_send_0/N_1649\, B => 
        \signal_send_0/N_1660\, C => \data_all[51]_net_1\, Y => 
        \signal_send_0/N_538\);
    
    \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF[2]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b4_PfFz/b5_PbrtL/b6_OKctIF4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\);
    
    \single_recive_0/data_recive_RNO_1[3]\ : NOR3C
      port map(A => \single_recive_0/N_123_mux\, B => 
        \single_recive_0/m85_3\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[9]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[8]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[9]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[18]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[24]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[24]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[24]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[79]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[78]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[79]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[110]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[50]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[110]\);
    
    \single_recive_0/cnt[2]\ : DFN1C0
      port map(D => \single_recive_0/I_7\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[2]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_15\, Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]_net_1\);
    
    \signal_send_0/m1_0_a3\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_481_2\);
    
    \signal_send_0/data_all_4_i[130]\ : OA1B
      port map(A => \signal_send_0/N_366\, B => 
        \signal_send_0/N_643_2\, C => 
        \signal_send_0/data_all_4_i_0[130]_net_1\, Y => N_118);
    
    \signal_send_0/un1_cnt_end_1_I_34\ : AX1C
      port map(A => \signal_send_0/DWACT_ADD_CI_0_g_array_2[0]\, 
        B => \signal_send_0/cnt_end[4]_net_1\, C => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/I_34\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[93]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[94]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[92]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[93]\);
    
    \signal_send_0/un7_cnt_1_I_13\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/cnt[3]_net_1\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => \signal_send_0/N_8\);
    
    \data_all[145]\ : DFN1E0C0
      port map(D => N_1599, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[145]_net_1\);
    
    \signal_send_0/data_send_buffer_3_1_1[4]\ : AO1
      port map(A => \data_all[60]_net_1\, B => 
        \signal_send_0/N_1690\, C => \signal_send_0/N_521\, Y => 
        \signal_send_0/data_send_buffer_3_1_1[4]_net_1\);
    
    \signal_send_0/cnt_flag_n4_tz\ : AX1C
      port map(A => \signal_send_0/cnt_flag_c2_net_1\, B => 
        \cnt_flag[3]_net_1\, C => \cnt_flag[4]_net_1\, Y => 
        \signal_send_0/cnt_flag_n4_tz_net_1\);
    
    \signal_send_0/m77_0_a2_1\ : NOR2A
      port map(A => \signal_send_0/m77_0_a2_1_0_net_1\, B => 
        \signal_send_0/un17_data_send_buffer\, Y => 
        \signal_send_0/N_967\);
    
    \signal_send_0/un5_idle_recive_3_0\ : NOR2
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_recive[10]_net_1\, Y => 
        \signal_send_0/un5_idle_recive_3_net_1\);
    
    \signal_send_0/tx_uart_RNO_9\ : NOR2B
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/data_send_m[1]\);
    
    \signal_send_0/data_all_4_i[49]\ : NOR3
      port map(A => \signal_send_0/N_781\, B => N_378, C => 
        \signal_send_0/N_782\, Y => N_239);
    
    \cnt_delay[0]\ : DFN1E1C0
      port map(D => N_1482, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_delaye, Q => \cnt_delay[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[56]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[104]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[56]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[1]\ : DFN1
      port map(D => \data_all[158]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[1]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[26]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[134]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[26]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[95]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[94]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[95]\);
    
    \signal_send_0/data_all_4_0[107]\ : AO1A
      port map(A => \signal_send_0/N_1713\, B => 
        \data_all[107]_net_1\, C => \signal_send_0/N_682\, Y => 
        \data_all_4[107]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[105]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[105]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[105]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[21]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[21]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[21]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[3]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[3]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[5]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[4]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[5]\);
    
    \signal_send_0/cnt_recive_end_n4\ : XA1
      port map(A => \cnt_recive_end[4]_net_1\, B => 
        \signal_send_0/cnt_recive_end_c3_net_1\, C => 
        \signal_send_0/cnt_recive_end_0_sqmuxa_net_1\, Y => 
        cnt_recive_end_n4);
    
    \signal_send_0/data_all_4_i_a2_0[19]\ : NOR3A
      port map(A => \signal_send_0/N_379\, B => 
        \signal_send_0/N_348\, C => \signal_send_0/N_385\, Y => 
        \signal_send_0/N_833\);
    
    \signal_send_0/data_all_4_i_0[25]\ : NOR3
      port map(A => \signal_send_0/N_459\, B => N_378, C => 
        \signal_send_0/N_460\, Y => N_273);
    
    \single_recive_0/recive_RNO\ : AO1C
      port map(A => idle_recive, B => 
        \single_recive_0/rx_down_net_1\, C => 
        \single_recive_0/un1_cnt\, Y => \single_recive_0/un2_cnt\);
    
    \signal_send_0/data_all_4_i_0[76]\ : AO1A
      port map(A => \data_all[76]_net_1\, B => 
        \signal_send_0/N_372\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0[76]_net_1\);
    
    \signal_send_0/cnt_RNI8LVP[5]\ : NOR2A
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart32_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[57]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[57]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[57]\);
    
    \signal_send_0/data_send_buffer_3_1_a2_17_2[2]\ : NOR3B
      port map(A => \signal_send_0/m77_0_a2_3_0_net_1\, B => 
        \data_all[26]_net_1\, C => \signal_send_0/N_318\, Y => 
        \signal_send_0/data_send_buffer_3_1_a2_17_2[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_4\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[72]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[88]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[72]\);
    
    \signal_send_0/send_end_0_sqmuxa_i_a3_18\ : NOR3A
      port map(A => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_10_net_1\, B => 
        \cnt_send[17]_net_1\, C => \cnt_send[23]_net_1\, Y => 
        \signal_send_0/send_end_0_sqmuxa_i_a3_18_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[29]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[29]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[29]\);
    
    \single_recive_0/cnt[10]\ : DFN1C0
      port map(D => \single_recive_0/I_28\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[10]_net_1\);
    
    \signal_send_0/data_all_4_i[0]\ : NOR3
      port map(A => \signal_send_0/N_875\, B => N_378, C => 
        \signal_send_0/N_876\, Y => N_323);
    
    \signal_send_0/data_send_buffer_3_1_a2_11[4]\ : NOR2B
      port map(A => \data_all[68]_net_1\, B => 
        \signal_send_0/N_1685\, Y => \signal_send_0/N_517\);
    
    \signal_send_0/cnt_recive_n1_i\ : XA1B
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => N_378, Y => N_35);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[7]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b13_nAzGfFM_sLsv3_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_97\);
    
    \signal_send_0/OVER_11_1\ : OR3A
      port map(A => \signal_send_0/un5_idle_recive_7_0_net_1\, B
         => \cnt_recive[19]_net_1\, C => \cnt_recive[20]_net_1\, 
        Y => \signal_send_0/OVER_11_1_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[41]\ : DFN1
      port map(D => \data_all[118]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[41]_net_1\);
    
    \cnt_recive[0]\ : DFN1E0C0
      port map(D => N_101, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[111]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[110]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[111]\);
    
    \single_recive_0/data_recive[1]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[1]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[1]\);
    
    \signal_send_0/data_all_4_i_0_0[152]\ : AO1A
      port map(A => \data_all[152]_net_1\, B => 
        \signal_send_0/N_1739\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[152]_net_1\);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[31]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\, 
        B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[31]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[31]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[28]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]_net_1\);
    
    \signal_send_0/un38_data_send_buffer_683_i_m3\ : MX2
      port map(A => \signal_send_0/N_519_3\, B => 
        \signal_send_0/N_535_3\, S => \cnt_send_0[1]_net_1\, Y
         => \signal_send_0/N_453\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[140]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[141]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[139]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[140]\);
    
    \signal_send_0/data_all_4_i_0_0[15]\ : AO1A
      port map(A => \data_all[15]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[15]_net_1\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw\ : UJTAG
      port map(TDI => atdi, TMS => atms, TCK => atck, TRSTB => 
        atrstb, TDO => atdo, UTDO => 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2\, 
        URSTB => OPEN, UDRCK => 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk_int\, 
        UDRCAP => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, UDRSH
         => \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, 
        UDRUPD => 
        \ident_coreinst/comm_block_INST/jtagi/identify_clk2_no_clk_buffer_needed\, 
        UTDI => \ident_coreinst/IICE_comm2iice[7]\, UIREG0 => 
        OPEN, UIREG1 => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[1]\, 
        UIREG2 => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[2]\, 
        UIREG3 => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, 
        UIREG4 => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        UIREG5 => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[5]\, 
        UIREG6 => 
        \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, 
        UIREG7 => OPEN);
    
    \ident_coreinst/comm_block_INST_IICE_comm2iice_RNISUM1[9]\ : 
        BUFF
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_comm2iice_0[9]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[31]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[129]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[31]\);
    
    \signal_send_0/data_all_4_i_0[14]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => 
        \signal_send_0/N_316\, C => 
        \signal_send_0/data_all_4_i_0_0[14]_net_1\, Y => N_295);
    
    \signal_send_0/un38_data_send_buffer_968_i_11\ : OA1
      port map(A => 
        \signal_send_0/un38_data_send_buffer_968_i_a2_11_0_net_1\, 
        B => 
        \signal_send_0/un38_data_send_buffer_968_i_11_tz_1_net_1\, 
        C => \signal_send_0/N_1645\, Y => 
        \signal_send_0/un38_data_send_buffer_968_i_11_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[44]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[44]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[44]\);
    
    \signal_send_0/data_send_buffer_3_1_2[4]\ : AO1
      port map(A => \data_all[44]_net_1\, B => 
        \signal_send_0/N_971\, C => \signal_send_0/N_519\, Y => 
        \signal_send_0/data_send_buffer_3_1_2[4]_net_1\);
    
    \signal_send_0/cnt_recive_n4_i\ : XA1C
      port map(A => \cnt_recive[4]_net_1\, B => 
        \signal_send_0/N_1492\, C => N_378, Y => N_34);
    
    \signal_send_0/un37_data_send_buffer_1933_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_642_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[143]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[144]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[142]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[143]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[51]\ : DFN1
      port map(D => \data_all[108]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[51]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[13]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[77]\ : 
        DFN1E1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[76]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.genblk9.b9_v_mzCDYXs13_1\, 
        Q => \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[77]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[17]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[17]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[17]\);
    
    \signal_send_0/data_all_4_i[59]\ : NOR3
      port map(A => \signal_send_0/N_761\, B => N_378, C => 
        \signal_send_0/N_762\, Y => N_219);
    
    \signal_send_0/data_all_4_i_0_0[13]\ : AO1A
      port map(A => \data_all[13]_net_1\, B => 
        \signal_send_0/N_316\, C => N_378, Y => 
        \signal_send_0/data_all_4_i_0_0[13]_net_1\);
    
    \signal_send_0/data_all_4_i[1]\ : NOR3
      port map(A => \signal_send_0/N_873\, B => N_378, C => 
        \signal_send_0/N_874\, Y => N_321);
    
    \signal_send_0/un37_data_send_buffer_1777_i_i_a3\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_388\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[157]\ : DFN1
      port map(D => \data_all[2]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[157]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[146]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[146]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[146]\);
    
    \signal_send_0/un37_data_send_buffer_1772_i_i_a3\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => 
        \cnt_recive[0]_net_1\, Y => \signal_send_0/N_383\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[116]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[44]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[116]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[116]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[116]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[116]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[160]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[160]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[160]\);
    
    \data_all[110]\ : DFN1E0C0
      port map(D => \data_all_4[110]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[110]_net_1\);
    
    \signal_send_0/cnt_m3_0_a2_2_0\ : NOR2B
      port map(A => \cnt_recive[17]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => 
        \signal_send_0/cnt_m3_0_a2_2_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[61]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[62]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[60]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[61]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[65]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[66]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[64]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[65]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[84]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[85]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[83]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[84]\);
    
    \signal_send_0/un37_data_send_buffer_2096_0_a2\ : NOR3A
      port map(A => \data_recive_buffer[3]\, B => 
        \cnt_recive[2]_net_1\, C => \signal_send_0/N_339\, Y => 
        \signal_send_0/N_804_2\);
    
    \signal_send_0/un7_cnt_1_I_28\ : XOR2
      port map(A => \signal_send_0/N_3\, B => 
        \signal_send_0/cnt[10]_net_1\, Y => 
        \signal_send_0/I_28_0\);
    
    \signal_send_0/un17_data_send_bufferlt30_2_i_o2\ : OR2
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => \signal_send_0/N_318\);
    
    \signal_send_0/cnt_end_RNO[0]\ : XA1B
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end_1_sqmuxa\, C => 
        \signal_send_0/cnt_end_0_sqmuxa\, Y => 
        \signal_send_0/cnt_end_5[0]\);
    
    \signal_send_0/data_all_4_i_0_a3_0[42]\ : NOR2
      port map(A => \signal_send_0/N_1736\, B => 
        \data_recive_buffer[2]\, Y => \signal_send_0/N_484\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_4[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\);
    
    \signal_send_0/cnt_end_RNISCMJ[8]\ : NOR2
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/cnt_end[8]_net_1\, Y => 
        \signal_send_0/un8_cnt_end_4\);
    
    \signal_send_0/m16\ : XA1B
      port map(A => \cnt_send[4]_net_1\, B => 
        \signal_send_0/N_7_0\, C => N_378, Y => cnt_send_n4);
    
    \signal_send_0/cnt_recive_n5_i\ : XA1C
      port map(A => \cnt_recive[5]_net_1\, B => 
        \signal_send_0/N_1496\, C => N_378, Y => N_32);
    
    \signal_send_0/un1_cnt_end_1_I_56\ : NOR2B
      port map(A => \signal_send_0/DWACT_ADD_CI_0_TMP[0]\, B => 
        \signal_send_0/cnt_end[1]_net_1\, Y => 
        \signal_send_0/DWACT_ADD_CI_0_g_array_1[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[49]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[49]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[49]\);
    
    \cnt_delay[3]\ : DFN1E1C0
      port map(D => cnt_delay_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO_0[0]\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_partial_sum[0]\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_89\);
    
    \data_all[150]\ : DFN1E0C0
      port map(D => N_1594, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[150]_net_1\);
    
    \signal_send_0/un37_data_send_buffer_1932_0_a2\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => 
        \signal_send_0/N_339\, Y => \signal_send_0/N_641_2\);
    
    \signal_send_0/cnt_RNO[0]\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/cnt_4[0]\);
    
    \signal_send_0/data_all_4_i[76]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => 
        \signal_send_0/N_372\, C => 
        \signal_send_0/data_all_4_i_0[76]_net_1\, Y => N_185);
    
    \signal_send_0/cnt[10]\ : DFN1C0
      port map(D => \signal_send_0/I_28_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[10]_net_1\);
    
    \signal_send_0/data_all_4_0_a2_1_i_o2[127]\ : OR2
      port map(A => 
        \signal_send_0/data_all_4_0_a2_1_i_o2_1[127]_net_1\, B
         => \signal_send_0/N_344\, Y => \signal_send_0/N_320\);
    
    \cnt_delay[7]\ : DFN1E1C0
      port map(D => cnt_delay_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[7]_net_1\);
    
    \single_recive_0/data_recive_RNO_0[0]\ : AOI1B
      port map(A => \single_recive_0/m52_3\, B => 
        \single_recive_0/N_123_mux\, C => \data_recive_buffer[0]\, 
        Y => \single_recive_0/m93_0\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
