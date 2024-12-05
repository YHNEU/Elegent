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

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component OA1C
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

  component DFN1E0C1
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

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR3A
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

  component AX1C
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

  component AND3B
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

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component DFN1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1B
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

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1
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

  component OR3A
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

  component DFN1E1C1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3B
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

  component MX2C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component DFN1E0P1
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

  component AX1
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

  component AOI1A
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

  component DFN1P1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AND3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
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
        \data_send_buffer[7]_net_1\, idle_send, 
        \cnt_recive[0]_net_1\, \cnt_recive[1]_net_1\, 
        \cnt_recive[2]_net_1\, \cnt_recive[3]_net_1\, 
        \cnt_recive[4]_net_1\, \cnt_recive[5]_net_1\, 
        \cnt_recive[6]_net_1\, \cnt_recive[7]_net_1\, 
        \cnt_recive[8]_net_1\, \cnt_recive[9]_net_1\, 
        \cnt_recive[10]_net_1\, \cnt_recive[11]_net_1\, 
        \cnt_recive[12]_net_1\, \cnt_recive[13]_net_1\, 
        \cnt_recive[14]_net_1\, \cnt_recive[15]_net_1\, 
        \cnt_recive[16]_net_1\, \cnt_recive[17]_net_1\, 
        \cnt_recive[18]_net_1\, \cnt_recive[19]_net_1\, 
        \cnt_recive[20]_net_1\, \cnt_recive[21]_net_1\, 
        \cnt_recive[22]_net_1\, \cnt_recive[23]_net_1\, 
        \cnt_recive[24]_net_1\, \cnt_recive[25]_net_1\, 
        \cnt_recive[26]_net_1\, \cnt_recive[27]_net_1\, 
        \cnt_recive[28]_net_1\, \cnt_recive[29]_net_1\, 
        \cnt_recive[30]_net_1\, \cnt_send[0]_net_1\, 
        \cnt_send[1]_net_1\, \cnt_send[2]_net_1\, 
        \cnt_send[3]_net_1\, \cnt_send[4]_net_1\, 
        \cnt_send[5]_net_1\, \cnt_send[6]_net_1\, 
        \cnt_send[7]_net_1\, \cnt_send[8]_net_1\, 
        \cnt_send[9]_net_1\, \cnt_send[10]_net_1\, 
        \cnt_send[11]_net_1\, \cnt_send[12]_net_1\, 
        \cnt_send[13]_net_1\, \cnt_send[14]_net_1\, 
        \cnt_send[15]_net_1\, \cnt_send[16]_net_1\, 
        \cnt_send[17]_net_1\, \cnt_send[18]_net_1\, 
        \cnt_send[19]_net_1\, \cnt_send[20]_net_1\, 
        \cnt_send[21]_net_1\, \cnt_send[22]_net_1\, 
        \cnt_send[23]_net_1\, \cnt_send[24]_net_1\, 
        \cnt_send[25]_net_1\, \cnt_send[26]_net_1\, 
        \cnt_send[27]_net_1\, \cnt_send[28]_net_1\, 
        \cnt_send[29]_net_1\, \cnt_send[30]_net_1\, 
        \cnt_flag[3]_net_1\, \cnt_flag[0]_net_1\, 
        \cnt_flag[1]_net_1\, \cnt_delay[1]_net_1\, 
        \cnt_delay[2]_net_1\, \cnt_delay[5]_net_1\, 
        \idle_recive_fall\, \idle_send_fall\, idle_recive_fall_3, 
        idle_send_fall_2, idle_recive_down_3, idle_send_down_3, 
        \idle_send_down\, \cnt_recive_end[0]_net_1\, 
        \cnt_recive_end[1]_net_1\, receive_end2lto2, 
        receive_end2lto3, \cnt_recive_end[4]_net_1\, 
        \cnt_recive_end[5]_net_1\, \cnt_recive_end[6]_net_1\, 
        receive_end2lto7, receive_end2lto8, receive_end2lto9, 
        \cnt_delay[0]_net_1\, \cnt_delay[3]_net_1\, 
        \cnt_delay[4]_net_1\, \cnt_delay[6]_net_1\, 
        \cnt_delay[7]_net_1\, \cnt_flag[2]_net_1\, 
        \cnt_flag[4]_net_1\, cnt_recive_end_n0, cnt_recive_end_n1, 
        cnt_recive_end_n2, cnt_recive_end_n3, cnt_recive_end_n4, 
        cnt_recive_end_n5, cnt_recive_end_n6, cnt_recive_end_n7, 
        cnt_recive_end_n8, cnt_recive_end_n9, N_378, 
        \send_end_RNO\, 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\, 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\, sys_clk_c, 
        sys_rest_c, rx_uart_c, tx_uart_c, test_c, N_240, 
        cnt_recive_1_sqmuxa, N_215, N_195, N_262, 
        \data_all_4[104]\, \data_all_4[105]\, \data_all_4[106]\, 
        \data_all_4[107]\, \data_all_4[108]\, \data_all_4[109]\, 
        \data_all_4[110]\, N_1611, N_1609, N_38, N_35, N_46, 
        N_1491, N_142, N_687, N_685, N_683, N_681, N_679, N_677, 
        N_675, N_648_2, N_1668, N_1713, N_628, N_627, N_624, 
        N_623, N_641_2, N_339, N_643_2, N_646_2, N_647_2, N_346, 
        N_344, N_337, N_312, N_310, N_320, N_385, N_314, N_437, 
        N_355, N_292, N_306, un5_idle_recive_23, N_285, N_239, 
        N_235, N_227, N_191, N_175, N_1726, N_1597, N_1586, N_34, 
        N_101, N_83_i, N_525, N_524, N_523, N_140_mux, N_457, 
        N_484_3, N_500_3, N_383, N_1739, N_927, N_1662, N_1645, 
        N_1649, N_1682, N_889, N_925, N_1731, N_1730, N_1833, 
        N_1832, N_333, N_138, N_123, N_447, N_1912, N_1658, N_651, 
        N_911, \data_all_4[123]\, N_1596, N_1598, N_1599, N_1699, 
        N_148_mux, \data_all_4[151]\, cnt_delaye, 
        vld_send_2_sqmuxa, vld_send_0_sqmuxa, N_1482, 
        cnt_delay_n1, cnt_delay_n2, cnt_delay_n3, cnt_delay_n4, 
        cnt_delay_n5, cnt_delay_n6, cnt_delay_n7, cnt_flage, 
        N_1483, cnt_flag_n1, cnt_flag_n2, cnt_flag_n3, 
        cnt_flag_n4, N_321, N_236, N_238, N_250, N_207, N_159, 
        N_155, N_149, N_266, N_270, N_120, N_1603, N_1592, N_115, 
        cnt_sende, N_874, N_642_2, N_873, N_636, N_635, N_1887, 
        N_1886, N_1553, N_1555, N_1544, data_send_buffer_1_sqmuxa, 
        N_1716, \data_send_buffer_3[2]\, \data_send_buffer_3[5]\, 
        N_556, N_555, N_552, N_551, N_549, N_323, N_319, N_311, 
        N_242, N_209, un5_idle_recive_10, un5_idle_recive_9, 
        un5_idle_recive_8, un5_idle_recive_7, un5_idle_recive_5, 
        un5_idle_recive_3, un5_idle_recive_2, N_876, N_875, N_872, 
        N_871, N_1883, N_1882, N_1600, N_1595, N_1593, N_1589, 
        N_1920, N_1867, N_1866, N_584, N_583, N_1725, 
        \data_all_4[124]\, \data_all_4[125]\, N_1610, N_510, 
        N_649, N_1630, N_626, N_625, N_1675, N_1831, N_1830, 
        cnt_send_n21, cnt_send_n19, cnt_send_n12, N_1486, N_1487, 
        N_1488, N_1489, N_24_0, cnt_send_c20, cnt_send_c11, 
        N_1504, N_1500, N_1497, N_1535, N_1898, N_359_i, N_349_i, 
        N_352_i, N_78_i, N_79_i, un12_cnt_send_29, 
        un12_cnt_send_26, un12_cnt_send_24, un12_cnt_send_25, 
        un12_cnt_send_23, un12_cnt_send_20, un12_cnt_send_18, 
        N_74_i, N_73_i, N_75_i, un12_cnt_send_13, 
        un12_cnt_send_10, un12_cnt_send_11, N_1541, N_54, N_56, 
        N_61, N_62, N_63, N_64, N_70, N_72, N_317, N_870, N_869, 
        N_315, N_313, N_1638, N_1637, N_309, N_307, N_299, N_291, 
        N_289, N_287, N_283, N_281, N_279, N_277, N_241, N_237, 
        N_233, N_231, N_225, N_223, N_221, N_219, N_217, N_213, 
        N_205, N_203, N_201, N_199, N_197, N_193, N_183, N_181, 
        N_179, N_171, N_169, N_122, N_638, N_637, N_118, N_634, 
        N_633, N_116, N_632, N_631, N_1612, N_630, N_629, N_558, 
        N_804_2, N_318, N_489, N_1614, N_480, N_476, N_472, 
        N_1727, N_274, N_258, N_254, N_246, N_1885, N_1884, N_234, 
        N_1874, N_1873, N_1588, N_1594, N_1601, N_1602, N_1850, 
        N_1849, N_1604, N_1845, N_1844, N_1605, N_1843, N_1842, 
        N_1606, N_1841, N_1840, N_1607, N_1608, N_1837, N_1836, 
        N_212, N_1835, N_1834, N_1724, N_1723, N_1722, N_1721, 
        N_1720, N_1719, N_1718, N_1717, N_147, N_151, N_153, 
        N_157, N_161, N_163, N_165, N_167, N_173, N_177, N_211, 
        N_229, N_243, N_245, N_492, N_1773, N_247, N_249, N_251, 
        N_253, N_255, N_257, N_1768, N_1767, N_259, N_261, N_263, 
        N_265, N_267, N_269, N_271, N_273, N_275, N_293, N_295, 
        N_297, N_301, N_303, N_305, N_1715, N_391, N_390, N_967, 
        un17_data_send_buffer, N_145_mux, N_1917, N_397, N_1583, 
        N_189, N_187, N_185, N_1591, N_588, N_587, N_1590, N_586, 
        N_585, N_1587, N_494, N_450, N_102, N_71, N_68, N_1523, 
        N_1505, N_1521, N_519_3, N_567_3, N_495, N_452, N_496, 
        N_497, N_499, N_500, N_504, N_455, N_453, N_551_3, 
        N_535_3, N_487_3, N_503_3, N_6_0, N_16_0, cnt_send_n4, 
        cnt_send_n3, cnt_send_n2, \data_send_buffer_3[6]\, 
        N_481_2, N_384, N_386, N_388, N_360, N_308, N_1736, 
        \data_send_buffer_3[7]\, N_502, N_503, N_485_3, N_501_3, 
        N_513_3, N_529_3, N_609_3, N_625_3, N_505, N_456, N_506, 
        N_512, N_513, N_514, N_1688, N_515, N_516, N_517, N_1690, 
        N_519, N_520, N_521, N_968, N_529, N_530, N_531, N_532, 
        N_534, N_535, N_536, N_537, N_538, N_539, N_541, N_542, 
        N_545, N_546, N_547, N_548, N_553, N_557, N_451, N_454, 
        N_1660, N_564, N_565, N_566, N_567, N_569, N_570, N_571, 
        N_576, N_654, N_655, \un52_data_all[48]\, 
        \data_all_4[122]\, \data_all_4[121]\, 
        \data_send_buffer_3[0]\, \data_send_buffer_3[3]\, 
        \data_send_buffer_3[4]\, N_66, cnt_recive_n24, 
        cnt_recive_n23, cnt_recive_n22, cnt_recive_n21, 
        cnt_recive_n20, cnt_recive_n19, cnt_recive_n18, 
        cnt_recive_n17, cnt_recive_n12, cnt_recive_n11, 
        cnt_recive_n10, N_39, N_41, N_43, N_45, N_57, N_58, 
        cnt_send_c13, N_24, N_26, N_28, N_30, N_32, N_36, 
        cnt_send_n9, N_1496, N_1499, receive_end_1_sqmuxa, 
        cnt_recive_end_0_sqmuxa, cnt_recive_end_c2, 
        cnt_recive_end_c3, cnt_recive_end_c4, cnt_recive_end_c5, 
        cnt_recive_end_c6, cnt_recive_end_c7, receive_end2lt9, 
        receive_end2lt7, cnt_send_c9, cnt_send_c10, cnt_send_c19, 
        cnt_send_c28, N_996, cnt_send_n10, cnt_send_n11, 
        cnt_send_n13, cnt_send_n14, cnt_send_n20, cnt_send_n29, 
        cnt_send_n30, cnt_recive_n13, cnt_recive_n14, 
        cnt_recive_n15, cnt_recive_n16, cnt_send_c27, 
        cnt_send_c25, cnt_send_c21, cnt_recive_c24, 
        cnt_recive_c25, cnt_recive_c26, cnt_recive_c27, 
        cnt_recive_c28, N_1057, cnt_send_n22, cnt_send_n23, 
        cnt_send_n24, cnt_send_n25, cnt_send_n26, cnt_send_n27, 
        cnt_send_n28, cnt_recive_n25, cnt_recive_n26, 
        cnt_recive_n27, cnt_recive_n28, cnt_recive_n29, 
        cnt_recive_n30, \ident_coreinst.IICE_INST.b3_SoW.N_1550\, 
        \data_send_buffer_RNO_3[5]_net_1\, 
        \data_send_buffer_RNO_5[5]_net_1\, 
        \data_send_buffer_RNO_7[5]_net_1\, 
        \data_send_buffer_RNO_4[7]_net_1\, 
        \data_send_buffer_RNO_3[7]_net_1\, OVER_12, 
        un38_data_send_buffer_968_i_a2_2_0, 
        un38_data_send_buffer_968_i_a2_6_0, 
        un38_data_send_buffer_968_i_a2_10_0, 
        un38_data_send_buffer_968_i_a2_14_0, 
        un38_data_send_buffer_968_i_a2_11_0, 
        un38_data_send_buffer_968_i_a2_3_0, 
        un38_data_send_buffer_968_i_a2_0, 
        un38_data_send_buffer_968_i_a2_7_0, 
        un17_data_send_bufferlt30_22, 
        un38_data_send_buffer_968_i_10, 
        un38_data_send_buffer_968_i_11, cnt_recive_end_19_0, 
        m77_0_a2_1_0, m81_i_a3_5_0, m81_i_a3_2_0, m77_0_a3_2_0, 
        m62_0_a3_4_0, m77_0_a3_3_0, m62_0_a3_5_0, m62_0_a3_6_0, 
        m77_0_a3_15_0, m77_0_a3_8_0, m77_0_a3_7_0, m62_0_a3_12_0, 
        m77_0_a3_14_0, m62_0_a3_7_0, m62_0_a3_13_0, m77_0_a3_6_0, 
        m77_0_a3_12_0, m77_0_a3_10_0, m62_0_a3_8_0, m77_0_a3_11_0, 
        m62_0_a3_10_0, m77_0_a3_1_1, 
        \data_send_buffer_3_1_a2_11_0[0]\, m77_0_a3_16_0, 
        \data_send_buffer_3_1_a2_17_0[2]\, 
        \data_send_buffer_3_1_a2_9_0[0]\, m62_0_a3_3_0, 
        \data_send_buffer_3_1_a2_18_0[2]\, m62_0_a3_14_0, m62_0_0, 
        m62_0_4, \data_send_buffer_3_1_3[2]\, cnt_send_n19_tz, 
        cnt_recive_end_n2_tz, cnt_send_n13_tz, cnt_recive_n16_tz, 
        cnt_send_n27_tz, N_2962_tz, N_2963_tz, 
        cnt_recive_c14_0_o4_m6_0_a2_4, cnt_send_c11_m6_0_a2_4, 
        cnt_recive_n22_0_o4_m4_0_a2_2, 
        cnt_recive_n11_0_o4_N_13_mux, cnt_recive_n21_0_N_9_mux, 
        cnt_send_n8_i_o3_N_9_mux, cnt_send_n25_N_11_mux, 
        data_send_buffer_3_1_a2_13_0_N_4, m77_0_a2_6tt_N_7_mux, 
        cnt_send_n24_tz_N_10_mux, cnt_send_n23_N_9_mux, 
        m81_i_a3_3_0, \data_send_buffer_3_1_7[0]\, m62_0_0_0, 
        m90_i_o2_out, data_all_4_0_a2_1_i_o2_out, 
        data_all_4_i_o3_23_N_3_mux, data_all_4_i_o3_79_N_3_mux, 
        cnt_recive_n7_i_o3_N_11_mux, 
        data_all_4_i_o3_i_o2_63_N_3_mux, 
        data_all_4_i_0_o2_88_N_3_mux, 
        data_all_4_i_o3_i_o2_87_N_3_mux, 
        data_all_4_i_o3_i_o2_55_N_3_mux, 
        data_all_4_i_o3_i_o2_15_N_3_mux, 
        data_all_4_i_o3_71_N_3_mux, m90_i_o2_N_3_mux, 
        data_all_4_i_o3_7_N_3_mux, 
        \cnt_recive_RNICR3EC_0[2]_net_1\, m81_i_3_tz, 
        receive_end2lto6_1, cnt_recive_c25tt_m3_e_0, 
        cnt_recive_c25tt_m3_e_1, 
        un37_data_send_buffer_2354_0_a2_0, 
        un37_data_send_buffer_2354_0_a2_1, 
        cnt_send_c11_m6_0_a2_4_0, cnt_send_c11_m6_0_a2_4_1, 
        cnt_send_c11_m6_0_a2_4_3, cnt_send_c11_m6_0_a2_4_5, 
        cnt_send_c11_m6_0_a2_4_6, cnt_recive_n22_0_o4_m4_0_a2_2_3, 
        m85_2, cnt_send_n8_i_o3_m4_0_a2_0, N_1680, 
        cnt_send_n8_i_o3_m4_0_a2_4, cnt_send_n8_i_o3_m4_0_a2_5, 
        cnt_recive_n7_i_o3_m5_0_a2_2, 
        cnt_recive_n7_i_o3_m5_0_a2_3, OVER_11_0, OVER_11_1, m30_1, 
        cnt_recive_c14_0_o4_m6_0_a2_4_1, 
        cnt_recive_c14_0_o4_m6_0_a2_4_4, 
        cnt_recive_c14_0_o4_m6_0_a2_4_5, 
        cnt_recive_c14_0_o4_m6_0_a2_4_6, m77_0_a3_1_1_0, 
        OVER_12_4, OVER_12_5, OVER_12_6, OVER_12_7, 
        un17_data_send_bufferlt30_22_2, 
        un17_data_send_bufferlt30_22_3, 
        un17_data_send_bufferlt30_22_5, 
        un17_data_send_bufferlt30_22_7, 
        un17_data_send_bufferlt30_22_8, 
        un17_data_send_bufferlt30_22_9, 
        un17_data_send_bufferlt30_22_11, 
        un17_data_send_bufferlt30_22_12, 
        un17_data_send_bufferlt30_22_14, 
        un17_data_send_bufferlt30_22_15, 
        un17_data_send_bufferlt30_22_17, 
        un17_data_send_bufferlt30_22_18, 
        un17_data_send_bufferlt30_22_20, 
        un17_data_send_bufferlt30_22_21, 
        cnt_recive_n11_0_o4_m6_0_a2_1, 
        cnt_recive_n11_0_o4_m6_0_a2_2, 
        cnt_recive_n11_0_o4_m6_0_a2_3, 
        cnt_recive_n11_0_o4_m6_0_a2_5, 
        cnt_recive_n11_0_o4_m6_0_a2_6, 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_3, 
        cnt_send_n17_i_o4_m5_0_a2_1, cnt_send_n17_i_o4_m5_0_a2_2, 
        cnt_send_n17_i_o4_m5_0_a2_5, cnt_send_n17_i_o4_m5_0_a2_6, 
        data_all_4_i_o3_i_o2_0_100_m2_e_2, 
        data_all_4_i_o3_i_o2_0_100_m2_e_3, 
        data_all_4_i_0_o2_0_36_m2_e_0, 
        data_all_4_i_0_o2_0_36_m2_e_2, 
        data_all_4_i_0_o2_0_36_m2_e_3, cnt_recive_c27_m6_0_a2_1, 
        cnt_recive_c27_m6_0_a2_3, cnt_recive_c27_m6_0_a2_4, 
        cnt_recive_c27_m6_0_a2_6, 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_0, 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_4, 
        un38_data_send_buffer_968_i_11_tz_1, 
        un38_data_send_buffer_968_i_10_tz_1, N_887, N_1898_3, 
        un38_data_send_buffer_968_i_a2_13_0, 
        un38_data_send_buffer_968_i_a2_5_0, 
        un38_data_send_buffer_968_i_a2_1_0, 
        \data_all_4_i_o2_1_i_a3_0[135]\, 
        \data_all_4_i_o2_1_i_a3_1[135]\, 
        cnt_send_n24_tz_m4_0_a2_1, cnt_send_n24_tz_m4_0_a2_3, 
        cnt_send_n24_tz_m4_0_a2_5, cnt_send_n23_m3_0_a2_0, 
        cnt_send_n23_m3_0_a2_2, cnt_send_n23_m3_0_a2_4, 
        cnt_send_c25_m6_0_a2_2, cnt_send_c25_m6_0_a2_3, 
        cnt_send_c25_m6_0_a2_4, cnt_send_c25_m6_0_a2_5, 
        cnt_send_c25_m6_0_a2_7, m77_0_a2_6_m3_0_a2_0_0, 
        \data_send_buffer_3_1_a2_17_1[2]\, 
        \data_send_buffer_3_1_a2_17_3[2]\, cnt_recive_n10_0_o4_0, 
        m62_0_0_tz_0, N_1656, m77_0_472_tz_0, m77_0_472_tz_1, 
        m77_0_473_tz_0, m62_0_4_tz_0, m62_0_4_tz_1, 
        \data_send_buffer_3_1_7_tz_0[0]\, 
        \data_send_buffer_3_1_7_tz_1[0]\, m77_0_471_tz_0, 
        m62_0_0_0_tz_0, m77_0_474_tz_0, 
        \data_send_buffer_3_1_a2_10_1[6]\, 
        \data_send_buffer_3_1_a2_10_3[6]\, un5_idle_recive_2_0, 
        un5_idle_recive_4_0, un5_idle_recive_6_0, 
        un5_idle_recive_8_0, un5_idle_recive_9_0, 
        un5_idle_recive_10_0, un5_idle_recive_11, 
        un5_idle_recive_12, un5_idle_recive_15, 
        un5_idle_recive_16, send_end_0_sqmuxa_i_a3_1, 
        send_end_0_sqmuxa_i_a3_3, send_end_0_sqmuxa_i_a3_4, 
        send_end_0_sqmuxa_i_a3_6, send_end_0_sqmuxa_i_a3_7, 
        send_end_0_sqmuxa_i_a3_8, send_end_0_sqmuxa_i_a3_10, 
        send_end_0_sqmuxa_i_a3_12, send_end_0_sqmuxa_i_a3_13, 
        send_end_0_sqmuxa_i_a3_14, send_end_0_sqmuxa_i_a3_16, 
        send_end_0_sqmuxa_i_a3_18, send_end_0_sqmuxa_i_a3_19, 
        send_end_0_sqmuxa_i_a3_21, send_end_0_sqmuxa_i_a3_22, 
        send_end_0_sqmuxa_i_a3_23, send_end_0_sqmuxa_i_a3_25, 
        \data_send_buffer_3_1_a2_0[6]\, m77_0_a2_3_0, N_1677, 
        m77_0_a2_0, N_1659, \data_all_4_i_o3_0_0_o3_0[100]\, 
        un38_data_send_buffer_968_i_0, 
        un38_data_send_buffer_968_i_1, 
        un38_data_send_buffer_968_i_3, 
        un38_data_send_buffer_968_i_5, 
        un38_data_send_buffer_968_i_7, m62_0_a3_2_0, 
        cnt_send_n25_m4_0_a2_2, cnt_send_n25_m4_0_a2_3, 
        cnt_send_n25_m4_0_a2_4, send_end_0_sqmuxa_i_0, 
        send_end_0_sqmuxa_i_1, send_end_0_sqmuxa_i_4, 
        send_end_0_sqmuxa_i_5, send_end_0_sqmuxa_i_6, 
        send_end_0_sqmuxa_i_7, send_end_0_sqmuxa_i_8, 
        send_end_0_sqmuxa_i_9, send_end_0_sqmuxa_i_10, 
        send_end_0_sqmuxa_i_11, send_end_0_sqmuxa_i_12, 
        send_end_0_sqmuxa_i_14, send_end_0_sqmuxa_i_15, 
        send_end_0_sqmuxa_i_20, send_end_0_sqmuxa_i_21, 
        send_end_0_sqmuxa_i_22, send_end_0_sqmuxa_i_23, 
        send_end_0_sqmuxa_i_24, send_end_0_sqmuxa_i_25, 
        send_end_0_sqmuxa_i_28, send_end_0_sqmuxa_i_29, 
        \data_all_4_i_a2_0_59_m1_e_1\, 
        data_all_4_i_a2_0_84_m1_e_1, 
        data_all_4_i_0_a3_0_24_m1_e_1, data_all_4_i_o3_23_m1_e_1, 
        data_all_4_i_0_a3_0_25_m1_e_1, 
        data_all_4_0_i_a3_0_112_m1_e_1, 
        data_all_4_i_0_a3_0_31_m1_e_1, 
        data_all_4_i_a2_0_59_m1_e_0, 
        data_all_4_0_i_a3_0_115_m1_e_1, m90_i_a3_0_m1_e_1, 
        data_all_4_i_0_a3_0_91_m1_e_1, 
        data_all_4_0_a2_0_123_m1_e_1, 
        data_all_4_i_0_a3_0_30_m1_e_1, 
        data_all_4_i_o3_i_o2_63_m1_e_0, data_all_4_i_o3_7_m1_e_1, 
        data_all_4_i_0_a3_0_27_m1_e_1, 
        data_all_4_i_0_a3_0_26_m1_e_1, 
        data_all_4_i_0_a3_0_29_m1_e_1, 
        data_all_4_i_0_a3_0_28_m1_e_1, 
        data_all_4_i_a2_0_71_m1_e_1, 
        data_all_4_i_o3_i_o2_55_m1_e_2, data_all_4_i_o3_7_m1_e_0, 
        cnt_recive_c25_m1_0_a2_0, \data_all_4_0_i_0[111]\, 
        \data_send_buffer_3_1_a2_17_1[3]\, 
        cnt_recive_n21_0_m3_0_a2_0, cnt_recive_n21_0_m3_0_a2_1, 
        cnt_recive_n21_0_m3_0_a2_2, cnt_recive_n21_0_m3_0_a2_4, 
        data_all_4_0_a2_122_m2_0, m81_i_a3_1_0, 
        \data_send_buffer_3_1_a2_19_0[2]\, cnt_send_107_0, 
        \data_send_buffer_3_1_a2_0[3]\, 
        \data_send_buffer_3_1_a2_1[2]\, 
        \data_send_buffer_3_1_a2_2[2]\, \data_all_4_0_i_0[35]\, 
        \data_all_4_i_0_0[42]\, \data_all_4_0_i_0[33]\, 
        \data_all_4_0_i_0[98]\, \data_all_4_0_i_0[34]\, 
        \data_all_4_i_0_0[43]\, \data_all_4_i_0_0[45]\, 
        \data_all_4_0_i_0[102]\, \data_all_4_i_0_0[44]\, 
        \data_all_4_0_i_0[101]\, \data_all_4_i_0_0[47]\, 
        \data_all_4_i_0_0[36]\, \data_all_4_0_i_0[97]\, 
        \data_all_4_0_i_0[99]\, \data_all_4_i_0_0[41]\, 
        \data_all_4_0_i_0[103]\, \data_all_4_0_i_0[96]\, 
        \data_all_4_i_0_0[146]\, \data_all_4_i_0_0[148]\, 
        \data_all_4_i_0_0[149]\, \data_all_4_i_0[147]\, 
        \data_all_4_i_0_0[150]\, \data_all_4_i_0_0[145]\, 
        \data_all_4_i_0_0[144]\, \data_all_4_i_0_0[137]\, 
        \data_all_4_i_0_0[141]\, \data_all_4_i_0_0[143]\, 
        \data_all_4_0_a2_0_0[124]\, \data_all_4_i_0_0[157]\, 
        \data_all_4_i_0[159]\, \data_all_4_i_0[158]\, 
        \data_all_4_i_0_0[153]\, \data_send_buffer_3_1_1[6]\, 
        \data_send_buffer_3_1_3[6]\, \data_send_buffer_3_1_5[6]\, 
        \data_send_buffer_3_1_6[6]\, \data_send_buffer_3_1_7[6]\, 
        \data_all_4_i_0_0[28]\, \data_all_4_i_0_0[26]\, 
        \data_all_4_i_0_0[24]\, \data_all_4_i_0_0[27]\, 
        \data_all_4_i_0_0[29]\, \data_all_4_i_0_0[30]\, 
        \data_all_4_i_0_0[31]\, \data_all_4_i_0_0[25]\, 
        cnt_send_n7_i_0, \data_send_buffer_3_1_0[0]\, 
        \data_send_buffer_3_1_1[0]\, \data_send_buffer_3_1_5[0]\, 
        \data_send_buffer_3_1_6[0]\, 
        \data_send_buffer_3_1_7_0[0]\, 
        \data_send_buffer_3_1_8[0]\, m81_i_0, m81_i_1, m81_i_2, 
        \data_all_4_0_i_0[115]\, \data_all_4_0_i_0[112]\, 
        \data_all_4_i_0[71]\, \data_all_4_i_0_0[91]\, 
        \data_all_4_i_0[59]\, \data_all_4_i_0[84]\, 
        cnt_send_n16_i_0, \data_send_buffer_3_1_0[3]\, 
        \data_send_buffer_3_1_1[3]\, \data_send_buffer_3_1_4[3]\, 
        \data_send_buffer_3_1_5[3]\, \data_send_buffer_3_1_7[3]\, 
        \data_send_buffer_3_1_9[3]\, \data_send_buffer_3_1_10[3]\, 
        \data_send_buffer_3_1_12[3]\, 
        \data_send_buffer_3_1_13[3]\, 
        \data_send_buffer_3_1_14[3]\, m62_0_1, m62_0_2, m62_0_4_0, 
        m77_0_0, m77_0_1, m77_0_3, \data_send_buffer_3_1_0[4]\, 
        \data_send_buffer_3_1_1[4]\, \data_send_buffer_3_1_3[4]\, 
        \data_send_buffer_3_1_4[4]\, \data_send_buffer_3_1_5[4]\, 
        \data_send_buffer_3_1_7[4]_net_1\, 
        \data_send_buffer_3_1_9[4]\, \data_send_buffer_3_1_11[4]\, 
        \data_send_buffer_3_1_12[4]_net_1\, 
        \data_send_buffer_3_1_13[4]\, 
        \data_send_buffer_3_1_14[4]\, \data_all_4_0_i_0[114]\, 
        \data_all_4_0_i_0[113]\, \data_all_4_i_0[4]\, 
        \data_all_4_i_0[7]\, \data_all_4_i_0[6]\, 
        \data_all_4_0_i_0[116]\, \data_all_4_0_i_0[117]\, 
        \data_all_4_0_i_0[118]\, \data_send_buffer_3_1_1[2]\, 
        \data_send_buffer_3_1_2[2]\, \data_send_buffer_3_1_5[2]\, 
        \data_send_buffer_3_1_6[2]\, \data_send_buffer_3_1_8[2]\, 
        \data_send_buffer_3_1_10[2]\, 
        \data_send_buffer_3_1_11[2]\, 
        \data_send_buffer_3_1_12[2]\, 
        \data_send_buffer_3_1_13[2]\, 
        \data_send_buffer_3_1_14[2]\, 
        \data_send_buffer_3_1_17[2]\, \data_all_4_i_0[64]\, 
        \data_all_4_i_0[83]\, \data_all_4_i_0_0[89]\, 
        \data_all_4_i_0[68]\, \data_all_4_i_0[58]\, 
        \data_all_4_i_0[67]\, \data_all_4_i_0_0[94]\, 
        \data_all_4_i_0[60]\, \data_all_4_i_0[66]\, 
        \data_all_4_i_0[70]\, \data_all_4_i_0_0[61]\, 
        \data_all_4_i_0_0[85]\, \data_all_4_i_0[62]\, 
        \data_all_4_i_0_0[93]\, \data_all_4_i_0_0[86]\, 
        \data_all_4_i_0_0[63]\, \data_all_4_i_0_0[82]\, 
        \data_all_4_i_0[81]\, \data_all_4_i_0_0[80]\, 
        \data_all_4_i_0_0[87]\, \data_all_4_i_0_0[92]\, 
        \data_all_4_i_0_0[95]\, \data_all_4_i_0[57]\, 
        \data_all_4_i_0_0[90]\, \data_all_4_i_0_0[88]\, 
        \data_all_4_i_0[65]\, \data_all_4_i_0[69]\, 
        \data_all_4_i_0[56]\, \data_all_4_i_0[76]\, 
        \data_all_4_i_0[77]\, \data_all_4_i_0_0[15]\, 
        \data_all_4_i_0_0[9]\, \data_all_4_i_0[73]\, 
        \data_all_4_i_0[75]\, \data_all_4_i_0_0[14]\, 
        \data_all_4_i_0[79]\, \data_all_4_i_0[12]\, 
        \data_all_4_i_0[21]\, \data_all_4_i_0_0[13]\, 
        \data_all_4_i_0_0[11]\, \data_all_4_i_0_0[10]\, 
        \data_all_4_i_0[72]\, \data_all_4_i_0[22]\, 
        \data_all_4_i_0[19]\, \data_all_4_i_0[74]\, 
        \data_all_4_i_0[20]\, \data_all_4_i_0[16]\, 
        \data_all_4_i_0[78]\, \data_all_4_i_0[8]\, 
        \data_all_4_i_0[17]\, \data_all_4_i_0[18]\, 
        \data_all_4_i_0[23]\, \data_all_4_i_0[53]\, 
        \data_all_4_i_0_0[54]\, \data_all_4_i_0_0[55]\, 
        \data_all_4_i_0[51]\, \data_all_4_i_0[49]\, 
        \data_all_4_i_0[48]\, \data_all_4_i_0[50]\, 
        \data_all_4_i_0[52]\, N_67_i, N_59_i, 
        idle_recive_down_i_0, data_send_buffer_3_1_a2_16_2_N_5_i, 
        \send_end\, \idle_recive_down_RNIIQRK\, 
        \genblk9.b7_nYJ_BFM8_i\, cnt_sende_0, N_344_0, 
        \cnt_send_0[1]_net_1\, \cnt_send_0[0]_net_1\, 
        \cnt_send_1[0]_net_1\, \cnt_recive_0[3]_net_1\, 
        \cnt_recive_0[2]_net_1\, \cnt_recive_0[0]_net_1\, 
        \single_recive_0/cnt[1]_net_1\, 
        \single_recive_0/cnt[0]_net_1\, 
        \single_recive_0/cnt[3]_net_1\, 
        \single_recive_0/DWACT_FINC_E[0]\, 
        \single_recive_0/cnt[8]_net_1\, 
        \single_recive_0/DWACT_FINC_E[4]\, 
        \single_recive_0/m85_3\, \single_recive_0/m85_1\, 
        \single_recive_0/m12_1\, \single_recive_0/cnt[4]_net_1\, 
        \single_recive_0/cnt[9]_net_1\, 
        \single_recive_0/cnt_recive_end_0_sqmuxa_1\, 
        \single_recive_0/m67_0\, \single_recive_0/m65_7\, 
        \single_recive_0/m65_6\, \single_recive_0/m78_0\, 
        \single_recive_0/m76_7\, \single_recive_0/m76_6\, 
        \single_recive_0/m93_0\, \single_recive_0/m52_3\, 
        \single_recive_0/N_123_mux\, \single_recive_0/m89_0\, 
        \single_recive_0/m42_4\, \single_recive_0/N_116_mux\, 
        \single_recive_0/m87_0\, \single_recive_0/m23_2\, 
        \single_recive_0/m52_1\, \single_recive_0/m99_4\, 
        \single_recive_0/m76_2\, \single_recive_0/m99_0\, 
        \single_recive_0/m99_2\, \single_recive_0/cnt[11]_net_1\, 
        \single_recive_0/cnt[2]_net_1\, \single_recive_0/m42_1\, 
        \single_recive_0/m42_0\, \single_recive_0/m42_2\, 
        \single_recive_0/cnt[7]_net_1\, \single_recive_0/m12_5\, 
        \single_recive_0/m12_3\, \single_recive_0/m12_4\, 
        \single_recive_0/m31_5\, \single_recive_0/m23_4\, 
        \single_recive_0/m31_4\, \single_recive_0/m65_2\, 
        \single_recive_0/m65_1\, \single_recive_0/m65_4\, 
        \single_recive_0/N_103_mux\, 
        \single_recive_0/cnt[6]_net_1\, \single_recive_0/m23_7\, 
        \single_recive_0/m23_6\, \single_recive_0/m23_5\, 
        \single_recive_0/N_14_0\, \single_recive_0/m76_0\, 
        \single_recive_0/m76_5\, \single_recive_0/m47_2\, 
        \single_recive_0/m47_1\, \single_recive_0/m36_2\, 
        \single_recive_0/m36_1\, \single_recive_0/m36_0\, 
        \single_recive_0/cnt[5]_net_1\, 
        \single_recive_0/cnt[10]_net_1\, \single_recive_0/m4_0\, 
        \single_recive_0/N_27_i_0\, 
        \single_recive_0/data_recive24\, 
        \single_recive_0/data_recive_2_m[4]\, 
        \single_recive_0/data_recive27\, 
        \single_recive_0/N_38_i_0\, 
        \single_recive_0/data_recive30\, 
        \single_recive_0/un1_cnt\, \single_recive_0/N_104_mux\, 
        \single_recive_0/rx_down_net_1\, 
        \single_recive_0/un2_cnt\, \single_recive_0/cnt_4[0]\, 
        \single_recive_0/recive_net_1\, 
        \single_recive_0/cnt_4[3]\, \single_recive_0/cnt_4[11]\, 
        \single_recive_0/cnt_4[5]\, \single_recive_0/cnt_4[6]\, 
        \single_recive_0/cnt_4[7]\, 
        \single_recive_0/data_recive_12[1]\, 
        \single_recive_0/rx_uart_m_1\, 
        \single_recive_0/data_recive_12[2]\, 
        \single_recive_0/data_recive_12[4]\, 
        \single_recive_0/rx_uart_m_5\, 
        \single_recive_0/data_recive_12[6]\, 
        \single_recive_0/data_recive_12[7]\, 
        \single_recive_0/data_recive_12[5]\, 
        \single_recive_0/rx_uart_m_4\, 
        \single_recive_0/data_recive_12[3]\, 
        \single_recive_0/rx_uart_m_2\, 
        \single_recive_0/data_recive_12[0]\, 
        \single_recive_0/rx_uart_m\, \single_recive_0/rx_down_1\, 
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
        \single_recive_0/N_10\, 
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
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\, 
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
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, 
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
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[28]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_1552\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b4_ycsM\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[31]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[29]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[30]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[25]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[23]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[24]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[21]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[19]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[20]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[12]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[11]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[10]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[9]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[8]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[7]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[4]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[3]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[1]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[2]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[0]\, 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[1]\, 
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
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_25\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_27\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\, 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_0\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b8_vABZ3qsY_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
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
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\, 
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
        \ident_coreinst/IICE_INST/b5_nUTGT/N_194\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[3]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_191\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIBUG4[2]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[1]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[2]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_198_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[4]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[5]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[13]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/N_97\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b13_nAzGfFM_sLsv3_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[4]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[18]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[9]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[10]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[8]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[9]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[8]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[7]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[8]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[6]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[7]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[6]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]_net_1\, 
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
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
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
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme3\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\, 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
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
        \signal_send_0/tx_uart_11_iv_7\, 
        \signal_send_0/tx_uart_11_iv_1\, 
        \signal_send_0/tx_uart_11_iv_0\, 
        \signal_send_0/tx_uart_11_iv_4\, 
        \signal_send_0/tx_uart30\, \signal_send_0/un1_tx_uart42\, 
        \signal_send_0/tx_uart_11_iv_2\, 
        \signal_send_0/tx_uart35\, \signal_send_0/data_send_m[6]\, 
        \signal_send_0/tx_uart32\, \signal_send_0/parity_check_m\, 
        \signal_send_0/tx_uart31\, \signal_send_0/data_send_m[1]\, 
        \signal_send_0/un1_tx_uart27_1_0\, 
        \signal_send_0/tx_uart37\, \signal_send_0/tx_uart28_2\, 
        \signal_send_0/cnt[0]_net_1\, 
        \signal_send_0/cnt[3]_net_1\, 
        \signal_send_0/tx_uart34_4_0\, 
        \signal_send_0/cnt[6]_net_1\, \signal_send_0/tx_uart34_4\, 
        \signal_send_0/tx_uart34_3\, \signal_send_0/cnt[5]_net_1\, 
        \signal_send_0/tx_uart32_0\, \signal_send_0/cnt[4]_net_1\, 
        \signal_send_0/tx_uart35_5\, 
        \signal_send_0/cnt[10]_net_1\, 
        \signal_send_0/tx_uart27_3\, \signal_send_0/tx_uart31_7\, 
        \signal_send_0/tx_uart27_6\, \signal_send_0/tx_uart31_6\, 
        \signal_send_0/tx_uart29_1\, \signal_send_0/tx_uart31_5\, 
        \signal_send_0/cnt[2]_net_1\, 
        \signal_send_0/cnt[9]_net_1\, \signal_send_0/tx_uart31_1\, 
        \signal_send_0/cnt[7]_net_1\, 
        \signal_send_0/cnt[1]_net_1\, 
        \signal_send_0/tx_uart32_6_0\, 
        \signal_send_0/tx_uart32_5\, 
        \signal_send_0/cnt[11]_net_1\, 
        \signal_send_0/tx_uart32_5_0\, 
        \signal_send_0/tx_uart32_4\, \signal_send_0/tx_uart37_6\, 
        \signal_send_0/tx_uart37_5\, \signal_send_0/un1_cnt_2\, 
        \signal_send_0/tx_uart37_4\, \signal_send_0/un1_cnt_6\, 
        \signal_send_0/tx_uart36_6\, \signal_send_0/tx_uart35_4\, 
        \signal_send_0/tx_uart36_5\, \signal_send_0/tx_uart36_3\, 
        \signal_send_0/tx_uart36_4\, \signal_send_0/tx_uart36_1\, 
        \signal_send_0/tx_uart35_4_0\, 
        \signal_send_0/tx_uart35_3\, \signal_send_0/tx_uart36\, 
        \signal_send_0/tx_uart_11\, 
        \signal_send_0/tx_uart_11_iv_3\, 
        \signal_send_0/tx_uart29\, \signal_send_0/tx_uart34\, 
        \signal_send_0/parity_check_net_1\, 
        \signal_send_0/cnt[8]_net_1\, \signal_send_0/send_net_1\, 
        \signal_send_0/cnt_end_n9\, \signal_send_0/cnt_end_19_0\, 
        \signal_send_0/cnt_end[9]_net_1\, 
        \signal_send_0/un4_vld_send_down[0]\, 
        \signal_send_0/cnt_end[8]_net_1\, 
        \signal_send_0/cnt_end_c7\, \signal_send_0/cnt_end_c1\, 
        \signal_send_0/cnt_end[1]_net_1\, 
        \signal_send_0/cnt_end[0]_net_1\, 
        \signal_send_0/cnt_end_c6\, 
        \signal_send_0/cnt_end[7]_net_1\, 
        \signal_send_0/cnt_end_c5\, 
        \signal_send_0/cnt_end[6]_net_1\, 
        \signal_send_0/cnt_end_c4\, 
        \signal_send_0/cnt_end[5]_net_1\, 
        \signal_send_0/cnt_end_c3\, 
        \signal_send_0/cnt_end[4]_net_1\, 
        \signal_send_0/cnt_end_c2\, 
        \signal_send_0/cnt_end[2]_net_1\, 
        \signal_send_0/cnt_end[3]_net_1\, 
        \signal_send_0/parity_check_10_iv_4\, 
        \signal_send_0/parity_check_8_i_m\, 
        \signal_send_0/parity_check_5_i_m\, 
        \signal_send_0/parity_check_10_iv_0\, 
        \signal_send_0/parity_check_4\, 
        \signal_send_0/parity_check_2_i_m\, 
        \signal_send_0/un1_tx_uart27_8\, 
        \signal_send_0/un1_tx_uart27_2\, 
        \signal_send_0/un1_tx_uart27_5\, 
        \signal_send_0/un1_tx_uart27_7\, 
        \signal_send_0/tx_uart28\, 
        \signal_send_0/un1_tx_uart27_4\, 
        \signal_send_0/tx_uart33\, \signal_send_0/tx_uart27\, 
        \signal_send_0/tx_uart30_5\, \signal_send_0/un1_cnt_1\, 
        \signal_send_0/tx_uart30_4\, \signal_send_0/tx_uart30_3\, 
        \signal_send_0/tx_uart30_1\, \signal_send_0/tx_uart34_5\, 
        \signal_send_0/tx_uart29_7\, \signal_send_0/tx_uart29_3\, 
        \signal_send_0/tx_uart29_2\, \signal_send_0/un1_cnt_4\, 
        \signal_send_0/tx_uart29_6\, \signal_send_0/tx_uart29_0\, 
        \signal_send_0/tx_uart27_2\, \signal_send_0/tx_uart27_1\, 
        \signal_send_0/tx_uart27_4\, \signal_send_0/tx_uart33_5\, 
        \signal_send_0/tx_uart33_4\, \signal_send_0/tx_uart33_2\, 
        \signal_send_0/tx_uart33_3_0\, 
        \signal_send_0/tx_uart33_1\, 
        \signal_send_0/un1_tx_uart27\, 
        \signal_send_0/tx_uart27_9\, 
        \signal_send_0/parity_check_10_iv\, 
        \signal_send_0/parity_check_10_iv_3\, 
        \signal_send_0/parity_check_10_iv_2\, 
        \signal_send_0/tx_uart_11_sqmuxa\, 
        \signal_send_0/parity_check_0_sqmuxa\, 
        \signal_send_0/un1_tx_uart27_1_1\, \signal_send_0/N_9\, 
        \signal_send_0/DWACT_FINC_E[0]\, 
        \signal_send_0/DWACT_FINC_E[4]\, 
        \signal_send_0/vld_send_i\, 
        \signal_send_0/un11_cnt_delay_5\, 
        \signal_send_0/un11_cnt_delay_3_net_1\, 
        \signal_send_0/un11_cnt_delay_4_net_1\, 
        \signal_send_0/un11_cnt_delay_1_net_1\, 
        \signal_send_0/data_send_m[0]\, 
        \signal_send_0/parity_check_1\, 
        \signal_send_0/parity_check_3_i_m\, 
        \signal_send_0/parity_check_7\, 
        \signal_send_0/parity_check_6_i_m\, 
        \signal_send_0/tx_uart28_4\, \signal_send_0/tx_uart28_3\, 
        \signal_send_0/tx_uart28_1\, \signal_send_0/un1_cnt_5\, 
        \signal_send_0/un1_cnt_1_0\, \signal_send_0/un1_cnt_4_0\, 
        \signal_send_0/un1_cnt_0\, \signal_send_0/un6_end_flag_5\, 
        \signal_send_0/un6_end_flag_3\, 
        \signal_send_0/un6_end_flag_4\, 
        \signal_send_0/un6_end_flag_1\, 
        \signal_send_0/un11_receive_endlto4_0_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa_2\, 
        \signal_send_0/end_flag_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, 
        \signal_send_0/un11_receive_endlt4\, 
        \signal_send_0/un11_receive_end\, 
        \signal_send_0/un11_receive_endlt7\, 
        \signal_send_0/un3_end_flag\, 
        \signal_send_0/un11_cnt_delay\, 
        \signal_send_0/un11_cnt_delay_5_0_net_1\, 
        \signal_send_0/cnt_flag_0_sqmuxa\, 
        \signal_send_0/un6_end_flag\, \signal_send_0/cnt_end_n8\, 
        \signal_send_0/cnt_end_n6\, \signal_send_0/cnt_end_n5\, 
        \signal_send_0/cnt_end_n4\, \signal_send_0/cnt_end_n2\, 
        \signal_send_0/cnt_end_n3\, \signal_send_0/cnt_end_n7\, 
        \signal_send_0/cnt_flag_n4_tz_net_1\, 
        \signal_send_0/un1_send_end\, 
        \signal_send_0/cnt_flag_c2_net_1\, 
        \signal_send_0/cnt_flag_n2_tz_net_1\, 
        \signal_send_0/cnt_delay_35_0_net_1\, 
        \signal_send_0/cnt_delay_c5_net_1\, 
        \signal_send_0/cnt_delay_c4_net_1\, 
        \signal_send_0/cnt_delay_c3_net_1\, 
        \signal_send_0/cnt_delay_c2_net_1\, 
        \signal_send_0/cnt_delay_c1_net_1\, 
        \signal_send_0/cnt_4[2]\, \signal_send_0/I_7_0\, 
        \signal_send_0/cnt_4[4]\, \signal_send_0/cnt_4[6]\, 
        \signal_send_0/cnt_4[8]\, \signal_send_0/cnt_4[11]\, 
        \signal_send_0/cnt_4[0]\, \signal_send_0/N_156\, 
        \signal_send_0/cnt_end_n1\, 
        \signal_send_0/un2_vld_send_down\, 
        \signal_send_0/un3_end_flag_0\, \signal_send_0/cnt_ende\, 
        \signal_send_0/vld_send_down_1\, 
        \signal_send_0/vld_send_fall_i_0\, 
        \signal_send_0/end_flag_2_sqmuxa\, 
        \signal_send_0/un2_cnt\, 
        \signal_send_0/end_flag_1_sqmuxa\, 
        \signal_send_0/vld_send_down_net_1\, 
        \signal_send_0/I_5_0\, \signal_send_0/I_9_0\, 
        \signal_send_0/I_14_0\, \signal_send_0/I_20_0\, 
        \signal_send_0/I_26_0\, \signal_send_0/I_28_0\, 
        \signal_send_0/N_2\, \signal_send_0/DWACT_FINC_E[6]\, 
        \signal_send_0/DWACT_FINC_E[2]\, 
        \signal_send_0/DWACT_FINC_E[5]\, \signal_send_0/N_3\, 
        \signal_send_0/DWACT_FINC_E[3]\, \signal_send_0/N_5\, 
        \signal_send_0/N_6\, \signal_send_0/N_7\, 
        \signal_send_0/DWACT_FINC_E[1]\, \signal_send_0/N_8\, 
        \signal_send_0/N_10\, \sys_rest_pad/U0/NET1\, 
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

    \cnt_send_RNI8FSH2_1[0]\ : NOR2B
      port map(A => N_1659, B => N_1649, Y => N_927);
    
    \cnt_recive_end_RNO[6]\ : XA1
      port map(A => \cnt_recive_end[6]_net_1\, B => 
        cnt_recive_end_c5, C => cnt_recive_end_0_sqmuxa, Y => 
        cnt_recive_end_n6);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[117]\ : DFN1
      port map(D => \data_all[42]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[117]_net_1\);
    
    \data_all_RNO_1[136]\ : NOR2
      port map(A => N_306, B => \data_recive_buffer[0]\, Y => 
        N_1837);
    
    \data_all_RNO_0[117]\ : AO1D
      port map(A => \data_all[117]_net_1\, B => m90_i_o2_N_3_mux, 
        C => N_378, Y => \data_all_4_0_i_0[117]\);
    
    \data_all_RNO[72]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[72]\, Y => 
        N_193);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[159]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[160]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[158]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[159]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[1]\ : 
        MX2
      port map(A => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[2]_net_1\, 
        B => \ident_coreinst/comm_block_INST/tdo_sig\, S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_15\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[19]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[18]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[19]\);
    
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
    
    \sys_clk_pad/U0/U0\ : IOPAD_IN
      port map(PAD => sys_clk, Y => \sys_clk_pad/U0/NET1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[81]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[79]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[81]\);
    
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
    
    \data_send_buffer_RNO_17[3]\ : NOR3C
      port map(A => N_887, B => N_1658, C => \data_all[67]_net_1\, 
        Y => N_536);
    
    \data_all_RNO_0[27]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_27_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[27]\);
    
    
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
    
    \cnt_send_RNIV6Q12[10]\ : OR3
      port map(A => un17_data_send_bufferlt30_22_3, B => 
        un17_data_send_bufferlt30_22_2, C => 
        un17_data_send_bufferlt30_22_12, Y => 
        un17_data_send_bufferlt30_22_18);
    
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
    
    \cnt_recive_end_RNO_0[2]\ : AX1C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_n2_tz);
    
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
    
    \cnt_recive_RNIRFEVB_0[3]\ : AND3B
      port map(A => N_355, B => N_344, C => \cnt_recive[3]_net_1\, 
        Y => data_all_4_i_o3_i_o2_87_N_3_mux);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[147]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[13]\);
    
    \data_send_buffer_RNO[6]\ : OR3
      port map(A => \data_send_buffer_3_1_6[6]\, B => N_504, C
         => \data_send_buffer_3_1_7[6]\, Y => 
        \data_send_buffer_3[6]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[27]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[28]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\);
    
    \data_all_RNO_0[11]\ : AO1D
      port map(A => \data_all[11]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[11]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[75]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[74]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[75]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[132]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[133]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[131]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[132]\);
    
    \cnt_recive_end_RNIFFF41[5]\ : NOR2B
      port map(A => cnt_recive_end_c4, B => 
        \cnt_recive_end[5]_net_1\, Y => cnt_recive_end_c5);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[131]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[132]\);
    
    \signal_send_0/cnt_RNIOHPM9[10]\ : OR2
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/tx_uart34\, Y => 
        \signal_send_0/un1_tx_uart27_2\);
    
    \data_send_buffer_RNO_29[1]\ : NOR2A
      port map(A => N_1680, B => \data_all[105]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_1_0);
    
    \data_all_RNO_1[27]\ : NOR3
      port map(A => \cnt_recive[3]_net_1\, B => 
        \data_recive_buffer[3]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_27_m1_e_1);
    
    \data_send_buffer_RNO_16[6]\ : MX2
      port map(A => N_455, B => N_453, S => \cnt_send[2]_net_1\, 
        Y => N_450);
    
    \cnt_send_RNIPS8C[22]\ : NOR2B
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => cnt_send_c25_m6_0_a2_2);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[94]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[66]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[94]\);
    
    \data_send_buffer_RNO_12[7]\ : NOR3B
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \data_all[87]_net_1\, C => \cnt_send_0[0]_net_1\, Y => 
        m62_0_a3_13_0);
    
    \data_all_RNO[87]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0_0[87]\, Y
         => N_163);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[98]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[97]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[98]\);
    
    \data_all_RNO[76]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[76]\, Y => 
        N_185);
    
    
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
    
    \data_all_RNO_1[123]\ : NOR3A
      port map(A => \data_all[123]_net_1\, B => N_378, C => 
        \cnt_recive_RNICR3EC_0[2]_net_1\, Y => N_651);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[49]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[111]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[49]\);
    
    \cnt_recive_RNIL9ST[0]\ : OR2B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => N_46);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[22]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[21]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[22]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[19]\ : DFN1
      port map(D => \data_all[140]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[19]_net_1\);
    
    send_end_RNO_39 : XOR2
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_send[26]_net_1\, Y => un12_cnt_send_26);
    
    
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
        \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[1]\);
    
    \data_all[40]\ : DFN1E0C0
      port map(D => N_257, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[40]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[135]\ : DFN1
      port map(D => \data_all[24]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[135]_net_1\);
    
    \data_all_RNO_0[9]\ : AO1D
      port map(A => \data_all[9]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[9]\);
    
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
    
    \signal_send_0/cnt_RNIICVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart27_2\);
    
    \data_all[107]\ : DFN1E0C0
      port map(D => \data_all_4[107]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[107]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]/Y\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[0]\);
    
    \data_all_RNO_1[46]\ : NOR2
      port map(A => N_1736, B => \data_recive_buffer[6]\, Y => 
        N_492);
    
    idle_send_fall_RNO : NOR2A
      port map(A => idle_send, B => N_378, Y => idle_send_fall_2);
    
    \cnt_recive_0_RNIRIRJ4[3]\ : NOR3B
      port map(A => cnt_recive_n11_0_o4_m6_0_a2_6, B => 
        cnt_recive_n11_0_o4_m6_0_a2_5, C => N_46, Y => 
        cnt_recive_n11_0_o4_N_13_mux);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[35]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[35]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[35]\);
    
    \cnt_send_RNIHSGR[2]\ : OR2
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_318);
    
    \cnt_send_RNO[20]\ : XA1B
      port map(A => cnt_send_c19, B => \cnt_send[20]_net_1\, C
         => N_378, Y => cnt_send_n20);
    
    send_end_RNO_3 : OR3
      port map(A => send_end_0_sqmuxa_i_10, B => 
        send_end_0_sqmuxa_i_9, C => N_352_i, Y => 
        send_end_0_sqmuxa_i_24);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNINQE8[2]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_comm2iice[3]\, B => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\);
    
    \cnt_send[9]\ : DFN1E1C0
      port map(D => cnt_send_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[9]_net_1\);
    
    \data_send_buffer_RNO[7]\ : AO1
      port map(A => N_333, B => \data_all[7]_net_1\, C => 
        m62_0_4_0, Y => \data_send_buffer_3[7]\);
    
    \cnt_recive_RNISK593[8]\ : OR3C
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[7]_net_1\, C => cnt_recive_n7_i_o3_N_11_mux, 
        Y => N_1505);
    
    \cnt_recive[17]\ : DFN1E0C0
      port map(D => cnt_recive_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[17]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[42]\ : DFN1
      port map(D => \data_all[117]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[42]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[120]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[119]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[120]\);
    
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
    
    \data_all_RNO_0[155]\ : NOR2A
      port map(A => N_1739, B => \data_all[155]_net_1\, Y => 
        N_585);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[16]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[17]\);
    
    \cnt_recive_0_RNIPS8B2[3]\ : NOR3C
      port map(A => cnt_recive_n7_i_o3_m5_0_a2_2, B => 
        \cnt_recive_0[3]_net_1\, C => 
        cnt_recive_n7_i_o3_m5_0_a2_3, Y => 
        cnt_recive_n7_i_o3_N_11_mux);
    
    \data_all_RNO_0[12]\ : AO1D
      port map(A => \data_all[12]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[12]\);
    
    \cnt_recive[15]\ : DFN1E0C0
      port map(D => cnt_recive_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[15]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNI56V11\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_46\, 
        B => \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\, Y => 
        \ident_coreinst/IICE_INST/b9_vbTtJX_ab\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[127]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[126]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[127]\);
    
    \cnt_send[7]\ : DFN1E1C0
      port map(D => N_1487, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[7]_net_1\);
    
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
    
    \signal_send_0/parity_check_RNO_13\ : XA1A
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, C => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/parity_check_2_i_m\);
    
    
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
    
    \cnt_send_RNIHSGR_1[2]\ : NOR2A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_1656);
    
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
    
    \data_send_buffer_RNO_23[1]\ : NOR2A
      port map(A => N_1680, B => \data_all[121]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_0);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[155]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[155]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[155]\);
    
    \cnt_recive_0_RNIG4EU[2]\ : NOR3C
      port map(A => data_all_4_i_0_o2_0_36_m2_e_0, B => 
        \cnt_recive_0[2]_net_1\, C => \cnt_recive_0[3]_net_1\, Y
         => data_all_4_i_o3_i_o2_0_100_m2_e_2);
    
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
    
    \cnt_send_RNO[7]\ : OA1C
      port map(A => N_1500, B => \cnt_send[7]_net_1\, C => 
        cnt_send_n7_i_0, Y => N_1487);
    
    \data_all[63]\ : DFN1E0C0
      port map(D => N_211, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[63]_net_1\);
    
    \data_send_buffer_RNO_1[6]\ : NOR2B
      port map(A => \data_all[6]_net_1\, B => N_967, Y => N_504);
    
    \cnt_send_RNO_0[16]\ : OR2A
      port map(A => \cnt_send[15]_net_1\, B => N_66, Y => N_68);
    
    \cnt_send_RNIAQQQ[28]\ : NOR3
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send[28]_net_1\, C => N_378, Y => 
        m77_0_a2_6_m3_0_a2_0_0);
    
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
    
    \data_all_RNO[42]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_1736, C => 
        \data_all_4_i_0_0[42]\, Y => N_253);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10\ : 
        OR2B
      port map(A => \ident_coreinst/IICE_INST/b8_ubTt3_YG\, B => 
        \ident_coreinst/IICE_INST/N_1551\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[136]\ : DFN1
      port map(D => \data_all[23]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[136]_net_1\);
    
    \data_all_RNO_0[124]\ : NOR2A
      port map(A => \data_recive_buffer[4]\, B => N_378, Y => 
        \data_all_4_0_a2_0_0[124]\);
    
    \signal_send_0/un7_cnt_1_I_24\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[3]\, Y => 
        \signal_send_0/DWACT_FINC_E[4]\);
    
    \cnt_recive_RNI5T0U7[17]\ : OR2A
      port map(A => \cnt_recive[17]_net_1\, B => N_61, Y => N_62);
    
    \cnt_recive_RNO[5]\ : XA1C
      port map(A => \cnt_recive[5]_net_1\, B => N_1496, C => 
        N_378, Y => N_32);
    
    \data_all_RNO_0[101]\ : AO1A
      port map(A => \data_all[101]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[101]\);
    
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
    
    \data_send_buffer_RNO_6[0]\ : AO1
      port map(A => N_454, B => N_1660, C => N_576, Y => 
        \data_send_buffer_3_1_1[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[85]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[85]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[85]\);
    
    \cnt_send_RNIRGPB7[1]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_4, B => 
        cnt_send_n17_i_o4_m5_0_a2_6, C => cnt_send_c25_m6_0_a2_7, 
        Y => cnt_send_c25);
    
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
    
    \data_send_buffer_RNO_17[4]\ : MX2
      port map(A => N_485_3, B => N_501_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_456);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[82]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[81]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[82]\);
    
    \cnt_recive_RNI5QST[9]\ : OR2B
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_recive[8]_net_1\, Y => cnt_recive_n10_0_o4_0);
    
    \signal_send_0/cnt_RNI5IVP[2]\ : NOR2
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart35_4\);
    
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
    
    \data_send_buffer_RNO_20[2]\ : AO1
      port map(A => \data_all[58]_net_1\, B => N_1690, C => N_555, 
        Y => \data_send_buffer_3_1_2[2]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[21]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[21]\);
    
    \cnt_send_RNO_0[11]\ : NOR2B
      port map(A => cnt_send_c9, B => \cnt_send[10]_net_1\, Y => 
        cnt_send_c10);
    
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
    
    \signal_send_0/cnt_RNISOCR4_0[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart28_4\, B => 
        \signal_send_0/tx_uart28_3\, C => 
        \signal_send_0/tx_uart27_9\, Y => 
        \signal_send_0/tx_uart28\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[150]\ : DFN1
      port map(D => \data_all[9]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[150]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_3[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[152]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[153]\);
    
    \cnt_recive_RNI1N6Q[25]\ : NOR2B
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => cnt_recive_c25tt_m3_e_0);
    
    \signal_send_0/un7_cnt_1_I_20\ : XOR2
      port map(A => \signal_send_0/N_6\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => \signal_send_0/I_20_0\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[14]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[15]\);
    
    \signal_send_0/tx_uart_RNO_0\ : AO1
      port map(A => \data_send_buffer[5]_net_1\, B => 
        \signal_send_0/tx_uart33\, C => 
        \signal_send_0/data_send_m[0]\, Y => 
        \signal_send_0/tx_uart_11_iv_3\);
    
    \data_all[104]\ : DFN1E0C0
      port map(D => \data_all_4[104]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[104]_net_1\);
    
    \cnt_recive_RNO[10]\ : XA1C
      port map(A => \cnt_recive[10]_net_1\, B => N_54, C => N_378, 
        Y => cnt_recive_n10);
    
    \signal_send_0/end_flag_RNI0ERDC_0\ : AOI1
      port map(A => un5_idle_recive_16, B => un5_idle_recive_23, 
        C => \signal_send_0/end_flag_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_5_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[139]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[140]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[138]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[139]\);
    
    \data_send_buffer_RNO_0[1]\ : AO1
      port map(A => m81_i_a3_1_0, B => N_1583, C => m81_i_0, Y
         => m81_i_1);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[138]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[137]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[138]\);
    
    \data_send_buffer_RNO_10[3]\ : AO1
      port map(A => \data_all[147]_net_1\, B => N_927, C => N_531, 
        Y => \data_send_buffer_3_1_4[3]\);
    
    \data_all_RNO_0[147]\ : AO1A
      port map(A => \data_all[147]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0[147]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[126]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[126]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[126]\);
    
    \data_all_RNO[46]\ : NOR3
      port map(A => N_1773, B => N_378, C => N_492, Y => N_245);
    
    \data_send_buffer_RNO_8[2]\ : AO1
      port map(A => \data_all[138]_net_1\, B => N_1682, C => 
        N_546, Y => \data_send_buffer_3_1_5[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[119]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[118]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[119]\);
    
    \data_all_RNO[11]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[3]\, C => \data_all_4_i_0_0[11]\, Y
         => N_301);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[77]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[78]\);
    
    \cnt_send_RNIQT116[12]\ : OR2
      port map(A => un17_data_send_bufferlt30_22_21, B => 
        un17_data_send_bufferlt30_22_20, Y => 
        un17_data_send_bufferlt30_22);
    
    \data_all_RNO_0[158]\ : AO1A
      port map(A => \data_all[158]_net_1\, B => N_1739, C => 
        N_378, Y => \data_all_4_i_0[158]\);
    
    \data_all_RNO_0[4]\ : AO1D
      port map(A => \data_all[4]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[4]\);
    
    send_end_RNO_51 : NOR3A
      port map(A => send_end_0_sqmuxa_i_a3_1, B => 
        \cnt_send[29]_net_1\, C => \cnt_send[30]_net_1\, Y => 
        send_end_0_sqmuxa_i_a3_13);
    
    
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
    
    \data_send_buffer_RNO_18[6]\ : MX2
      port map(A => \data_all[86]_net_1\, B => 
        \data_all[94]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_567_3);
    
    \single_recive_0/cnt_RNIS1UC3[9]\ : NOR3C
      port map(A => \single_recive_0/m12_4\, B => 
        \single_recive_0/N_104_mux\, C => \single_recive_0/m12_5\, 
        Y => \single_recive_0/data_recive27\);
    
    \cnt_recive_RNI6LL3B[0]\ : NOR3B
      port map(A => cnt_recive_c27_m6_0_a2_6, B => 
        cnt_recive_c14_0_o4_m6_0_a2_4, C => N_46, Y => 
        cnt_recive_c27);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[110]\ : DFN1
      port map(D => \data_all[49]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[110]_net_1\);
    
    \signal_send_0/cnt_RNIMGVJ1[0]\ : NOR3B
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/tx_uart32_5\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart37_6\);
    
    \data_send_buffer_3_1_a2_2_0[2]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_1[2]\, B => 
        \data_all[2]_net_1\, C => \cnt_send[0]_net_1\, Y => 
        \data_send_buffer_3_1_a2_2[2]\);
    
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
    
    \data_all_RNO[79]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0[79]\, Y => 
        N_179);
    
    
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
    
    \cnt_recive_0_RNIVOFF_0[0]\ : NOR3
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive_0[0]_net_1\, Y
         => un5_idle_recive_23);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[121]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[120]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[121]\);
    
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
    
    \data_all_RNO_0[0]\ : NOR2
      port map(A => \data_all[0]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, Y => N_875);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[96]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[64]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[96]\);
    
    \cnt_send_RNIDOGR_0[0]\ : NOR2A
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => N_889);
    
    \cnt_recive_RNIRFEVB[3]\ : NOR3A
      port map(A => \cnt_recive[3]_net_1\, B => N_346, C => N_344, 
        Y => data_all_4_i_o3_79_N_3_mux);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[94]\ : DFN1
      port map(D => \data_all[65]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[94]_net_1\);
    
    \single_recive_0/data_recive[5]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[5]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[5]\);
    
    \cnt_recive_RNIPC4Q_0[11]\ : NOR2
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_recive[12]_net_1\, Y => un5_idle_recive_10);
    
    \data_all[108]\ : DFN1E0C0
      port map(D => \data_all_4[108]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[108]_net_1\);
    
    \data_all_RNO[28]\ : OA1C
      port map(A => N_308, B => \data_all[28]_net_1\, C => 
        \data_all_4_i_0_0[28]\, Y => N_267);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[59]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[60]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[58]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[59]\);
    
    \data_all_RNO[139]\ : NOR3
      port map(A => N_1842, B => N_378, C => N_1843, Y => N_1605);
    
    \cnt_recive_RNO[1]\ : XA1B
      port map(A => \cnt_recive_0[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => N_378, Y => N_35);
    
    \data_all[97]\ : DFN1E0C0
      port map(D => N_258, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[97]_net_1\);
    
    \data_all_RNO[14]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0_0[14]\, Y
         => N_295);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[32]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[31]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[32]\);
    
    \cnt_send[10]\ : DFN1E1C0
      port map(D => cnt_send_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[10]_net_1\);
    
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
    
    \data_all_RNO_0[100]\ : AOI1
      port map(A => un37_data_send_buffer_2354_0_a2_1, B => 
        un37_data_send_buffer_2354_0_a2_0, C => N_312, Y => 
        N_1555);
    
    \cnt_recive_0_RNIPO32B[3]\ : NOR3B
      port map(A => un5_idle_recive_23, B => 
        \cnt_recive_0[3]_net_1\, C => N_344_0, Y => 
        data_all_4_i_o3_71_N_3_mux);
    
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
    
    \cnt_send_0_RNINMNF2[0]\ : NOR3
      port map(A => I_14_3, B => I_12_3, C => 
        \cnt_send_0[0]_net_1\, Y => N_140_mux);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[111]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[112]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[110]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[111]\);
    
    \cnt_send_RNI8FSH2_3[0]\ : NOR2B
      port map(A => N_1658, B => N_1645, Y => N_1688);
    
    \data_all_RNO[134]\ : NOR3
      port map(A => N_625, B => N_378, C => N_626, Y => N_1610);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[62]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[61]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[62]\);
    
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
    
    \data_all_RNO_0[66]\ : AO1D
      port map(A => \data_all[66]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[66]\);
    
    \data_send_buffer_RNO_5[7]\ : OA1
      port map(A => m62_0_a3_4_0, B => m62_0_0_tz_0, C => N_1659, 
        Y => m62_0_0);
    
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
    
    \data_send_buffer_3_1_a2_17[2]\ : NOR3C
      port map(A => \data_send_buffer_3_1_a2_17_3[2]\, B => 
        N_1645, C => data_send_buffer_3_1_a2_16_2_N_5_i, Y => 
        N_558);
    
    \signal_send_0/end_flag_RNI7NB24\ : MX2
      port map(A => \signal_send_0/un2_vld_send_down\, B => 
        \signal_send_0/un6_end_flag\, S => 
        \signal_send_0/un3_end_flag_0\, Y => 
        \signal_send_0/un4_vld_send_down[0]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_req\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\);
    
    \cnt_recive_RNIQ5DK1[23]\ : OR3A
      port map(A => un5_idle_recive_5, B => 
        \cnt_recive[24]_net_1\, C => \cnt_recive[23]_net_1\, Y
         => OVER_11_0);
    
    \data_all_RNO_0[5]\ : NOR3A
      port map(A => data_all_4_i_o3_7_m1_e_1, B => N_646_2, C => 
        N_344_0, Y => N_1638);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[115]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[115]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[115]\);
    
    \cnt_recive_RNI3BIR2[21]\ : NOR3C
      port map(A => cnt_recive_n21_0_m3_0_a2_2, B => 
        cnt_recive_n21_0_m3_0_a2_0, C => 
        cnt_recive_n22_0_o4_m4_0_a2_2_3, Y => 
        cnt_recive_n22_0_o4_m4_0_a2_2);
    
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
    
    \cnt_recive_RNI5TDH[0]\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => 
        \cnt_recive[0]_net_1\, Y => N_481_2);
    
    data_all_4_0_i_a3_0_115_m1_e_0 : NOR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \data_recive_buffer[3]\, Y => data_all_4_i_a2_0_59_m1_e_0);
    
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
    
    \cnt_recive_RNI5P4Q[17]\ : NOR2
      port map(A => \cnt_recive[17]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => un5_idle_recive_7);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[42]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[41]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[42]\);
    
    \single_recive_0/cnt_RNIMS0I_1[4]\ : NOR2A
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/m12_3\);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[4]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[4]\);
    
    \data_all_RNO[23]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_1920, C
         => \data_all_4_i_0[23]\, Y => N_277);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[7]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\);
    
    \data_send_buffer_RNO_6[6]\ : NOR3C
      port map(A => N_1645, B => N_1659, C => 
        \data_all[158]_net_1\, Y => N_496);
    
    \data_all[21]\ : DFN1E0C0
      port map(D => N_281, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[21]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[100]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[100]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[100]\);
    
    \data_all_RNO[58]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[58]\, Y => 
        N_221);
    
    \cnt_recive_0[0]\ : DFN1E0C0
      port map(D => N_101, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive_0[0]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_7\ : AX1C
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => \signal_send_0/I_7_0\);
    
    \single_recive_0/un7_cnt_1_I_27\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[4]\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/N_3\);
    
    \signal_send_0/cnt_delay_c3\ : NOR2B
      port map(A => \signal_send_0/cnt_delay_c2_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => 
        \signal_send_0/cnt_delay_c3_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[134]\ : DFN1
      port map(D => \data_all[25]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[134]_net_1\);
    
    \data_all_RNO_0[127]\ : NOR2A
      port map(A => N_320, B => \data_all[127]_net_1\, Y => 
        N_1834);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[73]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[87]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[73]\);
    
    \data_send_buffer_RNO_11[1]\ : NOR2A
      port map(A => N_1645, B => \data_all[153]_net_1\, Y => 
        m81_i_a3_2_0);
    
    \data_all_RNO_1[71]\ : NOR3B
      port map(A => \cnt_recive[3]_net_1\, B => 
        un5_idle_recive_23, C => \data_recive_buffer[7]\, Y => 
        data_all_4_i_a2_0_71_m1_e_1);
    
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
    
    \data_all_RNO_1[37]\ : NOR2
      port map(A => N_310, B => \data_recive_buffer[5]\, Y => 
        N_1883);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[17]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[18]\);
    
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
    
    \data_all_RNO_0[75]\ : AO1D
      port map(A => \data_all[75]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[75]\);
    
    send_end_RNO_16 : XO1
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_send[12]_net_1\, C => un12_cnt_send_11, Y => 
        send_end_0_sqmuxa_i_5);
    
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
    
    \single_recive_0/cnt_RNIS21I[2]\ : NOR2
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m65_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[148]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[12]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[148]\);
    
    \data_all_RNO[127]\ : NOR3
      port map(A => N_1834, B => N_378, C => N_1835, Y => N_212);
    
    \data_all_RNO[0]\ : NOR3
      port map(A => N_875, B => N_378, C => N_876, Y => N_323);
    
    \data_all_RNO_0[115]\ : AO1A
      port map(A => N_344, B => data_all_4_0_i_a3_0_115_m1_e_1, C
         => N_378, Y => \data_all_4_0_i_0[115]\);
    
    \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[6]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\, 
        Q => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[5]_net_1\);
    
    \data_all_RNO[49]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[49]\, Y => 
        N_239);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[156]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[4]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[156]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[29]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[28]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[29]\);
    
    \data_all[143]\ : DFN1E0C0
      port map(D => N_1601, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[143]_net_1\);
    
    \cnt_recive_RNO_2[21]\ : NOR2B
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => cnt_recive_n21_0_m3_0_a2_1);
    
    \data_all_RNO[65]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_642_2, C
         => \data_all_4_i_0[65]\, Y => N_207);
    
    \cnt_send_RNID0MQ2[6]\ : OR3B
      port map(A => \cnt_send[5]_net_1\, B => \cnt_send[6]_net_1\, 
        C => N_1497, Y => N_1500);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[157]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[158]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[156]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[157]\);
    
    \cnt_send_RNO_0[4]\ : AX1C
      port map(A => \cnt_send[3]_net_1\, B => N_6_0, C => 
        \cnt_send[4]_net_1\, Y => N_16_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[128]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[32]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[128]\);
    
    \signal_send_0/end_flag_RNIK7N4P\ : NOR3
      port map(A => \signal_send_0/un3_end_flag\, B => N_378, C
         => \signal_send_0/un11_cnt_delay\, Y => 
        vld_send_2_sqmuxa);
    
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
    
    \signal_send_0/cnt_end_RNIKLC71[9]\ : NOR3C
      port map(A => \signal_send_0/cnt_end[7]_net_1\, B => 
        \signal_send_0/cnt_end[9]_net_1\, C => 
        \signal_send_0/un6_end_flag_1\, Y => 
        \signal_send_0/un6_end_flag_4\);
    
    \data_all_RNO_1[132]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => 
        \data_recive_buffer[4]\, Y => N_630);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[102]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[102]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[102]\);
    
    \signal_send_0/cnt_end[9]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n9\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[9]_net_1\);
    
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
    
    \data_all_RNO[53]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => N_386, 
        C => \data_all_4_i_0[53]\, Y => N_231);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[144]\ : DFN1
      port map(D => \data_all[15]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[144]_net_1\);
    
    \cnt_send_RNIC2EI[25]\ : OR3
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[27]_net_1\, C => \cnt_send[19]_net_1\, Y => 
        un17_data_send_bufferlt30_22_11);
    
    \test\ : DFN1C0
      port map(D => \data_all[4]_net_1\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => test_c);
    
    \data_send_buffer_RNO_3[6]\ : OR3
      port map(A => N_494, B => N_503, C => N_495, Y => 
        \data_send_buffer_3_1_1[6]\);
    
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
    
    \data_send_buffer_RNO_7[4]\ : OR3
      port map(A => N_514, B => \data_send_buffer_3_1_0[4]\, C
         => \data_send_buffer_3_1_5[4]\, Y => 
        \data_send_buffer_3_1_11[4]\);
    
    \data_all_RNO_0[152]\ : NOR2A
      port map(A => N_1739, B => \data_all[152]_net_1\, Y => 
        N_1866);
    
    \data_all_RNO_0[94]\ : AO1D
      port map(A => \data_all[94]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[94]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[28]\ : DFN1
      port map(D => \data_all[131]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[28]_net_1\);
    
    
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
    
    \signal_send_0/cnt_end_RNIJ6F23[2]\ : NOR3C
      port map(A => \signal_send_0/un6_end_flag_4\, B => 
        \signal_send_0/cnt_end_c1\, C => 
        \signal_send_0/un6_end_flag_5\, Y => 
        \signal_send_0/un6_end_flag\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[102]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[101]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[102]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_1\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[105]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[55]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[105]\);
    
    \signal_send_0/cnt_delay_n0\ : NOR2
      port map(A => \cnt_delay[0]_net_1\, B => N_378, Y => N_1482);
    
    \cnt_recive_0_RNIP019B[0]\ : OR2A
      port map(A => N_337, B => N_378, Y => N_1713);
    
    \cnt_recive[2]\ : DFN1E0C0
      port map(D => N_38, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[2]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[152]\ : DFN1
      port map(D => \data_all[7]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[152]_net_1\);
    
    \data_all_RNO_0[61]\ : AO1D
      port map(A => \data_all[61]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[61]\);
    
    \single_recive_0/data_recive_RNO_1[0]\ : NOR3C
      port map(A => \single_recive_0/N_123_mux\, B => 
        \single_recive_0/m52_3\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m\);
    
    \data_all[69]\ : DFN1E0C0
      port map(D => N_199, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[69]_net_1\);
    
    \cnt_recive_RNI99I45[20]\ : NOR3C
      port map(A => un5_idle_recive_10_0, B => 
        un5_idle_recive_9_0, C => N_142, Y => un5_idle_recive_15);
    
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
    
    \data_all_RNO_0[70]\ : AO1D
      port map(A => \data_all[70]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[70]\);
    
    \data_all_RNO_0[25]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_25_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[25]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[38]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[122]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[38]\);
    
    \data_send_buffer_RNO_22[5]\ : MX2
      port map(A => \data_all[69]_net_1\, B => 
        \data_all[77]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_447);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr4_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        CLK => sys_clk_c, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[1]_net_1\);
    
    \data_all_RNO_0[47]\ : AO1A
      port map(A => \data_all[47]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[47]\);
    
    \data_send_buffer_RNO_14[0]\ : MX2
      port map(A => N_513_3, B => N_529_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_454);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[115]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[114]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[115]\);
    
    \cnt_recive_RNIHFG45[2]\ : NOR3A
      port map(A => data_all_4_i_0_o2_0_36_m2_e_2, B => OVER_11_0, 
        C => OVER_11_1, Y => data_all_4_i_0_o2_0_36_m2_e_3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_2[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[27]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[26]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[27]\);
    
    \signal_send_0/cnt_RNIMGVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart35_4\, B => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart36_6\);
    
    \data_send_buffer[3]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[3]_net_1\);
    
    \data_all_RNO_1[25]\ : NOR3
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[1]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_25_m1_e_1);
    
    \data_all_RNO_0[2]\ : NOR2
      port map(A => \data_all[2]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, Y => N_871);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNO\ : OA1
      port map(A => 
        \ident_coreinst/comm_block_INST/IICE_iice2comm_m\, B => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql.b3_PLF_iv_0\, 
        C => 
        \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2_0\, Y
         => \ident_coreinst/comm_block_INST/jtagi/b9_PLF_6lNa2\);
    
    \cnt_send_RNO[26]\ : XA1B
      port map(A => cnt_send_c25, B => \cnt_send[26]_net_1\, C
         => N_378, Y => cnt_send_n26);
    
    \cnt_recive_0_RNIPO32B[0]\ : OR3B
      port map(A => data_all_4_i_o3_i_o2_0_100_m2_e_3, B => 
        \cnt_recive_0[0]_net_1\, C => OVER_12, Y => N_337);
    
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
    
    send_end_RNO_10 : XO1
      port map(A => \cnt_send[7]_net_1\, B => 
        \cnt_recive[7]_net_1\, C => N_1541, Y => 
        send_end_0_sqmuxa_i_9);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[13]\ : DFN1
      port map(D => \data_all[146]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[13]_net_1\);
    
    \cnt_recive_RNI3P6Q[25]\ : NOR2
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_recive[26]_net_1\, Y => un5_idle_recive_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[89]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[88]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[89]\);
    
    \cnt_recive_0_RNIC8B51[3]\ : XA1C
      port map(A => \cnt_recive_0[3]_net_1\, B => N_1491, C => 
        N_378, Y => N_36);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[40]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[120]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[40]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[112]\ : DFN1
      port map(D => \data_all[47]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[112]_net_1\);
    
    \data_send_buffer_RNO_2[2]\ : OR3
      port map(A => \data_send_buffer_3_1_11[2]\, B => 
        \data_send_buffer_3_1_10[2]\, C => 
        \data_send_buffer_3_1_14[2]\, Y => 
        \data_send_buffer_3_1_17[2]\);
    
    \cnt_send_RNILO8C[10]\ : OR2
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_send[10]_net_1\, Y => un17_data_send_bufferlt30_22_2);
    
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
    
    \data_send_buffer_RNO_13[7]\ : NOR3B
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[143]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        m62_0_a3_4_0);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[8]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[9]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[7]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[8]\);
    
    \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4\ : DFN1
      port map(D => \ident_coreinst/IICE_INST/b10_nYBzIXrKbK[1]\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\);
    
    \data_all_RNO_0[118]\ : AO1D
      port map(A => \data_all[118]_net_1\, B => m90_i_o2_N_3_mux, 
        C => N_378, Y => \data_all_4_0_i_0[118]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[77]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[83]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[77]\);
    
    \data_send_buffer_RNO_4[2]\ : OR3
      port map(A => N_549, B => N_558, C => N_545, Y => 
        \data_send_buffer_3_1_1[2]\);
    
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
    
    \signal_send_0/cnt_RNIGAVJ1[6]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart35_4\, Y => 
        \signal_send_0/tx_uart35_4_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[66]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[66]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[66]\);
    
    \data_all_RNO_0[62]\ : AO1D
      port map(A => \data_all[62]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[62]\);
    
    \cnt_recive_0_RNIGC251[2]\ : XA1C
      port map(A => \cnt_recive_0[2]_net_1\, B => N_46, C => 
        N_378, Y => N_38);
    
    \data_all_RNO_1[155]\ : NOR2
      port map(A => \data_recive_buffer[3]\, B => N_1739, Y => 
        N_586);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[12]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[12]_net_1\);
    
    \cnt_send_RNIDJGO[15]\ : OR3
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[24]_net_1\, C => un17_data_send_bufferlt30_22_5, 
        Y => un17_data_send_bufferlt30_22_14);
    
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
    
    \data_all_RNO[146]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_314, C => 
        \data_all_4_i_0_0[146]\, Y => N_1598);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[23]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[23]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[23]\);
    
    \data_all_RNO_0[98]\ : AO1A
      port map(A => \data_all[98]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[98]\);
    
    \single_recive_0/cnt_RNI8TCI_1[10]\ : NOR2
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_14_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[104]\ : DFN1
      port map(D => \data_all[55]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[104]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[129]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[128]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[129]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[71]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[71]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[71]\);
    
    \cnt_delay[4]\ : DFN1E1C0
      port map(D => cnt_delay_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[4]_net_1\);
    
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
    
    \data_all_RNO_0[20]\ : AO1D
      port map(A => \data_all[20]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[20]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[88]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[72]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[88]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk9.b9_v_mzCDYXs13_0_a3\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\, B => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs13\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[5]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[6]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[5]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[4]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[4]_net_1\);
    
    \data_all_RNO_0[83]\ : AO1A
      port map(A => N_385, B => data_all_4_i_o3_i_o2_87_N_3_mux, 
        C => N_378, Y => \data_all_4_i_0[83]\);
    
    \signal_send_0/un11_receive_endlto4_0\ : OR2B
      port map(A => \cnt_delay[4]_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => 
        \signal_send_0/un11_receive_endlto4_0_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[20]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[21]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[20]\);
    
    \data_all_RNO[20]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[20]\, Y => 
        N_283);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[78]\ : DFN1
      port map(D => \data_all[81]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[78]_net_1\);
    
    \cnt_send_RNO_1[25]\ : NOR3C
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[22]_net_1\, C => cnt_send_n25_m4_0_a2_2, Y => 
        cnt_send_n25_m4_0_a2_4);
    
    \cnt_recive_RNI1MST[6]\ : NOR2B
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[7]_net_1\, Y => cnt_recive_n11_0_o4_m6_0_a2_1);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[155]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[156]\);
    
    \data_all_RNO_0[89]\ : AO1D
      port map(A => \data_all[89]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[89]\);
    
    \cnt_recive_RNI1LVF4[22]\ : NOR3C
      port map(A => cnt_recive_c25tt_m3_e_0, B => 
        cnt_recive_c25tt_m3_e_1, C => 
        cnt_recive_n22_0_o4_m4_0_a2_2, Y => 
        cnt_recive_c25_m1_0_a2_0);
    
    \cnt_recive[6]\ : DFN1E0C0
      port map(D => N_30, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[25]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[24]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[25]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[133]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[132]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[133]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[87]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[86]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[87]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNO[4]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_191\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[4]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[4]\);
    
    \data_send_buffer_RNO_13[2]\ : NOR2B
      port map(A => \data_all[130]_net_1\, B => N_925, Y => N_545);
    
    \data_all_RNO_0[145]\ : AO1A
      port map(A => \data_all[145]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[145]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[81]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[82]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[80]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[81]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[142]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[141]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[142]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[85]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[86]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[84]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[85]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[137]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[138]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[136]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[137]\);
    
    \data_all_RNO_0[151]\ : MX2
      port map(A => N_148_mux, B => \data_all[151]_net_1\, S => 
        N_314, Y => N_1699);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[79]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[80]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[78]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[79]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[108]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[107]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[108]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[154]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[153]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[154]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[114]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[46]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[114]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[89]\ : DFN1
      port map(D => \data_all[70]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[89]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[18]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[19]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[18]\);
    
    \signal_send_0/cnt_end[0]\ : DFN1E1C0
      port map(D => \signal_send_0/N_156\, CLK => sys_clk_c, CLR
         => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[0]_net_1\);
    
    \data_all_RNO_1[84]\ : NOR3A
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[4]\, C => N_355, Y => 
        data_all_4_i_a2_0_84_m1_e_1);
    
    
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
    
    \cnt_recive_0_RNI0QFF[0]\ : OR3B
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive_0[0]_net_1\, Y
         => m90_i_o2_out);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[39]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[38]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[39]\);
    
    \data_send_buffer_RNO_26[5]\ : NOR3B
      port map(A => \cnt_send[1]_net_1\, B => 
        \data_all[149]_net_1\, C => \cnt_send_1[0]_net_1\, Y => 
        m77_0_a3_3_0);
    
    \signal_send_0/cnt_end_RNIKMOE2[7]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c6\, B => 
        \signal_send_0/cnt_end[7]_net_1\, Y => 
        \signal_send_0/cnt_end_c7\);
    
    \single_recive_0/cnt[11]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[43]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[43]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[43]\);
    
    \cnt_send_RNIR6HR[7]\ : OR2
      port map(A => \cnt_send[8]_net_1\, B => \cnt_send[7]_net_1\, 
        Y => un17_data_send_bufferlt30_22_3);
    
    \signal_send_0/end_flag_RNO\ : AOI1
      port map(A => \signal_send_0/un6_end_flag\, B => 
        \signal_send_0/un3_end_flag_0\, C => 
        \signal_send_0/un2_vld_send_down\, Y => 
        \signal_send_0/end_flag_1_sqmuxa\);
    
    send_end_RNO_22 : XO1
      port map(A => \cnt_recive[21]_net_1\, B => 
        \cnt_send[21]_net_1\, C => un12_cnt_send_20, Y => 
        send_end_0_sqmuxa_i_11);
    
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
    
    \data_send_buffer_RNO_11[2]\ : OR3
      port map(A => \data_send_buffer_3_1_2[2]\, B => N_552, C
         => \data_send_buffer_3_1_8[2]\, Y => 
        \data_send_buffer_3_1_14[2]\);
    
    
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
    
    \cnt_send_RNIVHDF1[12]\ : OR3
      port map(A => \cnt_send[6]_net_1\, B => 
        \cnt_send[12]_net_1\, C => un17_data_send_bufferlt30_22_7, 
        Y => un17_data_send_bufferlt30_22_15);
    
    \cnt_send_RNI251C8[4]\ : NOR2B
      port map(A => un17_data_send_buffer, B => 
        \cnt_send[4]_net_1\, Y => N_1917);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[69]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[68]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[69]\);
    
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
    
    \single_recive_0/cnt_RNIK1241[9]\ : NOR3C
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, C => 
        \single_recive_0/m23_4\, Y => \single_recive_0/m23_7\);
    
    \data_all_RNO_1[134]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => N_647_2, 
        Y => N_626);
    
    \data_all_RNO[50]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => N_384, 
        C => \data_all_4_i_0[50]\, Y => N_237);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[0]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_partial_sum[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[0]\);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[161]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[162]\);
    
    \cnt_send_RNINLE61[2]\ : NOR3B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_3_1_a2_10_1[6]\);
    
    \data_send_buffer_RNO_6[1]\ : OR3
      port map(A => m81_i_a3_2_0, B => m81_i_a3_5_0, C => 
        m81_i_a3_3_0, Y => m81_i_3_tz);
    
    \cnt_send_RNIUK1N1[2]\ : NOR2A
      port map(A => N_887, B => N_318, Y => N_1898_3);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]_net_1\);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[38]\ : DFN1
      port map(D => \data_all[121]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[38]_net_1\);
    
    \cnt_flag[0]\ : DFN1E1C0
      port map(D => N_1483, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_flage, Q => \cnt_flag[0]_net_1\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[48]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[49]\);
    
    \data_send_buffer_RNO_26[7]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \data_all[127]_net_1\, Y => 
        m62_0_a3_6_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[22]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[22]\);
    
    \data_send_buffer_RNO_4[7]\ : OA1
      port map(A => m62_0_a3_12_0, B => m62_0_a3_13_0, C => 
        N_1658, Y => \data_send_buffer_RNO_4[7]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[30]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[31]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[30]\);
    
    receive_end_RNO_1 : AO1
      port map(A => receive_end2lt7, B => receive_end2lto7, C => 
        receive_end2lto8, Y => receive_end2lt9);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[152]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[152]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[152]\);
    
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
    
    \single_recive_0/cnt_RNIUB241[2]\ : NOR3B
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/m76_2\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m76_5\);
    
    \cnt_recive_RNIA4PGB[2]\ : AND3B
      port map(A => m90_i_o2_out, B => N_344, C => 
        \cnt_recive[2]_net_1\, Y => m90_i_o2_N_3_mux);
    
    \single_recive_0/cnt_RNIBAED1_0[3]\ : NOR3A
      port map(A => \single_recive_0/N_103_mux\, B => 
        \single_recive_0/cnt[4]_net_1\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m76_6\);
    
    send_end_RNO_42 : XOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_recive[20]_net_1\, Y => un12_cnt_send_20);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[85]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[84]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[85]\);
    
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
    
    \data_send_buffer_RNO_20[4]\ : MX2
      port map(A => \data_all[4]_net_1\, B => 
        \data_all[12]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_485_3);
    
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
    
    \cnt_recive_RNIF24O3[7]\ : OR3B
      port map(A => \cnt_recive[7]_net_1\, B => 
        cnt_recive_n7_i_o3_N_11_mux, C => cnt_recive_n10_0_o4_0, 
        Y => N_54);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNIV4742\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        C => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_xoU0_WMrtX_0_sqmuxa_0\);
    
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
    
    \cnt_recive_RNO[6]\ : XA1C
      port map(A => \cnt_recive[6]_net_1\, B => N_1499, C => 
        N_378, Y => N_30);
    
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
    
    \data_all[45]\ : DFN1E0C0
      port map(D => N_247, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[45]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[37]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[36]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[37]\);
    
    \cnt_recive_RNIQ5DK1_0[23]\ : NOR3A
      port map(A => un5_idle_recive_5, B => 
        \cnt_recive[24]_net_1\, C => \cnt_recive[23]_net_1\, Y
         => un5_idle_recive_8_0);
    
    
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
    
    \cnt_recive_0_RNIG45U[0]\ : OR3C
      port map(A => \cnt_recive_0[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        N_1491);
    
    \data_all[146]\ : DFN1E0C0
      port map(D => N_1598, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[146]_net_1\);
    
    \data_all_RNO_0[34]\ : AO1A
      port map(A => \data_all[34]_net_1\, B => N_310, C => N_378, 
        Y => \data_all_4_0_i_0[34]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[107]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[53]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[107]\);
    
    \signal_send_0/cnt_end_RNIGHC71[2]\ : NOR3A
      port map(A => \signal_send_0/un6_end_flag_3\, B => 
        \signal_send_0/cnt_end[2]_net_1\, C => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/un6_end_flag_5\);
    
    \cnt_recive_RNO[25]\ : XA1B
      port map(A => cnt_recive_c24, B => \cnt_recive[25]_net_1\, 
        C => N_378, Y => cnt_recive_n25);
    
    \cnt_recive_end_RNO[8]\ : XA1
      port map(A => receive_end2lto8, B => cnt_recive_end_c7, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n8);
    
    \cnt_send_RNO_1[23]\ : NOR3C
      port map(A => cnt_send_c25_m6_0_a2_3, B => 
        cnt_send_n23_m3_0_a2_0, C => cnt_send_n23_m3_0_a2_2, Y
         => cnt_send_n23_m3_0_a2_4);
    
    \data_send_buffer_RNO_26[2]\ : NOR3C
      port map(A => N_1649, B => N_1658, C => 
        \data_all[82]_net_1\, Y => N_551);
    
    \data_all_RNO_0[148]\ : AO1A
      port map(A => \data_all[148]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[148]\);
    
    \cnt_recive[26]\ : DFN1E0C0
      port map(D => cnt_recive_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[26]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[149]\ : DFN1
      port map(D => \data_all[10]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[149]_net_1\);
    
    \data_all_RNO[92]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0_0[92]\, Y
         => N_153);
    
    \data_all[60]\ : DFN1E0C0
      port map(D => N_217, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[60]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[26]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[27]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[25]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[26]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[22]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[23]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[22]\);
    
    send_end_RNO_17 : OR3
      port map(A => N_75_i, B => un12_cnt_send_24, C => 
        send_end_0_sqmuxa_i_4, Y => send_end_0_sqmuxa_i_15);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[67]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[66]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[67]\);
    
    \data_all_RNO_0[150]\ : AO1A
      port map(A => \data_all[150]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[150]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk2.b3_nUT[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nUT_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b9_PKFoLX_ab\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[1]\);
    
    \data_all_RNO_0[112]\ : AO1A
      port map(A => N_344, B => data_all_4_0_i_a3_0_112_m1_e_1, C
         => N_378, Y => \data_all_4_0_i_0[112]\);
    
    \cnt_send_RNO[29]\ : XA1B
      port map(A => cnt_send_c28, B => \cnt_send[29]_net_1\, C
         => N_378, Y => cnt_send_n29);
    
    \cnt_recive_0_RNIRFEVB_0[2]\ : NOR2A
      port map(A => data_all_4_i_o3_i_o2_55_m1_e_2, B => N_344, Y
         => data_all_4_i_o3_i_o2_55_N_3_mux);
    
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
    
    \cnt_recive_RNO[12]\ : XA1C
      port map(A => \cnt_recive[12]_net_1\, B => N_56, C => N_378, 
        Y => cnt_recive_n12);
    
    \data_all[4]\ : DFN1E0C0
      port map(D => N_315, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[4]_net_1\);
    
    \signal_send_0/cnt_RNIEVMJ1[11]\ : NOR3B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/tx_uart30_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart35_3\);
    
    \cnt_send_RNO_3[24]\ : NOR3C
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[23]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        cnt_send_n24_tz_m4_0_a2_3);
    
    \data_send_buffer_RNO_8[1]\ : OA1
      port map(A => un38_data_send_buffer_968_i_a2_14_0, B => 
        un38_data_send_buffer_968_i_10_tz_1, C => N_887, Y => 
        un38_data_send_buffer_968_i_10);
    
    un19_data_send_buffer_1_I_14 : AX1D
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        C => \cnt_send[2]_net_1\, Y => I_14_3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[9]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[10]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[16]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[144]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[16]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[143]\ : DFN1
      port map(D => \data_all[16]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[143]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[148]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[147]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[148]\);
    
    \data_all_RNO_0[125]\ : NOR3B
      port map(A => N_320, B => \data_all[125]_net_1\, C => N_378, 
        Y => N_1630);
    
    \signal_send_0/cnt_end[6]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n6\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[47]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[46]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[47]\);
    
    \data_all_RNO_0[109]\ : NOR2A
      port map(A => \data_all[109]_net_1\, B => N_1713, Y => 
        N_677);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_a3\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/N_30\, B => 
        \ident_coreinst/IICE_INST/N_1551\, C => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[28]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[27]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[28]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[103]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[57]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[103]\);
    
    \data_all_RNO[35]\ : OA1B
      port map(A => N_310, B => \data_recive_buffer[3]\, C => 
        \data_all_4_0_i_0[35]\, Y => N_240);
    
    \data_all_RNO[18]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_384, C => 
        \data_all_4_i_0[18]\, Y => N_287);
    
    \cnt_recive_RNI2SPM6[0]\ : NOR2B
      port map(A => cnt_recive_n22_0_o4_N_9_mux_i_a0_4, B => 
        cnt_recive_c14_0_o4_m6_0_a2_4, Y => N_59_i);
    
    \signal_send_0/cnt[11]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[11]_net_1\);
    
    \data_all_RNO[96]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_312, C => 
        \data_all_4_0_i_0[96]\, Y => N_254);
    
    \single_recive_0/data_recive_RNO[7]\ : AO1
      port map(A => \single_recive_0/data_recive30\, B => 
        rx_uart_c, C => \single_recive_0/N_38_i_0\, Y => 
        \single_recive_0/data_recive_12[7]\);
    
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
    
    \data_send_buffer_RNO_15[3]\ : NOR2B
      port map(A => N_457, B => N_1662, Y => N_524);
    
    \cnt_recive_RNINI4T3[10]\ : NOR2B
      port map(A => cnt_recive_c14_0_o4_m6_0_a2_4_6, B => 
        cnt_recive_c14_0_o4_m6_0_a2_4_5, Y => 
        cnt_recive_c14_0_o4_m6_0_a2_4);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[6]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[5]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[6]\);
    
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
    
    \data_send_buffer_RNO_25[7]\ : MX2C
      port map(A => \data_all[103]_net_1\, B => 
        \data_all[111]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_123);
    
    \data_send_buffer_RNO_25[5]\ : NOR3C
      port map(A => \cnt_send_1[0]_net_1\, B => 
        \cnt_send[1]_net_1\, C => \data_all[157]_net_1\, Y => 
        m77_0_a3_2_0);
    
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
    
    \signal_send_0/cnt_RNI0HMJ1[4]\ : NOR3B
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/tx_uart32_0\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart34_3\);
    
    \data_send_buffer_3_1_7[4]\ : OR2
      port map(A => N_515, B => N_516, Y => 
        \data_send_buffer_3_1_7[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[110]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[110]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[110]\);
    
    \data_send_buffer_RNO_8[4]\ : NOR2B
      port map(A => \data_all[36]_net_1\, B => N_968, Y => N_521);
    
    \data_send_buffer_RNO_19[7]\ : AO1D
      port map(A => \cnt_send_0[1]_net_1\, B => N_123, C => 
        m62_0_a3_6_0, Y => m62_0_0_0_tz_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[35]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[34]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[35]\);
    
    \data_send_buffer_RNO_5[5]\ : OA1
      port map(A => m77_0_a3_14_0, B => m77_0_471_tz_0, C => 
        N_1658, Y => \data_send_buffer_RNO_5[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[50]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[50]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[50]\);
    
    \data_send_buffer_RNO_28[1]\ : NOR3B
      port map(A => N_1677, B => N_1649, C => 
        \data_all[81]_net_1\, Y => N_476);
    
    \data_send_buffer_RNO_0[7]\ : OR3
      port map(A => m62_0_2, B => m62_0_1, C => 
        \data_send_buffer_RNO_3[7]_net_1\, Y => m62_0_4_0);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[12]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[12]_net_1\);
    
    \sys_rest_pad/U0/U1\ : CLKIO
      port map(A => \sys_rest_pad/U0/NET1\, Y => sys_rest_c);
    
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
    
    \cnt_recive_end_RNO[0]\ : NOR2A
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        \cnt_recive_end[0]_net_1\, Y => cnt_recive_end_n0);
    
    \signal_send_0/cnt_RNO[4]\ : XA1
      port map(A => \signal_send_0/N_9\, B => 
        \signal_send_0/cnt[4]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[125]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[124]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[125]\);
    
    \single_recive_0/data_recive_RNO_0[7]\ : NOR3A
      port map(A => \data_recive_buffer[7]\, B => 
        \single_recive_0/data_recive30\, C => N_378, Y => 
        \single_recive_0/N_38_i_0\);
    
    idle_recive_down_RNIIQRK : NOR2A
      port map(A => idle_recive_down_i_0, B => N_378, Y => 
        \idle_recive_down_RNIIQRK\);
    
    \data_send_buffer_RNO_9[1]\ : OR3
      port map(A => un38_data_send_buffer_968_i_1, B => 
        un38_data_send_buffer_968_i_0, C => 
        un38_data_send_buffer_968_i_5, Y => 
        un38_data_send_buffer_968_i_7);
    
    \cnt_send_RNO_0[27]\ : AX1C
      port map(A => \cnt_send[26]_net_1\, B => cnt_send_c25, C
         => \cnt_send[27]_net_1\, Y => cnt_send_n27_tz);
    
    \cnt_recive_RNO[21]\ : XA1B
      port map(A => cnt_recive_n21_0_N_9_mux, B => 
        \cnt_recive[21]_net_1\, C => N_378, Y => cnt_recive_n21);
    
    \data_all_RNO[61]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0_0[61]\, Y
         => N_215);
    
    \data_all_RNO_0[38]\ : NOR2A
      port map(A => N_310, B => \data_all[38]_net_1\, Y => N_1884);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[90]\ : DFN1
      port map(D => \data_all[69]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[90]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[65]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[64]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[65]\);
    
    send_end_RNO_35 : XO1
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => un12_cnt_send_13, Y => 
        send_end_0_sqmuxa_i_4);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[43]\ : DFN1
      port map(D => \data_all[116]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[43]_net_1\);
    
    \cnt_delay[2]\ : DFN1E1C0
      port map(D => cnt_delay_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[2]_net_1\);
    
    \data_all_RNO_1[115]\ : NOR3A
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \data_recive_buffer[3]\, C => m90_i_o2_out, Y => 
        data_all_4_0_i_a3_0_115_m1_e_1);
    
    \data_send_buffer_RNO_17[1]\ : OR3
      port map(A => un38_data_send_buffer_968_i_a2_10_0, B => 
        un38_data_send_buffer_968_i_a2_6_0, C => 
        un38_data_send_buffer_968_i_a2_2_0, Y => 
        un38_data_send_buffer_968_i_10_tz_1);
    
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
    
    \cnt_send_RNO[14]\ : XA1B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, C
         => N_378, Y => cnt_send_n14);
    
    \data_send_buffer_RNO_10[5]\ : NOR3B
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \data_all[53]_net_1\, C => \cnt_send_0[0]_net_1\, Y => 
        m77_0_a3_11_0);
    
    \data_all[13]\ : DFN1E0C0
      port map(D => N_297, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[17]_net_1\);
    
    \data_send_buffer_RNO_18[4]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_3[6]\, B => 
        \data_all[100]_net_1\, C => N_378, Y => N_513);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[109]\ : DFN1
      port map(D => \data_all[50]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[109]_net_1\);
    
    \data_all_RNO[141]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => N_306, C => 
        \data_all_4_i_0_0[141]\, Y => N_1603);
    
    \data_all_RNO[13]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0_0[13]\, Y
         => N_297);
    
    \signal_send_0/cnt_end_RNO[6]\ : XA1B
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/cnt_end_c5\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n6\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[51]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[50]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[51]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[21]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]_net_1\);
    
    \data_all_RNO[125]\ : AO1
      port map(A => N_911, B => \data_recive_buffer[5]\, C => 
        N_1630, Y => \data_all_4[125]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[6]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[7]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[5]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[6]\);
    
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
    
    \data_send_buffer_RNO_7[2]\ : NOR3C
      port map(A => N_889, B => N_1912, C => 
        \data_all[106]_net_1\, Y => N_548);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[10]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[10]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[10]\);
    
    \single_recive_0/cnt_RNO[5]\ : XA1
      port map(A => \single_recive_0/N_8\, B => 
        \single_recive_0/cnt[5]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[5]\);
    
    \data_all_RNO[122]\ : AO1A
      port map(A => \cnt_recive_RNICR3EC_0[2]_net_1\, B => 
        data_all_4_0_a2_122_m2_0, C => N_654, Y => 
        \data_all_4[122]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[45]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[44]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[45]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[142]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[142]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[142]\);
    
    \cnt_send_RNO[15]\ : XA1C
      port map(A => \cnt_send[15]_net_1\, B => N_66, C => N_378, 
        Y => N_45);
    
    \signal_send_0/cnt_delay_n6\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c5_net_1\, B => 
        \cnt_delay[6]_net_1\, C => N_378, Y => cnt_delay_n6);
    
    \cnt_recive_RNO_0[8]\ : AOI1
      port map(A => cnt_recive_n7_i_o3_N_11_mux, B => 
        \cnt_recive[7]_net_1\, C => \cnt_recive[8]_net_1\, Y => 
        N_1523);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[112]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[112]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[112]\);
    
    \data_send_buffer_RNO_19[5]\ : AO1
      port map(A => \data_all[141]_net_1\, B => N_889, C => 
        m77_0_a3_3_0, Y => m77_0_472_tz_1);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[18]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[18]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[18]\);
    
    \cnt_recive_RNI7T6Q[27]\ : NOR2
      port map(A => \cnt_recive[27]_net_1\, B => 
        \cnt_recive[28]_net_1\, Y => un5_idle_recive_2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[88]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[87]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[88]\);
    
    \data_all_RNO[157]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => N_1739, C => 
        \data_all_4_i_0_0[157]\, Y => N_1588);
    
    \signal_send_0/cnt_flag_0_sqmuxa_1\ : NOR2A
      port map(A => \cnt_flag[2]_net_1\, B => \cnt_flag[1]_net_1\, 
        Y => \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\);
    
    idle_send_down_RNO : NOR3A
      port map(A => \idle_send_fall\, B => idle_send, C => N_378, 
        Y => idle_send_down_3);
    
    \data_all_RNO_2[100]\ : NOR2B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        un37_data_send_buffer_2354_0_a2_1);
    
    \data_all_RNO_0[54]\ : AO1D
      port map(A => \data_all[54]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[54]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[44]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[45]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[43]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[44]\);
    
    \cnt_send_RNIT1KQ5[17]\ : OR3C
      port map(A => cnt_send_c11_m6_0_a2_4, B => 
        cnt_send_n17_i_o4_m5_0_a2_6, C => \cnt_send[17]_net_1\, Y
         => N_71);
    
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
    
    \cnt_recive_RNO[18]\ : XA1C
      port map(A => \cnt_recive[18]_net_1\, B => N_62, C => N_378, 
        Y => cnt_recive_n18);
    
    send_end_RNO_19 : XO1
      port map(A => \cnt_send[30]_net_1\, B => 
        \cnt_recive[30]_net_1\, C => un12_cnt_send_29, Y => 
        send_end_0_sqmuxa_i_0);
    
    \data_send_buffer_RNO_22[6]\ : MX2
      port map(A => \data_all[22]_net_1\, B => 
        \data_all[30]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_503_3);
    
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
    
    \data_all_RNO_0[128]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[128]_net_1\, Y => N_637);
    
    
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
    
    \data_all_RNO[64]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_641_2, C
         => \data_all_4_i_0[64]\, Y => N_209);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[0]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[0]_net_1\);
    
    \data_send_buffer_RNO_3[5]\ : OA1
      port map(A => m77_0_a3_1_1, B => m77_0_a3_16_0, C => N_1662, 
        Y => \data_send_buffer_RNO_3[5]_net_1\);
    
    send_end_RNO_54 : NOR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => send_end_0_sqmuxa_i_a3_10);
    
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
    
    \data_all_RNO_0[111]\ : AO1A
      port map(A => \data_all[111]_net_1\, B => N_337, C => N_378, 
        Y => \data_all_4_0_i_0[111]\);
    
    send_end_RNO_1 : OR3
      port map(A => send_end_0_sqmuxa_i_22, B => 
        send_end_0_sqmuxa_i_21, C => send_end_0_sqmuxa_i_25, Y
         => send_end_0_sqmuxa_i_28);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[24]\ : DFN1
      port map(D => \data_all[135]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[24]_net_1\);
    
    \data_all_RNO_1[30]\ : NOR3
      port map(A => \cnt_recive[3]_net_1\, B => 
        \data_recive_buffer[6]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_30_m1_e_1);
    
    \data_all_RNO_0[17]\ : AO1D
      port map(A => \data_all[17]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[17]\);
    
    \single_recive_0/data_recive_RNO[1]\ : AO1
      port map(A => \single_recive_0/data_recive24\, B => 
        rx_uart_c, C => \single_recive_0/N_27_i_0\, Y => 
        \single_recive_0/data_recive_12[1]\);
    
    \single_recive_0/cnt[0]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[0]_net_1\);
    
    \cnt_recive_RNIPC4Q[11]\ : NOR2B
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_recive[12]_net_1\, Y => 
        cnt_recive_c14_0_o4_m6_0_a2_4_1);
    
    
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
    
    send_end_RNO_53 : XOR2
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_send[13]_net_1\, Y => un12_cnt_send_13);
    
    
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
    
    \signal_send_0/cnt_RNILOMP[10]\ : NOR2B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart32_0\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[0]\ : 
        DFN1E0P1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, PRE => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\);
    
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
    
    \data_all_RNO_0[45]\ : AO1A
      port map(A => \data_all[45]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[45]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[3]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_0[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\);
    
    \signal_send_0/cnt_delay_n5\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c4_net_1\, B => 
        \cnt_delay[5]_net_1\, C => N_378, Y => cnt_delay_n5);
    
    \data_all[0]\ : DFN1E0C0
      port map(D => N_323, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[0]_net_1\);
    
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
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, B
         => \ident_coreinst/IICE_INST/b5_iSWcC\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/b6_Ocm0rW[0]\);
    
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
    
    \cnt_send_RNI93FS4[13]\ : NOR3C
      port map(A => \cnt_send[12]_net_1\, B => cnt_send_c11, C
         => \cnt_send[13]_net_1\, Y => cnt_send_c13);
    
    \data_all_RNO_0[142]\ : NOR2A
      port map(A => N_306, B => \data_all[142]_net_1\, Y => 
        N_1849);
    
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
    
    \cnt_send_RNIOR8C[19]\ : NOR2B
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[20]_net_1\, Y => cnt_send_c25_m6_0_a2_3);
    
    \signal_send_0/vld_send_fall_RNO\ : INV
      port map(A => \vld_send\, Y => \signal_send_0/vld_send_i\);
    
    \cnt_recive_RNO[30]\ : AX1
      port map(A => N_378, B => \cnt_recive[30]_net_1\, C => 
        N_1057, Y => cnt_recive_n30);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[0]\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[1]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[0]_net_1\, 
        CLK => sys_clk_c, E => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\, 
        Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb[0]_net_1\);
    
    \data_all_RNO[27]\ : OA1C
      port map(A => N_308, B => \data_all[27]_net_1\, C => 
        \data_all_4_i_0_0[27]\, Y => N_269);
    
    \data_send_buffer_RNO_6[2]\ : NOR2B
      port map(A => \data_all[114]_net_1\, B => N_1675, Y => 
        N_547);
    
    \data_all_RNO[82]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0_0[82]\, Y
         => N_173);
    
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
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => \ident_coreinst/IICE_INST/b8_nUTQ_XlK\);
    
    \data_all[112]\ : DFN1E0C0
      port map(D => N_1718, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[112]_net_1\);
    
    \data_all[157]\ : DFN1E0C0
      port map(D => N_1588, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[157]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIEQ7V[0]\ : OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[0]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_0\);
    
    \cnt_recive[1]\ : DFN1E0C0
      port map(D => N_35, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[1]_net_1\);
    
    \cnt_recive_RNI81TP1[2]\ : NOR2B
      port map(A => \cnt_recive[2]_net_1\, B => 
        cnt_recive_n11_0_o4_m6_0_a2_3, Y => 
        cnt_recive_n11_0_o4_m6_0_a2_5);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[68]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[69]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[67]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[68]\);
    
    \data_all_RNO_1[139]\ : NOR2
      port map(A => \data_recive_buffer[3]\, B => N_306, Y => 
        N_1843);
    
    \single_recive_0/un7_cnt_1_I_8\ : AND3
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/N_10\);
    
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
    
    \data_all_RNO_0[96]\ : AO1A
      port map(A => \data_all[96]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[96]\);
    
    un19_data_send_buffer_1_I_15 : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\);
    
    \data_all_RNO[99]\ : OA1B
      port map(A => N_312, B => \data_recive_buffer[3]\, C => 
        \data_all_4_0_i_0[99]\, Y => N_266);
    
    \cnt_recive_0_RNIRFEVB[2]\ : NOR2A
      port map(A => data_all_4_i_o3_23_m1_e_1, B => N_344, Y => 
        data_all_4_i_o3_23_N_3_mux);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[88]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[88]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[88]\);
    
    \data_all_RNO_0[3]\ : NOR3A
      port map(A => data_all_4_i_o3_7_m1_e_1, B => N_804_2, C => 
        N_344_0, Y => N_870);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIMR1A3\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, B => 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, Y
         => \ident_coreinst/IICE_comm2iice[10]\);
    
    \data_send_buffer_RNO_26[3]\ : MX2
      port map(A => \data_all[19]_net_1\, B => 
        \data_all[27]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_500_3);
    
    \cnt_flag[3]\ : DFN1E1C0
      port map(D => cnt_flag_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[136]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[135]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[136]\);
    
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
    
    \cnt_recive_0_RNITB3D1_1[2]\ : NOR3A
      port map(A => data_all_4_i_o3_7_m1_e_0, B => 
        \cnt_recive_0[2]_net_1\, C => \cnt_recive[1]_net_1\, Y
         => data_all_4_i_o3_7_m1_e_1);
    
    \single_recive_0/cnt[7]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[7]_net_1\);
    
    \signal_send_0/cnt_RNIKHCDL1[10]\ : OR2
      port map(A => \signal_send_0/un1_tx_uart27_8\, B => 
        \signal_send_0/un1_tx_uart27_7\, Y => 
        \signal_send_0/un1_tx_uart27\);
    
    \data_all[152]\ : DFN1E0C0
      port map(D => N_1593, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[152]_net_1\);
    
    \data_all_RNO_0[58]\ : AO1D
      port map(A => \data_all[58]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[58]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[82]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[83]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[81]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[82]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[38]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[37]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[38]\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_ubTt3_Mxf_RNI1DT81\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_comm2iice[3]\, B => 
        \ident_coreinst/IICE_INST/b9_ubTt3_Mxf\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a1_2\);
    
    \cnt_recive_end_RNO[1]\ : XA1
      port map(A => \cnt_recive_end[1]_net_1\, B => 
        \cnt_recive_end[0]_net_1\, C => cnt_recive_end_0_sqmuxa, 
        Y => cnt_recive_end_n1);
    
    \signal_send_0/cnt_end[5]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n5\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[103]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[102]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[103]\);
    
    
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
    
    \data_all[82]\ : DFN1E0C0
      port map(D => N_173, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[82]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[134]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[133]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[134]\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_3\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\, 
        B => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\, 
        S => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_25\);
    
    \cnt_send_RNO[28]\ : XA1B
      port map(A => cnt_send_c27, B => \cnt_send[28]_net_1\, C
         => N_378, Y => cnt_send_n28);
    
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
    
    \data_all_RNO[86]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0_0[86]\, Y
         => N_165);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[68]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[67]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[68]\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_5\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\, 
        B => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\, 
        S => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[1]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_27\);
    
    \data_all_RNO_0[40]\ : NOR2A
      port map(A => N_1736, B => \data_all[40]_net_1\, Y => 
        N_1767);
    
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
    
    \single_recive_0/cnt_RNI3K2D1[0]\ : NOR3C
      port map(A => \single_recive_0/m23_2\, B => 
        \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/m52_1\, Y => \single_recive_0/m52_3\);
    
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
    
    \cnt_recive_RNO_0[25]\ : NOR2A
      port map(A => \cnt_recive[24]_net_1\, B => N_72, Y => 
        cnt_recive_c24);
    
    \data_send_buffer_RNO_11[7]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \data_all[95]_net_1\, Y => 
        m62_0_a3_12_0);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[45]\ : DFN1
      port map(D => \data_all[114]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[45]_net_1\);
    
    \signal_send_0/cnt_RNITDMJ1[5]\ : NOR3B
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/tx_uart32_0\, C => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart32_4\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[47]\ : DFN1
      port map(D => \data_all[112]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[47]_net_1\);
    
    \cnt_send[12]\ : DFN1E1C0
      port map(D => cnt_send_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[12]_net_1\);
    
    \signal_send_0/cnt_RNISOCR4_0[11]\ : NOR3C
      port map(A => \signal_send_0/tx_uart32_5_0\, B => 
        \signal_send_0/tx_uart32_4\, C => 
        \signal_send_0/tx_uart32_6_0\, Y => 
        \signal_send_0/tx_uart32\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[63]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[64]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[62]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[63]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[13]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[14]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[13]\);
    
    \data_all_RNO_1[91]\ : NOR3A
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[3]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_91_m1_e_1);
    
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
    
    \data_all_RNO[57]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[57]\, Y => 
        N_223);
    
    \cnt_recive_RNO[7]\ : XA1B
      port map(A => \cnt_recive[7]_net_1\, B => 
        cnt_recive_n7_i_o3_N_11_mux, C => N_378, Y => N_28);
    
    \data_all_RNO_0[110]\ : NOR2A
      port map(A => \data_all[110]_net_1\, B => N_1713, Y => 
        N_675);
    
    \cnt_recive_0_RNIRFEVB_0[0]\ : OR3A
      port map(A => data_all_4_i_0_o2_0_36_m2_e_3, B => OVER_12, 
        C => \cnt_recive_0[0]_net_1\, Y => N_310);
    
    \data_all_RNO[140]\ : NOR3
      port map(A => N_1844, B => N_378, C => N_1845, Y => N_1604);
    
    \single_recive_0/cnt_RNIK1241_0[9]\ : NOR3B
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/m23_4\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m31_5\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[74]\ : DFN1
      port map(D => \data_all[85]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[74]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[48]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[47]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[48]\);
    
    \signal_send_0/cnt_end_RNO[7]\ : XA1B
      port map(A => \signal_send_0/cnt_end_c6\, B => 
        \signal_send_0/cnt_end[7]_net_1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n7\);
    
    \data_send_buffer_RNO_24[2]\ : NOR2B
      port map(A => \data_all[18]_net_1\, B => N_1649, Y => 
        \data_send_buffer_3_1_a2_17_0[2]\);
    
    \data_all_RNO[117]\ : OA1C
      port map(A => m90_i_o2_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_0_i_0[117]\, Y
         => N_1723);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[56]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[55]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[56]\);
    
    \data_all_RNO[123]\ : AO1A
      port map(A => N_344_0, B => data_all_4_0_a2_0_123_m1_e_1, C
         => N_651, Y => \data_all_4[123]\);
    
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
    
    \data_send_buffer_RNO_13[0]\ : AO1
      port map(A => \data_all[16]_net_1\, B => N_1649, C => 
        \data_send_buffer_3_1_a2_9_0[0]\, Y => 
        \data_send_buffer_3_1_7_tz_1[0]\);
    
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
    
    \data_all_RNO_0[136]\ : NOR2A
      port map(A => N_306, B => \data_all[136]_net_1\, Y => 
        N_1836);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[8]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[8]\);
    
    \signal_send_0/cnt_end[2]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n2\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[2]_net_1\);
    
    
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
    
    \data_send_buffer_RNO_1[4]\ : OR3
      port map(A => \data_send_buffer_3_1_4[4]\, B => 
        \data_send_buffer_3_1_3[4]\, C => 
        \data_send_buffer_3_1_11[4]\, Y => 
        \data_send_buffer_3_1_14[4]\);
    
    send_end_RNO_21 : XO1
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_recive[28]_net_1\, C => N_78_i, Y => 
        send_end_0_sqmuxa_i_12);
    
    \data_all_RNO[10]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0_0[10]\, Y
         => N_303);
    
    \data_send_buffer_RNO_17[0]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_3[6]\, B => 
        \data_all[96]_net_1\, C => N_378, Y => N_567);
    
    \data_all_RNO[128]\ : NOR3
      port map(A => N_637, B => N_378, C => N_638, Y => N_122);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[2]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[1]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[2]\);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[90]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[91]\);
    
    send_end : DFN1C0
      port map(D => \send_end_RNO\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \send_end\);
    
    \data_send_buffer_RNO_2[7]\ : AO1
      port map(A => m62_0_a3_2_0, B => N_1658, C => m62_0_0_0, Y
         => m62_0_1);
    
    \cnt_recive_RNIDSLN3[4]\ : OR3
      port map(A => OVER_11_0, B => OVER_11_1, C => 
        \cnt_recive[4]_net_1\, Y => 
        \data_all_4_i_o3_0_0_o3_0[100]\);
    
    \signal_send_0/cnt_end_RNIPA2R1[5]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c4\, B => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/cnt_end_c5\);
    
    
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
    
    idle_recive_down_RNO : OR3A
      port map(A => \idle_recive_fall\, B => idle_recive, C => 
        N_378, Y => idle_recive_down_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[86]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[87]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[85]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[86]\);
    
    \cnt_recive_RNI6Q4Q[17]\ : NOR2B
      port map(A => \cnt_recive[17]_net_1\, B => 
        \cnt_recive[19]_net_1\, Y => cnt_recive_n21_0_m3_0_a2_2);
    
    
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
    
    \single_recive_0/data_recive_RNII4C01[2]\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => N_339, Y => 
        N_643_2);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_1\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        B => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_23\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[76]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[84]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[76]\);
    
    \cnt_send_RNIHSGR_2[2]\ : NOR2A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => N_1677);
    
    
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
    
    \cnt_send_RNO[23]\ : XA1B
      port map(A => cnt_send_n23_N_9_mux, B => 
        \cnt_send[23]_net_1\, C => N_378, Y => cnt_send_n23);
    
    \data_all_RNO_0[122]\ : NOR2A
      port map(A => \data_all[122]_net_1\, B => N_378, Y => 
        data_all_4_0_a2_122_m2_0);
    
    \data_all_RNO[136]\ : NOR3
      port map(A => N_1836, B => N_378, C => N_1837, Y => N_1608);
    
    \data_all[96]\ : DFN1E0C0
      port map(D => N_254, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[96]_net_1\);
    
    \data_all_RNO_0[141]\ : AO1A
      port map(A => \data_all[141]_net_1\, B => N_306, C => N_378, 
        Y => \data_all_4_i_0_0[141]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[37]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[38]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[36]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[37]\);
    
    \data_all_RNO_0[73]\ : AO1D
      port map(A => \data_all[73]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[73]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b11_uRrc_9urXBb_RNIEBGP_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\, 
        B => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_44\);
    
    \data_all_RNO_0[91]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_91_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[91]\);
    
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[122]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[122]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[122]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[31]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[31]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[31]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_RNI19VK\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/in_en_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/un1_in_en_1\);
    
    send_end_RNO_41 : XOR2
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_send[5]_net_1\, Y => N_78_i);
    
    \cnt_recive_RNINOT05[11]\ : OR2B
      port map(A => cnt_recive_n11_0_o4_N_13_mux, B => 
        \cnt_recive[11]_net_1\, Y => N_56);
    
    \data_all_RNO_0[79]\ : AO1D
      port map(A => \data_all[79]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[79]\);
    
    \signal_send_0/cnt[9]\ : DFN1C0
      port map(D => \signal_send_0/I_26_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[9]_net_1\);
    
    \cnt_send_RNO[6]\ : NOR3A
      port map(A => N_1500, B => N_1535, C => N_378, Y => N_1488);
    
    \cnt_recive_0_RNIRFEVB_1[2]\ : NOR2A
      port map(A => data_all_4_i_o3_7_m1_e_1, B => N_344, Y => 
        data_all_4_i_o3_7_N_3_mux);
    
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
    
    \data_all[118]\ : DFN1E0C0
      port map(D => N_1724, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[118]_net_1\);
    
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
    
    \data_send_buffer_RNO_31[1]\ : NOR3B
      port map(A => N_1656, B => N_1649, C => 
        \data_all[49]_net_1\, Y => N_480);
    
    \data_send_buffer_RNO_3[3]\ : AO1
      port map(A => \data_all[35]_net_1\, B => N_968, C => N_539, 
        Y => \data_send_buffer_3_1_1[3]\);
    
    \data_all_RNO[107]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[3]\, C => 
        N_681, Y => \data_all_4[107]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[19]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[141]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[19]\);
    
    \data_send_buffer_RNO_11[0]\ : AO1
      port map(A => \data_all[88]_net_1\, B => N_1688, C => N_571, 
        Y => \data_send_buffer_3_1_5[0]\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[143]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[142]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[143]\);
    
    \signal_send_0/un11_cnt_delay_1\ : NOR2
      port map(A => \cnt_delay[2]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_1_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[111]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[111]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[111]\);
    
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
    
    \signal_send_0/cnt_RNISOCR4[11]\ : NOR3C
      port map(A => \signal_send_0/tx_uart34_4_0\, B => 
        \signal_send_0/tx_uart34_3\, C => 
        \signal_send_0/tx_uart34_5\, Y => 
        \signal_send_0/tx_uart34\);
    
    \data_all[19]\ : DFN1E0C0
      port map(D => N_285, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[19]_net_1\);
    
    \data_all_RNO_0[6]\ : AO1D
      port map(A => \data_all[6]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[6]\);
    
    \data_all[158]\ : DFN1E0C0
      port map(D => N_1587, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[158]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[154]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[154]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[154]\);
    
    \cnt_send_RNI8L8U7[28]\ : NOR2B
      port map(A => cnt_send_c27, B => \cnt_send[28]_net_1\, Y
         => cnt_send_c28);
    
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
    
    \data_send_buffer_RNO_8[6]\ : AO1
      port map(A => \data_all[142]_net_1\, B => N_1682, C => 
        N_497, Y => \data_send_buffer_3_1_5[6]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]_net_1\);
    
    send_end_RNO_28 : XOR2
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_send[8]_net_1\, Y => N_1541);
    
    \cnt_recive_RNIPDST[4]\ : NOR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => data_all_4_i_0_o2_0_36_m2_e_0);
    
    \single_recive_0/data_recive_RNO[6]\ : AO1A
      port map(A => N_378, B => \single_recive_0/m67_0\, C => 
        \single_recive_0/rx_uart_m_5\, Y => 
        \single_recive_0/data_recive_12[6]\);
    
    \cnt_recive_RNO[14]\ : XA1C
      port map(A => N_58, B => \cnt_recive[14]_net_1\, C => N_378, 
        Y => cnt_recive_n14);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[3]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[2]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[3]\);
    
    \data_all_RNO_0[92]\ : AO1D
      port map(A => \data_all[92]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[92]\);
    
    \data_send_buffer_RNO_14[5]\ : AO1A
      port map(A => \cnt_send_0[1]_net_1\, B => N_447, C => 
        m77_0_a3_15_0, Y => m77_0_471_tz_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_5\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\);
    
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
    
    \cnt_recive_RNIACRL[0]\ : NOR2
      port map(A => \cnt_recive[0]_net_1\, B => N_378, Y => N_101);
    
    \signal_send_0/cnt_flag_0_sqmuxa_0\ : NOR2A
      port map(A => \cnt_flag[4]_net_1\, B => \cnt_flag[3]_net_1\, 
        Y => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[65]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[65]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[65]\);
    
    \data_all[127]\ : DFN1E0C0
      port map(D => N_212, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[127]_net_1\);
    
    \data_all_RNO[89]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0_0[89]\, Y
         => N_159);
    
    \signal_send_0/cnt_end_RNIFVLJ[1]\ : NOR2B
      port map(A => \signal_send_0/cnt_end[1]_net_1\, B => 
        \signal_send_0/cnt_end[0]_net_1\, Y => 
        \signal_send_0/cnt_end_c1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[5]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[5]\);
    
    \data_all_RNO_0[23]\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => 
        \cnt_recive[0]_net_1\, Y => N_1920);
    
    \signal_send_0/cnt[4]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[4]_net_1\);
    
    \data_send_buffer_RNO_13[3]\ : NOR2B
      port map(A => \data_all[59]_net_1\, B => N_1690, Y => N_537);
    
    \cnt_recive_RNO[13]\ : XA1C
      port map(A => N_57, B => \cnt_recive[13]_net_1\, C => N_378, 
        Y => cnt_recive_n13);
    
    \single_recive_0/cnt_RNIV51I[9]\ : NOR2
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/m52_1\);
    
    \data_all_RNO[31]\ : OA1C
      port map(A => N_308, B => \data_all[31]_net_1\, C => 
        \data_all_4_i_0_0[31]\, Y => N_261);
    
    \cnt_recive_0_RNIP019B_0[0]\ : NOR2
      port map(A => N_337, B => N_378, Y => N_1668);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[163]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[162]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[163]\);
    
    \data_all_RNO_1[131]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => N_804_2, 
        Y => N_632);
    
    \data_all_RNO_0[159]\ : AO1A
      port map(A => \data_all[159]_net_1\, B => N_1739, C => 
        N_378, Y => \data_all_4_i_0[159]\);
    
    \data_all_RNO_1[7]\ : AO1D
      port map(A => \data_all[7]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[7]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[0]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[0]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/comm_block_INST/b11_uRrc_WYOFjZ[0]\);
    
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
    
    \data_all_RNO_0[29]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_29_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[29]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIHGPH2[1]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        C => \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, Y
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\);
    
    \cnt_send_RNI3HO71[0]\ : NOR3C
      port map(A => \cnt_send[2]_net_1\, B => 
        cnt_send_n17_i_o4_m5_0_a2_1, C => \cnt_send[0]_net_1\, Y
         => cnt_send_n17_i_o4_m5_0_a2_5);
    
    
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
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_4\ : 
        OA1C
      port map(A => \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, 
        B => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_26\);
    
    \cnt_recive_RNO[19]\ : XA1C
      port map(A => \cnt_recive[19]_net_1\, B => N_63, C => N_378, 
        Y => cnt_recive_n19);
    
    \cnt_recive_0_RNIU72S1[3]\ : NOR3C
      port map(A => cnt_recive_n11_0_o4_m6_0_a2_2, B => 
        cnt_recive_n11_0_o4_m6_0_a2_1, C => 
        \cnt_recive_0[3]_net_1\, Y => 
        cnt_recive_n11_0_o4_m6_0_a2_6);
    
    \data_all_RNO[4]\ : OA1C
      port map(A => data_all_4_i_o3_7_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[4]\, Y => 
        N_315);
    
    \single_recive_0/rx_fall2\ : DFN1C0
      port map(D => \single_recive_0/rx_fall1_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \single_recive_0/rx_fall2_net_1\);
    
    \data_all_RNO_1[23]\ : AO1D
      port map(A => \data_all[23]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[23]\);
    
    \data_all[3]\ : DFN1E0C0
      port map(D => N_317, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[3]_net_1\);
    
    
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
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[9]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[9]_net_1\);
    
    \cnt_send_RNIMD7G4[2]\ : NOR2B
      port map(A => cnt_send_c11_m6_0_a2_4, B => N_6_0, Y => 
        cnt_send_c11);
    
    \data_all_RNO_1[128]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => N_641_2, 
        Y => N_638);
    
    \data_all_RNO_0[140]\ : NOR2A
      port map(A => N_306, B => \data_all[140]_net_1\, Y => 
        N_1844);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[71]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[70]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[71]\);
    
    \data_all_RNO_1[29]\ : NOR3
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[5]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_29_m1_e_1);
    
    \data_send_buffer[4]\ : DFN1E0C0
      port map(D => \data_send_buffer_3[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[4]_net_1\);
    
    \data_all_RNO[75]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[3]\, C => \data_all_4_i_0[75]\, Y => 
        N_187);
    
    send_end_RNO_48 : NOR2
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[8]_net_1\, Y => send_end_0_sqmuxa_i_a3_3);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[85]\ : DFN1
      port map(D => \data_all[74]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[85]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[87]\ : DFN1
      port map(D => \data_all[72]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[87]_net_1\);
    
    \cnt_send_RNO[17]\ : NOR3A
      port map(A => N_71, B => N_102, C => N_378, Y => N_41);
    
    \signal_send_0/cnt_RNIIPDJ1[11]\ : NOR3B
      port map(A => \signal_send_0/un1_cnt_6\, B => 
        \signal_send_0/cnt[11]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart37_4\);
    
    \single_recive_0/cnt_RNI8TCI_0[10]\ : NOR2A
      port map(A => \single_recive_0/cnt[5]_net_1\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/m36_0\);
    
    \data_send_buffer_RNO_6[5]\ : OR3
      port map(A => m77_0_a3_7_0, B => m77_0_a3_8_0, C => 
        m77_0_473_tz_0, Y => N_2962_tz);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[70]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[71]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[69]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[70]\);
    
    \data_all_RNO_0[36]\ : AO1A
      port map(A => \data_all[36]_net_1\, B => N_310, C => N_378, 
        Y => \data_all_4_i_0_0[36]\);
    
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
    
    \data_send_buffer_RNO_10[7]\ : NOR2B
      port map(A => \data_all[15]_net_1\, B => N_889, Y => 
        m62_0_a3_14_0);
    
    \signal_send_0/cnt_delay_35_0\ : NOR2B
      port map(A => \cnt_delay[6]_net_1\, B => 
        \signal_send_0/cnt_delay_c5_net_1\, Y => 
        \signal_send_0/cnt_delay_35_0_net_1\);
    
    \cnt_send[0]\ : DFN1E1C0
      port map(D => N_24_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[0]_net_1\);
    
    \data_send_buffer_RNO_4[5]\ : OR3
      port map(A => m77_0_a3_11_0, B => m77_0_a3_12_0, C => 
        m77_0_474_tz_0, Y => N_2963_tz);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[142]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[18]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[142]\);
    
    \cnt_recive_RNI6UDH[0]\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => 
        \cnt_recive[0]_net_1\, Y => N_383);
    
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
    
    \data_send_buffer_RNO_2[6]\ : OR3
      port map(A => N_496, B => N_502, C => 
        \data_send_buffer_3_1_5[6]\, Y => 
        \data_send_buffer_3_1_7[6]\);
    
    \data_all_RNO[34]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_310, C => 
        \data_all_4_0_i_0[34]\, Y => N_238);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[95]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[96]\);
    
    \data_all_RNO_0[121]\ : NOR3B
      port map(A => N_320, B => \data_all[121]_net_1\, C => N_378, 
        Y => N_655);
    
    \data_all_RNO_1[100]\ : NOR2A
      port map(A => N_312, B => \data_all[100]_net_1\, Y => 
        N_1553);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[10]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]_net_1\);
    
    \data_all_RNO_0[103]\ : AO1A
      port map(A => \data_all[103]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[103]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[52]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[52]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[52]\);
    
    \data_send_buffer_RNO_9[4]\ : NOR3C
      port map(A => N_1649, B => N_1660, C => 
        \data_all[52]_net_1\, Y => N_519);
    
    \data_send_buffer_RNO_5[4]\ : AO1
      port map(A => \data_all[148]_net_1\, B => N_927, C => N_510, 
        Y => \data_send_buffer_3_1_4[4]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[122]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[38]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[122]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[154]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[155]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[153]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[154]\);
    
    \cnt_recive_0_RNIPO32B_0[0]\ : OR3A
      port map(A => data_all_4_i_o3_i_o2_0_100_m2_e_3, B => 
        OVER_12, C => \cnt_recive_0[0]_net_1\, Y => N_312);
    
    \data_all[61]\ : DFN1E0C0
      port map(D => N_215, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[61]_net_1\);
    
    \signal_send_0/cnt_RNIBOVP[6]\ : NOR2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart36_3\);
    
    \data_send_buffer_RNO_10[0]\ : NOR3C
      port map(A => N_889, B => N_1912, C => 
        \data_all[104]_net_1\, Y => N_566);
    
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
    
    \cnt_recive_RNICR3EC_0[2]\ : NOR2
      port map(A => N_344, B => data_all_4_0_a2_1_i_o2_out, Y => 
        \cnt_recive_RNICR3EC_0[2]_net_1\);
    
    \signal_send_0/cnt_RNO[2]\ : NOR2B
      port map(A => \signal_send_0/I_7_0\, B => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[103]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[103]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[103]\);
    
    \data_send_buffer_RNO_12[2]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_3[6]\, B => 
        \data_all[98]_net_1\, C => N_378, Y => N_549);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[14]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[15]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[14]\);
    
    \cnt_recive_end[0]\ : DFN1C0
      port map(D => cnt_recive_end_n0, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[0]_net_1\);
    
    send_end_RNO_56 : NOR2
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_send[25]_net_1\, Y => send_end_0_sqmuxa_i_a3_1);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[23]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[24]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[22]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[23]\);
    
    \data_send_buffer_RNO_2[3]\ : OR3
      port map(A => \data_send_buffer_3_1_5[3]\, B => 
        \data_send_buffer_3_1_4[3]\, C => 
        \data_send_buffer_3_1_10[3]\, Y => 
        \data_send_buffer_3_1_14[3]\);
    
    \signal_send_0/cnt_end_RNO[3]\ : XA1B
      port map(A => \signal_send_0/cnt_end_c2\, B => 
        \signal_send_0/cnt_end[3]_net_1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n3\);
    
    \cnt_recive_RNID4HRB[20]\ : NOR3C
      port map(A => un5_idle_recive_12, B => un5_idle_recive_11, 
        C => un5_idle_recive_15, Y => un5_idle_recive_16);
    
    \data_all[124]\ : DFN1E0C0
      port map(D => \data_all_4[124]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[124]_net_1\);
    
    \data_all[74]\ : DFN1E0C0
      port map(D => N_189, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[74]_net_1\);
    
    \single_recive_0/idle_recive\ : DFN1C0
      port map(D => \single_recive_0/recive_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => idle_recive);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_2\ : 
        NOR3
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, C => 
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
    
    \data_all_RNO_0[67]\ : AO1D
      port map(A => \data_all[67]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[67]\);
    
    \data_send_buffer_RNO_12[1]\ : NOR2A
      port map(A => N_887, B => \data_all[129]_net_1\, Y => 
        m81_i_a3_5_0);
    
    \cnt_recive_RNO[17]\ : XA1C
      port map(A => \cnt_recive[17]_net_1\, B => N_61, C => N_378, 
        Y => cnt_recive_n17);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[139]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[21]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[139]\);
    
    \data_send_buffer_RNO_21[4]\ : MX2
      port map(A => \data_all[20]_net_1\, B => 
        \data_all[28]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_501_3);
    
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
    
    \data_all_RNO[155]\ : NOR3
      port map(A => N_585, B => N_378, C => N_586, Y => N_1590);
    
    \cnt_send_RNO_1[16]\ : AO1
      port map(A => cnt_send_n17_i_o4_m5_0_a2_6, B => 
        cnt_send_c11_m6_0_a2_4, C => N_378, Y => cnt_send_n16_i_0);
    
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
    
    \data_all_RNO[152]\ : NOR3
      port map(A => N_1866, B => N_378, C => N_1867, Y => N_1593);
    
    \cnt_send_RNI020AA[0]\ : NOR3B
      port map(A => N_887, B => N_1659, C => m77_0_a2_6tt_N_7_mux, 
        Y => N_925);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[144]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[144]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[144]\);
    
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
    
    \cnt_recive_end_RNO[5]\ : XA1
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        cnt_recive_end_c4, C => cnt_recive_end_0_sqmuxa, Y => 
        cnt_recive_end_n5);
    
    \data_all_RNO_0[15]\ : AO1D
      port map(A => \data_all[15]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[15]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[4]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[3]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[26]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[26]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[26]\);
    
    \data_all[33]\ : DFN1E0C0
      port map(D => N_236, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[33]_net_1\);
    
    
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
    
    \cnt_recive_RNIDH0S[10]\ : NOR2
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[8]_net_1\, Y => un5_idle_recive_2_0);
    
    \signal_send_0/tx_uart_RNO_7\ : AO1B
      port map(A => \data_send_buffer[2]_net_1\, B => 
        \signal_send_0/tx_uart30\, C => 
        \signal_send_0/un1_tx_uart42\, Y => 
        \signal_send_0/tx_uart_11_iv_4\);
    
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
    
    \data_send_buffer_RNO_13[6]\ : NOR2B
      port map(A => \data_all[150]_net_1\, B => N_927, Y => N_497);
    
    \data_send_buffer_3_1_a2_2_0_RNO[2]\ : NOR2
      port map(A => I_14_3, B => I_12_3, Y => 
        \data_send_buffer_3_1_a2_1[2]\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[105]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[106]\);
    
    \signal_send_0/cnt_RNI7KVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart29_2\);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[91]\ : DFN1
      port map(D => \data_all[68]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[91]_net_1\);
    
    \data_all[106]\ : DFN1E0C0
      port map(D => \data_all_4[106]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[106]_net_1\);
    
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
    
    \data_all_RNO[68]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[68]\, Y => 
        N_201);
    
    \signal_send_0/un11_cnt_delay_3\ : NOR2B
      port map(A => \cnt_delay[3]_net_1\, B => 
        \cnt_delay[0]_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_3_net_1\);
    
    \data_all_RNO[45]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => N_1736, C => 
        \data_all_4_i_0_0[45]\, Y => N_247);
    
    \cnt_send_RNI8FSH2_4[0]\ : NOR2B
      port map(A => N_1660, B => N_1645, Y => N_1690);
    
    \data_all[128]\ : DFN1E0C0
      port map(D => N_122, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[128]_net_1\);
    
    \data_send_buffer_RNO_19[6]\ : MX2
      port map(A => N_487_3, B => N_503_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_455);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/U0\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[2]\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/int_data[2]\, 
        S => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[2]/Y\);
    
    \data_all_RNO_0[31]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_31_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[31]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[11]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[10]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[11]\);
    
    \data_send_buffer_RNO_15[0]\ : NOR3C
      port map(A => data_send_buffer_3_1_a2_13_0_N_4, B => 
        \data_all[0]_net_1\, C => m77_0_a2_1_0, Y => N_576);
    
    \data_all_RNO_0[120]\ : NOR2A
      port map(A => N_320, B => \data_all[120]_net_1\, Y => 
        N_1830);
    
    \data_all_RNO_0[56]\ : AO1D
      port map(A => \data_all[56]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[56]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[104]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[103]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[104]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[121]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[121]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[121]\);
    
    \cnt_send_RNIBCO94[12]\ : OR3
      port map(A => un17_data_send_bufferlt30_22_15, B => 
        un17_data_send_bufferlt30_22_14, C => 
        un17_data_send_bufferlt30_22_18, Y => 
        un17_data_send_bufferlt30_22_21);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[20]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[20]_net_1\);
    
    \data_send_buffer_RNO_6[7]\ : OA1
      port map(A => m62_0_4_tz_0, B => m62_0_4_tz_1, C => N_1660, 
        Y => m62_0_4);
    
    \data_all_RNO[131]\ : NOR3
      port map(A => N_631, B => N_378, C => N_632, Y => N_116);
    
    data_all_4_i_a2_0_59_m1_e_1 : AND3B
      port map(A => \cnt_recive[3]_net_1\, B => N_46, C => 
        data_all_4_i_a2_0_59_m1_e_0, Y => 
        \data_all_4_i_a2_0_59_m1_e_1\);
    
    \data_all[155]\ : DFN1E0C0
      port map(D => N_1590, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[155]_net_1\);
    
    \data_all[149]\ : DFN1E0C0
      port map(D => N_1595, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[149]_net_1\);
    
    \cnt_send_0_RNIAJE83[0]\ : NOR2B
      port map(A => cnt_send_n8_i_o3_m4_0_a2_5, B => 
        cnt_send_n8_i_o3_m4_0_a2_4, Y => cnt_send_n8_i_o3_N_9_mux);
    
    \signal_send_0/cnt[1]\ : DFN1C0
      port map(D => \signal_send_0/I_5_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[1]_net_1\);
    
    \cnt_recive_RNIRFST[4]\ : NOR2A
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => 
        \data_all_4_i_o2_1_i_a3_0[135]\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_RNIK62C2[1]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF9\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_75\);
    
    \data_all[10]\ : DFN1E0C0
      port map(D => N_303, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[10]_net_1\);
    
    \data_all_RNO[2]\ : NOR3
      port map(A => N_871, B => N_378, C => N_872, Y => N_319);
    
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
    
    send_end_RNO_50 : NOR3
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[26]_net_1\, C => \cnt_send[4]_net_1\, Y => 
        send_end_0_sqmuxa_i_a3_14);
    
    \data_send_buffer_RNO_2[4]\ : AO1
      port map(A => \data_all[60]_net_1\, B => N_1690, C => N_521, 
        Y => \data_send_buffer_3_1_1[4]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[5]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[5]\);
    
    \data_all_RNO_0[10]\ : AO1D
      port map(A => \data_all[10]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[10]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[76]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[75]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[76]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[46]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[46]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[46]\);
    
    \data_all_RNO_1[133]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => 
        \data_recive_buffer[5]\, Y => N_628);
    
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
    
    \data_all_RNO[17]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_383, C => 
        \data_all_4_i_0[17]\, Y => N_289);
    
    \cnt_send_RNIMT4V1[4]\ : OR3C
      port map(A => \cnt_send[3]_net_1\, B => N_6_0, C => 
        \cnt_send[4]_net_1\, Y => N_1497);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\);
    
    \data_send_buffer_3_1_a2_17_4_RNO[2]\ : NOR3A
      port map(A => \data_send_buffer_3_1_a2_17_1[2]\, B => N_318, 
        C => N_378, Y => \data_send_buffer_3_1_a2_17_3[2]\);
    
    \data_send_buffer_RNO_22[7]\ : NOR3A
      port map(A => \data_all[135]_net_1\, B => 
        \cnt_send_0[0]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        m62_0_a3_5_0);
    
    \data_send_buffer_RNO_7[7]\ : NOR2A
      port map(A => N_1730, B => \cnt_send[1]_net_1\, Y => 
        m62_0_a3_2_0);
    
    \data_all_RNO[63]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0_0[63]\, Y
         => N_211);
    
    \cnt_send[29]\ : DFN1E1C0
      port map(D => cnt_send_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[29]_net_1\);
    
    \single_recive_0/cnt_RNIR8241[6]\ : NOR3A
      port map(A => \single_recive_0/m23_2\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/m23_6\);
    
    \data_send_buffer_RNO_12[3]\ : NOR3C
      port map(A => N_889, B => N_1660, C => \data_all[43]_net_1\, 
        Y => N_539);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[1]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[1]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[5]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[5]_net_1\);
    
    \signal_send_0/cnt_end[1]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n1\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[1]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[20]\ : DFN1
      port map(D => \data_all[139]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[20]_net_1\);
    
    \signal_send_0/end_flag_RNO_0\ : AOI1
      port map(A => \signal_send_0/un6_end_flag\, B => 
        \signal_send_0/un3_end_flag_0\, C => 
        \signal_send_0/un2_cnt\, Y => 
        \signal_send_0/end_flag_2_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[14]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[14]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[14]\);
    
    \data_all_RNO_0[32]\ : NOR2A
      port map(A => N_310, B => \data_all[32]_net_1\, Y => N_1873);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[8]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[8]_net_1\);
    
    \cnt_recive_0[2]\ : DFN1E0C0
      port map(D => N_38, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive_0[2]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]\ : 
        DFN1E1
      port map(D => \ident_coreinst/IICE_comm2iice[7]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[4]_net_1\);
    
    \cnt_recive_end_RNO[4]\ : XA1
      port map(A => \cnt_recive_end[4]_net_1\, B => 
        cnt_recive_end_c3, C => cnt_recive_end_0_sqmuxa, Y => 
        cnt_recive_end_n4);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_5[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\);
    
    \data_send_buffer_RNO_1[5]\ : AO1
      port map(A => N_1660, B => N_2963_tz, C => 
        \data_send_buffer_RNO_5[5]_net_1\, Y => m77_0_1);
    
    \data_all[1]\ : DFN1E0C0
      port map(D => N_321, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[1]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[79]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[81]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[79]\);
    
    \data_send_buffer_RNO_18[7]\ : NOR2B
      port map(A => \data_all[119]_net_1\, B => N_1649, Y => 
        m62_0_a3_7_0);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIS0TQ2_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_fFfsjX_0\, 
        B => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF4_1\, Y
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\);
    
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[108]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[108]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[108]\);
    
    \cnt_recive_RNI5EAK1[20]\ : OR3A
      port map(A => un5_idle_recive_7, B => 
        \cnt_recive[20]_net_1\, C => \cnt_recive[19]_net_1\, Y
         => OVER_11_1);
    
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
    
    \signal_send_0/tx_uart_RNO_6\ : AO1
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/tx_uart31\, C => 
        \signal_send_0/data_send_m[1]\, Y => 
        \signal_send_0/tx_uart_11_iv_0\);
    
    \data_all_RNO[115]\ : OA1B
      port map(A => m90_i_o2_N_3_mux, B => \data_all[115]_net_1\, 
        C => \data_all_4_0_i_0[115]\, Y => N_1721);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/un1_b13_PLF_2grFt_FH911_i_a2\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\, 
        C => \ident_coreinst/IICE_comm2iice[6]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/N_30\);
    
    \data_all_RNO_0[119]\ : NOR2A
      port map(A => m90_i_a3_0_m1_e_1, B => N_344, Y => N_391);
    
    \data_all_RNO[112]\ : OA1B
      port map(A => m90_i_o2_N_3_mux, B => \data_all[112]_net_1\, 
        C => \data_all_4_0_i_0[112]\, Y => N_1718);
    
    \single_recive_0/cnt_RNIPV0I[1]\ : NOR2B
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/m36_1\);
    
    \data_send_buffer_RNO_8[7]\ : OA1
      port map(A => m62_0_a3_7_0, B => m62_0_0_0_tz_0, C => 
        N_1912, Y => m62_0_0_0);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIFR7V[1]\ : NOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[1]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b6_Ocm0rW7_0\);
    
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
    
    \cnt_send_RNO_1[24]\ : NOR3C
      port map(A => cnt_send_c25_m6_0_a2_3, B => 
        cnt_send_n24_tz_m4_0_a2_1, C => cnt_send_n24_tz_m4_0_a2_3, 
        Y => cnt_send_n24_tz_m4_0_a2_5);
    
    \cnt_send[25]\ : DFN1E1C0
      port map(D => cnt_send_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[25]_net_1\);
    
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
    
    \data_all_RNO[9]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0_0[9]\, Y
         => N_305);
    
    \single_recive_0/rx_fall1\ : DFN1C0
      port map(D => \single_recive_0/rx_fall_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \single_recive_0/rx_fall1_net_1\);
    
    \data_all[36]\ : DFN1E0C0
      port map(D => N_259, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[36]_net_1\);
    
    \cnt_recive_0_RNIRFEVB_1[0]\ : OR2A
      port map(A => N_437, B => N_355, Y => N_314);
    
    \data_all_RNO[153]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1739, C => 
        \data_all_4_i_0_0[153]\, Y => N_1592);
    
    \data_all_RNO[129]\ : NOR3
      port map(A => N_635, B => N_378, C => N_636, Y => N_120);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[1]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_12_1\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[146]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[145]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[146]\);
    
    \signal_send_0/parity_check_RNO_10\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[4]_net_1\, C => 
        \signal_send_0/tx_uart32\, Y => 
        \signal_send_0/parity_check_5_i_m\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[122]\ : DFN1
      port map(D => \data_all[37]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[122]_net_1\);
    
    \data_all_RNO_0[134]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[134]_net_1\, Y => N_625);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[2]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[3]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[1]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[2]\);
    
    \cnt_recive_0_RNIRFEVB[0]\ : OR3B
      port map(A => data_all_4_i_0_o2_0_36_m2_e_3, B => 
        \cnt_recive_0[0]_net_1\, C => OVER_12, Y => N_1736);
    
    
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
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[14]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]_net_1\);
    
    \data_all_RNO[158]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => N_1739, C => 
        \data_all_4_i_0[158]\, Y => N_1587);
    
    \data_all_RNO_0[51]\ : AO1D
      port map(A => \data_all[51]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[51]\);
    
    \cnt_recive_RNIIMIA3[10]\ : OR3B
      port map(A => un5_idle_recive_9, B => un5_idle_recive_2, C
         => OVER_12_4, Y => OVER_12_7);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[27]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[27]_net_1\);
    
    \data_all_RNO[124]\ : AO1A
      port map(A => N_320, B => \data_all_4_0_a2_0_0[124]\, C => 
        N_649, Y => \data_all_4[124]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[2]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[158]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[2]\);
    
    \single_recive_0/cnt_RNIV51I_0[9]\ : AND2
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/m85_1\);
    
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
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[144]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[143]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[144]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[42]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[42]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[42]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[92]\ : DFN1
      port map(D => \data_all[67]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[92]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[10]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[11]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[10]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[10]\);
    
    \data_all_RNO_1[39]\ : NOR2
      port map(A => N_310, B => \data_recive_buffer[7]\, Y => 
        N_1887);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[149]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[150]\);
    
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
    
    \data_send_buffer_RNO_1[0]\ : OR3
      port map(A => \data_send_buffer_3_1_1[0]\, B => 
        \data_send_buffer_3_1_0[0]\, C => N_570, Y => 
        \data_send_buffer_3_1_6[0]\);
    
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
    
    \signal_send_0/cnt_RNO[8]\ : XA1
      port map(A => \signal_send_0/N_5\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[8]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[10]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[150]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[10]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[166]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[165]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[166]\);
    
    \signal_send_0/un7_cnt_1_I_31\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[6]\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[10]_net_1\, Y => \signal_send_0/N_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\);
    
    \cnt_send_RNIRMBM1[28]\ : NOR3A
      port map(A => m77_0_a2_0, B => N_318, C => N_378, Y => 
        N_1659);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[157]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[156]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[157]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[16]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[15]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[16]\);
    
    \data_send_buffer_RNO_9[3]\ : AO1
      port map(A => \data_all[139]_net_1\, B => N_1682, C => 
        N_525, Y => \data_send_buffer_3_1_5[3]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[33]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[127]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[33]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[70]\ : DFN1
      port map(D => \data_all[89]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[70]_net_1\);
    
    \data_all_RNO[130]\ : NOR3
      port map(A => N_633, B => N_378, C => N_634, Y => N_118);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[137]\ : DFN1
      port map(D => \data_all[22]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[137]_net_1\);
    
    \data_send_buffer_RNO_0[3]\ : OR3
      port map(A => \data_send_buffer_3_1_1[3]\, B => N_535, C
         => \data_send_buffer_3_1_9[3]\, Y => 
        \data_send_buffer_3_1_13[3]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[54]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[55]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[53]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[54]\);
    
    \data_all_RNO[105]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[1]\, C => 
        N_685, Y => \data_all_4[105]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[124]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[124]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[124]\);
    
    \data_send_buffer_RNO_1[3]\ : OR3
      port map(A => N_534, B => \data_send_buffer_3_1_0[3]\, C
         => \data_send_buffer_3_1_7[3]\, Y => 
        \data_send_buffer_3_1_12[3]\);
    
    \signal_send_0/end_flag_RNIKGSV\ : OR2
      port map(A => \signal_send_0/un3_end_flag_0\, B => 
        \signal_send_0/un2_vld_send_down\, Y => 
        \signal_send_0/cnt_ende\);
    
    \data_send_buffer_RNO_20[3]\ : NOR3C
      port map(A => N_1645, B => N_1912, C => 
        \data_all[123]_net_1\, Y => N_529);
    
    \data_all_RNO[102]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => N_312, C => 
        \data_all_4_0_i_0[102]\, Y => N_274);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[88]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[89]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[87]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[88]\);
    
    \data_all[52]\ : DFN1E0C0
      port map(D => N_233, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[52]_net_1\);
    
    \cnt_send_RNICE9N1[23]\ : NOR3C
      port map(A => cnt_send_c25_m6_0_a2_4, B => 
        cnt_send_c25_m6_0_a2_3, C => cnt_send_c25_m6_0_a2_5, Y
         => cnt_send_c25_m6_0_a2_7);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs_RNIJV7V[3]\ : OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[3]_net_1\, B
         => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[4]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/un1_b3_nfs_1_2\);
    
    \cnt_send_RNIDOGR_2[0]\ : NOR2
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => N_887);
    
    \signal_send_0/parity_check_RNO_4\ : OR3
      port map(A => \signal_send_0/parity_check_8_i_m\, B => 
        \signal_send_0/parity_check_5_i_m\, C => 
        \signal_send_0/parity_check_10_iv_0\, Y => 
        \signal_send_0/parity_check_10_iv_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[164]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[163]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[164]\);
    
    \cnt_send_RNO_0[6]\ : OA1C
      port map(A => \cnt_send[5]_net_1\, B => N_1497, C => 
        \cnt_send[6]_net_1\, Y => N_1535);
    
    
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
    
    \signal_send_0/send_RNI25OOL1\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/un1_tx_uart27\, Y => 
        \signal_send_0/tx_uart_11_sqmuxa\);
    
    \signal_send_0/parity_check_RNO\ : NOR3
      port map(A => \signal_send_0/parity_check_10_iv_3\, B => 
        \signal_send_0/parity_check_10_iv_2\, C => 
        \signal_send_0/parity_check_10_iv_4\, Y => 
        \signal_send_0/parity_check_10_iv\);
    
    \data_all_RNO_0[52]\ : AO1D
      port map(A => \data_all[52]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[52]\);
    
    \data_send_buffer_RNO_11[6]\ : NOR2B
      port map(A => N_452, B => N_1658, Y => N_495);
    
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
    
    \data_all_RNO_1[40]\ : NOR2
      port map(A => N_1736, B => \data_recive_buffer[0]\, Y => 
        N_1768);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[112]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[111]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[112]\);
    
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
    
    \data_send_buffer_RNO_19[2]\ : OA1
      port map(A => \data_send_buffer_3_1_a2_18_0[2]\, B => 
        \data_send_buffer_3_1_a2_17_0[2]\, C => N_1662, Y => 
        \data_send_buffer_3_1_3[2]\);
    
    \data_all_RNO_0[84]\ : AO1A
      port map(A => N_344, B => data_all_4_i_a2_0_84_m1_e_1, C
         => N_378, Y => \data_all_4_i_0[84]\);
    
    \cnt_send_RNIS3S66[19]\ : NOR3B
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_send[19]_net_1\, C => N_71, Y => cnt_send_c19);
    
    send_end_RNO_15 : XO1
      port map(A => \cnt_send[6]_net_1\, B => 
        \cnt_recive[6]_net_1\, C => un12_cnt_send_10, Y => 
        send_end_0_sqmuxa_i_6);
    
    
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_comm2iice[7]\, B => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\, 
        S => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/un1_b3_ORb9_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[32]_net_1\);
    
    \data_all[125]\ : DFN1E0C0
      port map(D => \data_all_4[125]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[125]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_vABZ3qsY_qH\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[15]_net_1\);
    
    \cnt_recive_RNIQOK86[4]\ : NOR3C
      port map(A => cnt_recive_c27_m6_0_a2_4, B => 
        cnt_recive_c27_m6_0_a2_3, C => 
        cnt_recive_n22_0_o4_m4_0_a2_2, Y => 
        cnt_recive_c27_m6_0_a2_6);
    
    \data_all_RNO_0[43]\ : AO1A
      port map(A => \data_all[43]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[43]\);
    
    
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
    
    \data_send_buffer_RNO_14[3]\ : NOR3C
      port map(A => N_1649, B => N_1660, C => 
        \data_all[51]_net_1\, Y => N_538);
    
    \signal_send_0/cnt_RNIANVP[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart31_1\);
    
    \cnt_recive_RNIGJV62[6]\ : NOR3C
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[6]_net_1\, C => 
        cnt_recive_c14_0_o4_m6_0_a2_4_4, Y => 
        cnt_recive_c14_0_o4_m6_0_a2_4_6);
    
    send_end_RNO_57 : NOR2
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => send_end_0_sqmuxa_i_a3_12);
    
    \data_all_RNO[71]\ : OA1B
      port map(A => data_all_4_i_o3_71_N_3_mux, B => 
        \data_all[71]_net_1\, C => \data_all_4_i_0[71]\, Y => 
        N_195);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO_0[1]\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b7_nYhI39s_2[1]\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[1]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_90\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[50]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[49]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[50]\);
    
    \cnt_recive_RNI2QICA[23]\ : OR2A
      port map(A => \cnt_recive[23]_net_1\, B => N_70, Y => N_72);
    
    \cnt_send_RNILN7C[15]\ : NOR2B
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[12]_net_1\, Y => cnt_send_n17_i_o4_m5_0_a2_1);
    
    \cnt_recive[10]\ : DFN1E0C0
      port map(D => cnt_recive_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[10]_net_1\);
    
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
    
    \data_send_buffer_RNO_17[5]\ : AO1
      port map(A => \data_all[101]_net_1\, B => N_887, C => 
        m77_0_a3_6_0, Y => m77_0_473_tz_0);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[13]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[14]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[13]\);
    
    \data_all_RNO_1[5]\ : NOR2
      port map(A => \data_all[5]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, Y => N_1637);
    
    \data_all_RNO_0[49]\ : AO1D
      port map(A => \data_all[49]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[49]\);
    
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
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\);
    
    \data_all_RNO_1[2]\ : NOR2A
      port map(A => data_all_4_i_o3_7_N_3_mux, B => N_643_2, Y
         => N_872);
    
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
    
    \cnt_recive_0_RNI2QMH[0]\ : NOR3B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \data_recive_buffer[3]\, C => \cnt_recive_0[0]_net_1\, Y
         => N_385);
    
    \data_all_RNO[60]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[60]\, Y => 
        N_217);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNIRVSD[0]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b4_ycsM\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/ttdo\, S => 
        \ident_coreinst/IICE_comm2iice[5]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_1552\);
    
    \cnt_send_RNI8FSH2_2[0]\ : NOR2B
      port map(A => N_1912, B => N_1649, Y => N_1675);
    
    \data_all[58]\ : DFN1E0C0
      port map(D => N_221, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[58]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[83]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[77]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[83]\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIKRTG[1]\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => \ident_coreinst/IICE_comm2iice[5]\, C => 
        \ident_coreinst/IICE_comm2iice[1]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b9_PbTt39_ab_0_a2_0tt_N_7_mux\);
    
    receive_end_RNO_2 : OR3
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        \cnt_recive_end[6]_net_1\, C => receive_end2lto6_1, Y => 
        receive_end2lt7);
    
    \data_all_RNO[5]\ : NOR3
      port map(A => N_1638, B => N_378, C => N_1637, Y => N_313);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[10]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[11]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[9]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[10]\);
    
    \cnt_send_RNO_1[30]\ : NOR2A
      port map(A => \cnt_send[30]_net_1\, B => N_378, Y => N_996);
    
    \cnt_recive_end_RNO[3]\ : XA1
      port map(A => receive_end2lto3, B => cnt_recive_end_c2, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n3);
    
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
    
    \data_all_RNO[113]\ : OA1C
      port map(A => m90_i_o2_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_0_i_0[113]\, Y
         => N_1719);
    
    \cnt_recive_RNI7VDH[0]\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => 
        \cnt_recive[0]_net_1\, Y => N_384);
    
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
    
    \cnt_send_RNO[5]\ : XA1C
      port map(A => \cnt_send[5]_net_1\, B => N_1497, C => N_378, 
        Y => N_1489);
    
    
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
    
    \data_send_buffer_RNO_11[3]\ : OR3
      port map(A => N_529, B => N_530, C => N_523, Y => 
        \data_send_buffer_3_1_10[3]\);
    
    \data_all[44]\ : DFN1E0C0
      port map(D => N_249, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[44]_net_1\);
    
    \data_send_buffer_RNO_19[4]\ : NOR3C
      port map(A => N_1645, B => N_1659, C => 
        \data_all[156]_net_1\, Y => N_506);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[9]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[9]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[9]\);
    
    \data_send_buffer_RNO_2[1]\ : OA1
      port map(A => m81_i_3_tz, B => N_318, C => N_1917, Y => 
        m81_i_2);
    
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
    
    \data_all_RNO_0[149]\ : AO1A
      port map(A => \data_all[149]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[149]\);
    
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
    
    \cnt_send_RNI8FSH2[0]\ : NOR2B
      port map(A => N_1660, B => N_887, Y => N_968);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[32]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[33]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[31]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[32]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[17]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[17]_net_1\);
    
    \data_all_RNO_0[153]\ : AO1A
      port map(A => \data_all[153]_net_1\, B => N_1739, C => 
        N_378, Y => \data_all_4_i_0_0[153]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[104]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[56]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[104]\);
    
    \data_all_RNO[118]\ : OA1C
      port map(A => m90_i_o2_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_0_i_0[118]\, Y
         => N_1724);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[151]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[150]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[151]\);
    
    \signal_send_0/un7_cnt_1_I_26\ : AX1C
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[4]\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/I_26_0\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[113]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[114]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[112]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[113]\);
    
    \data_all_RNO[74]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[74]\, Y => 
        N_189);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_IF[0]\, CLK => 
        sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]_net_1\);
    
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
    
    \data_all_RNO_1[156]\ : NOR2
      port map(A => N_1739, B => \data_recive_buffer[4]\, Y => 
        N_584);
    
    \data_all_RNO_0[88]\ : AO1D
      port map(A => \data_all[88]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[88]\);
    
    send_end_RNO_24 : NOR3C
      port map(A => send_end_0_sqmuxa_i_a3_8, B => 
        send_end_0_sqmuxa_i_a3_7, C => send_end_0_sqmuxa_i_a3_18, 
        Y => send_end_0_sqmuxa_i_a3_22);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[143]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[143]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[143]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[37]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[123]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[37]\);
    
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
    
    \data_all_RNO_0[137]\ : AO1A
      port map(A => \data_all[137]_net_1\, B => N_306, C => N_378, 
        Y => \data_all_4_i_0_0[137]\);
    
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
    
    \data_all[78]\ : DFN1E0C0
      port map(D => N_181, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[78]_net_1\);
    
    send_end_RNO_23 : XO1
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \cnt_send[2]_net_1\, C => N_359_i, Y => 
        send_end_0_sqmuxa_i_20);
    
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
    
    \data_all_RNO[38]\ : NOR3
      port map(A => N_1884, B => N_378, C => N_1885, Y => N_246);
    
    \single_recive_0/cnt_RNO[7]\ : XA1
      port map(A => \single_recive_0/N_6\, B => 
        \single_recive_0/cnt[7]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[7]\);
    
    \cnt_send_RNIDOGR_1[0]\ : NOR2A
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => N_1649);
    
    \cnt_recive_RNI9MEK1[30]\ : AND3B
      port map(A => \cnt_recive[30]_net_1\, B => 
        \cnt_recive[29]_net_1\, C => un5_idle_recive_2, Y => 
        un5_idle_recive_4_0);
    
    \cnt_recive_RNIK4591[27]\ : NOR3C
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_recive[27]_net_1\, C => \cnt_recive[5]_net_1\, Y => 
        cnt_recive_c27_m6_0_a2_1);
    
    \cnt_send_RNO_0[22]\ : NOR2B
      port map(A => cnt_send_c20, B => \cnt_send[21]_net_1\, Y
         => cnt_send_c21);
    
    \data_send_buffer_RNO_21[1]\ : NOR3A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \data_all[57]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_7_0);
    
    \data_send_buffer_RNO_8[5]\ : OA1
      port map(A => \cnt_send_1[0]_net_1\, B => 
        \data_all[21]_net_1\, C => m77_0_a3_1_1_0, Y => 
        m77_0_a3_1_1);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[158]\ : DFN1
      port map(D => \data_all[1]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[158]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[107]\ : DFN1
      port map(D => \data_all[52]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[107]_net_1\);
    
    \data_all_RNO_0[65]\ : AO1D
      port map(A => \data_all[65]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[65]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[127]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[33]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[127]\);
    
    \data_all[22]\ : DFN1E0C0
      port map(D => N_279, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[22]_net_1\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[21]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[20]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[21]\);
    
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
    
    \data_all_RNO[6]\ : OA1C
      port map(A => data_all_4_i_o3_7_N_3_mux, B => N_647_2, C
         => \data_all_4_i_0[6]\, Y => N_311);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[118]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[117]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[118]\);
    
    \data_all_RNO[103]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => N_312, C => 
        \data_all_4_0_i_0[103]\, Y => N_1727);
    
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
    
    \signal_send_0/cnt_end_RNO[1]\ : XA1B
      port map(A => \signal_send_0/cnt_end[1]_net_1\, B => 
        \signal_send_0/cnt_end[0]_net_1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[4]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[4]\);
    
    send_end_RNO_44 : NOR2
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[9]_net_1\, 
        Y => send_end_0_sqmuxa_i_a3_8);
    
    \cnt_recive_RNIU3BIA_0[4]\ : OR2
      port map(A => \data_all_4_i_o3_0_0_o3_0[100]\, B => OVER_12, 
        Y => N_344);
    
    
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
    
    \data_send_buffer_RNO_12[4]\ : NOR3C
      port map(A => N_1645, B => N_1912, C => 
        \data_all[124]_net_1\, Y => N_510);
    
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
    
    \data_all_RNO[41]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1736, C => 
        \data_all_4_i_0_0[41]\, Y => N_255);
    
    \cnt_recive_RNITHST[5]\ : NOR2B
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_0);
    
    send_end_RNO_43 : XOR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_send[1]_net_1\, Y => N_359_i);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[55]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[55]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[55]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[36]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[37]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[35]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[36]\);
    
    \data_all_RNO[108]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[4]\, C => 
        N_679, Y => \data_all_4[108]\);
    
    idle_recive_fall_RNO : NOR2A
      port map(A => idle_recive, B => N_378, Y => 
        idle_recive_fall_3);
    
    \cnt_recive_RNINBST[0]\ : NOR2
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => data_all_4_i_o3_7_m1_e_0);
    
    \signal_send_0/cnt_end_RNI23C71[3]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c2\, B => 
        \signal_send_0/cnt_end[3]_net_1\, Y => 
        \signal_send_0/cnt_end_c3\);
    
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
    
    \signal_send_0/cnt_RNI0HMJ1[11]\ : NOR3A
      port map(A => \signal_send_0/un1_cnt_1\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart34_5\);
    
    send_end_RNO_5 : OR3
      port map(A => send_end_0_sqmuxa_i_6, B => 
        send_end_0_sqmuxa_i_5, C => send_end_0_sqmuxa_i_15, Y => 
        send_end_0_sqmuxa_i_22);
    
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
    
    \signal_send_0/cnt_end_RNID67H1[4]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c3\, B => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/cnt_end_c4\);
    
    \data_all_RNO[33]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_310, C => 
        \data_all_4_0_i_0[33]\, Y => N_236);
    
    \single_recive_0/cnt_RNI291I_1[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/m65_2\);
    
    \cnt_recive_RNIA4PGB[3]\ : AND3B
      port map(A => N_292, B => N_344, C => \cnt_recive[3]_net_1\, 
        Y => data_all_4_i_0_o2_88_N_3_mux);
    
    send_end_RNO_32 : XOR2
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_recive[11]_net_1\, Y => un12_cnt_send_11);
    
    \cnt_recive_RNIK7M83[23]\ : NOR3C
      port map(A => un5_idle_recive_8, B => un5_idle_recive_10, C
         => un5_idle_recive_8_0, Y => un5_idle_recive_12);
    
    \data_send_buffer_RNO_19[0]\ : NOR2B
      port map(A => \data_all[8]_net_1\, B => N_889, Y => 
        \data_send_buffer_3_1_a2_11_0[0]\);
    
    \test_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => test_c, E => \VCC\, DOUT => 
        \test_pad/U0/NET1\, EOUT => \test_pad/U0/NET2\);
    
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
    
    send_end_RNI6H114 : NOR3
      port map(A => I_17_1, B => N_378, C => I_20_1, Y => 
        \data_send_buffer_3_1_a2_17_1[3]\);
    
    \ident_coreinst/comm_block_INST_IICE_comm2iice_RNISUM1_0[9]\ : 
        BUFF
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_comm2iice_1[9]\);
    
    \signal_send_0/cnt_RNIUEMJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart27_3\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart35_5\);
    
    \signal_send_0/cnt_end_RNO[4]\ : XA1B
      port map(A => \signal_send_0/cnt_end[4]_net_1\, B => 
        \signal_send_0/cnt_end_c3\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n4\);
    
    \data_all_RNO[22]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_388, C => 
        \data_all_4_i_0[22]\, Y => N_279);
    
    
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
    
    \cnt_recive_RNO[4]\ : NOR2
      port map(A => N_83_i, B => N_378, Y => N_34);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme_RNO\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b9_vbTtJX_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b15_vABZ3qsY_ub3Rme3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[98]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[98]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[98]\);
    
    \cnt_recive_RNO_0[14]\ : OR2A
      port map(A => \cnt_recive[13]_net_1\, B => N_57, Y => N_58);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[0]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[1]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[0]\);
    
    \data_all_RNO_0[60]\ : AO1D
      port map(A => \data_all[60]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[60]\);
    
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
    
    \data_all_RNO_1[3]\ : NOR2
      port map(A => \data_all[3]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, Y => N_869);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[3]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[4]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[3]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[54]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[53]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[54]\);
    
    \signal_send_0/un11_cnt_delay_5_0\ : NOR3C
      port map(A => \cnt_delay[4]_net_1\, B => 
        \cnt_delay[6]_net_1\, C => 
        \signal_send_0/un11_cnt_delay_3_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_5\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[15]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[15]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[15]\);
    
    \data_all[101]\ : DFN1E0C0
      port map(D => N_270, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[101]_net_1\);
    
    \cnt_send_RNILP9C[23]\ : OR2
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[22]_net_1\, Y => un17_data_send_bufferlt30_22_8);
    
    
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
    
    \data_all_RNO_0[129]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[129]_net_1\, Y => N_635);
    
    un19_data_send_buffer_1_I_20 : AX1A
      port map(A => \cnt_send[3]_net_1\, B => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\, C => 
        \cnt_send[4]_net_1\, Y => I_20_1);
    
    \cnt_recive_RNIRFST_0[4]\ : NOR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => N_142);
    
    \cnt_send_RNI6T1N1[5]\ : NOR3C
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[5]_net_1\, 
        C => N_1680, Y => cnt_send_n8_i_o3_m4_0_a2_4);
    
    \cnt_send_RNI7SV34[9]\ : NOR2A
      port map(A => \cnt_send[9]_net_1\, B => N_1504, Y => 
        cnt_send_c9);
    
    \data_send_buffer_RNO_24[0]\ : MX2
      port map(A => \data_all[128]_net_1\, B => 
        \data_all[136]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_609_3);
    
    \data_all_RNO[44]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => N_1736, C => 
        \data_all_4_i_0_0[44]\, Y => N_249);
    
    \cnt_send_RNI8FSH2_5[0]\ : NOR2B
      port map(A => N_1659, B => N_889, Y => N_1682);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[46]\ : DFN1
      port map(D => \data_all[113]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[46]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[90]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[89]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[90]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[21]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[21]_net_1\);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH\ : 
        NOR3C
      port map(A => \ident_coreinst/IICE_INST/b8_yYh0_XlK\, B => 
        \ident_coreinst/IICE_comm2iice[0]\, C => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_yYh0_9u_0_a2_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_yYh0_XlK_RNIBONH_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[81]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[80]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[81]\);
    
    \cnt_send_RNIJEJC3[6]\ : NOR2B
      port map(A => cnt_send_c11_m6_0_a2_4_6, B => 
        cnt_send_c11_m6_0_a2_4_5, Y => cnt_send_c11_m6_0_a2_4);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[140]\ : DFN1
      port map(D => \data_all[19]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[140]_net_1\);
    
    \cnt_send_RNI6DSJ[11]\ : NOR2B
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[8]_net_1\, Y => cnt_send_c11_m6_0_a2_4_0);
    
    \data_all_RNO[26]\ : OA1C
      port map(A => N_308, B => \data_all[26]_net_1\, C => 
        \data_all_4_i_0_0[26]\, Y => N_271);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[42]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[43]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[41]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[42]\);
    
    \cnt_send[30]\ : DFN1E1C0
      port map(D => cnt_send_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[30]_net_1\);
    
    \data_send_buffer_RNO_5[0]\ : OA1
      port map(A => \data_send_buffer_3_1_7_tz_0[0]\, B => 
        \data_send_buffer_3_1_7_tz_1[0]\, C => N_1662, Y => 
        \data_send_buffer_3_1_7[0]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[130]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[130]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[130]\);
    
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\);
    
    \data_send_buffer_RNO_23[7]\ : NOR3B
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[47]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        m62_0_a3_10_0);
    
    \cnt_send_RNIHSGR_0[2]\ : NOR2B
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => N_1680);
    
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
    
    \cnt_send_RNO_0[17]\ : AOI1
      port map(A => cnt_send_n17_i_o4_m5_0_a2_6, B => 
        cnt_send_c11_m6_0_a2_4, C => \cnt_send[17]_net_1\, Y => 
        N_102);
    
    \cnt_recive_0_RNITB3D1[2]\ : NOR3C
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => data_all_4_i_o3_7_m1_e_0, Y
         => data_all_4_i_o3_i_o2_55_m1_e_2);
    
    
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
    
    \data_all_RNO[52]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[52]\, Y => 
        N_233);
    
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
    
    \signal_send_0/cnt_RNINHVJ1_0[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/tx_uart33_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart33_3_0\);
    
    \single_recive_0/rx_fall\ : DFN1C0
      port map(D => rx_uart_c, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \single_recive_0/rx_fall_net_1\);
    
    \cnt_recive_RNICR3EC[2]\ : OR2
      port map(A => data_all_4_0_a2_1_i_o2_out, B => N_344, Y => 
        N_320);
    
    \data_send_buffer_RNO_14[7]\ : AO1
      port map(A => \cnt_send_0[1]_net_1\, B => N_1731, C => 
        m62_0_a3_5_0, Y => m62_0_0_tz_0);
    
    \data_all[30]\ : DFN1E0C0
      port map(D => N_263, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[30]_net_1\);
    
    \cnt_recive_RNIES291[14]\ : NOR3C
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => \cnt_recive[7]_net_1\, Y => 
        cnt_recive_c14_0_o4_m6_0_a2_4_4);
    
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
    
    \data_all[153]\ : DFN1E0C0
      port map(D => N_1592, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[153]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[2]\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s[2]_net_1\);
    
    \signal_send_0/cnt_RNI4EPV11[10]\ : OR3
      port map(A => \signal_send_0/un1_tx_uart27_2\, B => 
        \signal_send_0/un1_tx_uart27_1_0\, C => 
        \signal_send_0/un1_tx_uart27_5\, Y => 
        \signal_send_0/un1_tx_uart27_8\);
    
    \cnt_send_RNO[2]\ : XA1B
      port map(A => N_1645, B => \cnt_send[2]_net_1\, C => N_378, 
        Y => cnt_send_n2);
    
    \cnt_recive_0_RNIC0EU[2]\ : NOR3A
      port map(A => \cnt_recive_0[2]_net_1\, B => N_46, C => 
        \cnt_recive_0[3]_net_1\, Y => 
        data_all_4_i_o3_i_o2_63_m1_e_0);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[37]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[37]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[37]\);
    
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
    
    \data_send_buffer_RNO[2]\ : OR3
      port map(A => \data_send_buffer_3_1_13[2]\, B => 
        \data_send_buffer_3_1_12[2]\, C => 
        \data_send_buffer_3_1_17[2]\, Y => 
        \data_send_buffer_3[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_comm2iice[1]\, B => 
        \ident_coreinst/IICE_comm2iice[2]\, C => 
        \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_2_net_1\);
    
    \data_all_RNO[95]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0_0[95]\, Y
         => N_147);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[130]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[129]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[130]\);
    
    \cnt_send_RNO_0[25]\ : NOR3B
      port map(A => cnt_send_n25_m4_0_a2_4, B => 
        cnt_send_n25_m4_0_a2_3, C => N_71, Y => 
        cnt_send_n25_N_11_mux);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[132]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[132]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[132]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[122]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[121]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[122]\);
    
    
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
    
    \signal_send_0/cnt_RNIFSVP[8]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart29_1\);
    
    \single_recive_0/data_recive_RNIM8C01[6]\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => N_339, Y => 
        N_647_2);
    
    \data_all[2]\ : DFN1E0C0
      port map(D => N_319, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[2]_net_1\);
    
    \cnt_send_0_RNI60A52[0]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_1[6]\, B => 
        m77_0_a2_3_0, C => \cnt_send_0[0]_net_1\, Y => 
        \data_send_buffer_3_1_a2_10_3[6]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[1]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[1]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[0]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[1]\);
    
    \data_all[11]\ : DFN1E0C0
      port map(D => N_301, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[11]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[26]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[25]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[26]\);
    
    \data_all_RNO[56]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[56]\, Y => 
        N_225);
    
    \data_all_RNO_0[97]\ : AO1A
      port map(A => \data_all[97]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[97]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[137]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[136]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[137]\);
    
    \data_send_buffer_RNO_10[1]\ : OR2B
      port map(A => N_145_mux, B => \data_all[1]_net_1\, Y => 
        N_360);
    
    \data_send_buffer_RNO_7[3]\ : AO1
      port map(A => \data_all[131]_net_1\, B => N_925, C => N_532, 
        Y => \data_send_buffer_3_1_0[3]\);
    
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
    
    \data_all_RNO[8]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[8]\, Y => 
        N_307);
    
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
    
    \cnt_send[20]\ : DFN1E1C0
      port map(D => cnt_send_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[20]_net_1\);
    
    \data_send_buffer_RNO_23[2]\ : NOR2B
      port map(A => \data_all[10]_net_1\, B => N_889, Y => 
        \data_send_buffer_3_1_a2_18_0[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[46]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[47]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[45]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[46]\);
    
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[31]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[30]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[31]\);
    
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
    
    \data_all_RNO[159]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => N_1739, C => 
        \data_all_4_i_0[159]\, Y => N_1586);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[57]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[58]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[56]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[57]\);
    
    \data_send_buffer_RNO_15[1]\ : OR3
      port map(A => un38_data_send_buffer_968_i_a2_7_0, B => 
        un38_data_send_buffer_968_i_a2_3_0, C => 
        un38_data_send_buffer_968_i_a2_0, Y => 
        un38_data_send_buffer_968_i_11_tz_1);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[100]\ : DFN1
      port map(D => \data_all[59]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[100]_net_1\);
    
    \data_all_RNO_0[113]\ : AO1D
      port map(A => \data_all[113]_net_1\, B => m90_i_o2_N_3_mux, 
        C => N_378, Y => \data_all_4_0_i_0[113]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[159]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[158]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[159]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[21]\ : DFN1
      port map(D => \data_all[138]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[21]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[120]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[40]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[120]\);
    
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
    
    \data_send_buffer_RNO_11[5]\ : NOR3B
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[45]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        m77_0_a3_12_0);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]\ : 
        AOI1B
      port map(A => 
        \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[19]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[19]_net_1\);
    
    \cnt_recive_0[3]\ : DFN1E0C0
      port map(D => N_36, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive_0[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[161]\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[160]\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[161]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[61]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[60]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[61]\);
    
    \data_send_buffer_RNO_21[2]\ : NOR3C
      port map(A => N_889, B => N_1658, C => \data_all[74]_net_1\, 
        Y => N_552);
    
    \data_send_buffer_RNO_0[0]\ : OR3
      port map(A => N_564, B => N_565, C => 
        \data_send_buffer_3_1_7[0]\, Y => 
        \data_send_buffer_3_1_7_0[0]\);
    
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
    
    \data_send_buffer_RNO_5[1]\ : AO1A
      port map(A => un17_data_send_buffer, B => N_360, C => N_378, 
        Y => m81_i_0);
    
    \data_send_buffer_RNO_0[5]\ : OR3
      port map(A => m77_0_1, B => m77_0_0, C => 
        \data_send_buffer_RNO_3[5]_net_1\, Y => m77_0_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[87]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[87]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[87]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[53]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[52]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[53]\);
    
    \data_all_RNO[154]\ : NOR3
      port map(A => N_587, B => N_378, C => N_588, Y => N_1591);
    
    \sys_clk_pad/U0/U1\ : CLKIO
      port map(A => \sys_clk_pad/U0/NET1\, Y => sys_clk_c);
    
    \data_send_buffer_RNO_14[4]\ : NOR2B
      port map(A => \data_all[92]_net_1\, B => N_1688, Y => N_514);
    
    \data_send_buffer_RNO[4]\ : OR3
      port map(A => \data_send_buffer_3_1_13[4]\, B => 
        \data_send_buffer_3_1_12[4]_net_1\, C => 
        \data_send_buffer_3_1_14[4]\, Y => 
        \data_send_buffer_3[4]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[6]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[6]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\);
    
    \data_send_buffer_RNO_15[2]\ : NOR3C
      port map(A => N_1645, B => N_1912, C => 
        \data_all[122]_net_1\, Y => N_546);
    
    \data_send_buffer_RNO_8[3]\ : AO1
      port map(A => \data_all[91]_net_1\, B => N_1688, C => N_536, 
        Y => \data_send_buffer_3_1_7[3]\);
    
    \data_send_buffer_RNO_2[5]\ : AO1
      port map(A => N_1912, B => N_2962_tz, C => 
        \data_send_buffer_RNO_7[5]_net_1\, Y => m77_0_0);
    
    \cnt_send_RNI3T932[10]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_4_1, B => 
        cnt_send_c11_m6_0_a2_4_0, C => cnt_send_c11_m6_0_a2_4_3, 
        Y => cnt_send_c11_m6_0_a2_4_6);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[70]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[69]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[70]\);
    
    \cnt_recive_RNIIEIT2[27]\ : NOR3C
      port map(A => cnt_recive_c25tt_m3_e_0, B => 
        cnt_recive_c25tt_m3_e_1, C => cnt_recive_c27_m6_0_a2_1, Y
         => cnt_recive_c27_m6_0_a2_3);
    
    \signal_send_0/cnt_RNIHUVP[7]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/tx_uart34_4\);
    
    \single_recive_0/cnt_RNIMS0I[4]\ : NOR2B
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m42_2\);
    
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
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNIF85L[2]\ : 
        NOR3C
      port map(A => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_0\, 
        B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b7_nUTQ_9u_0_a2_0tt_m3_0_a2_1\, 
        C => \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_2_a0_2_0\);
    
    \data_all_RNO[30]\ : OA1C
      port map(A => N_308, B => \data_all[30]_net_1\, C => 
        \data_all_4_i_0_0[30]\, Y => N_263);
    
    \data_all[15]\ : DFN1E0C0
      port map(D => N_293, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[15]_net_1\);
    
    \data_all[42]\ : DFN1E0C0
      port map(D => N_253, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[42]_net_1\);
    
    \signal_send_0/cnt[6]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[6]_net_1\);
    
    \data_all_RNO[67]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_804_2, C
         => \data_all_4_i_0[67]\, Y => N_203);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[19]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[19]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[19]\);
    
    \data_send_buffer_3_1_12[4]\ : AO1
      port map(A => N_967, B => \data_all[4]_net_1\, C => 
        \data_send_buffer_3_1_7[4]_net_1\, Y => 
        \data_send_buffer_3_1_12[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[41]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[40]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[41]\);
    
    \signal_send_0/cnt_RNIOVDJ1[8]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_6\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/tx_uart27_9\);
    
    
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
    
    \data_send_buffer_RNO_2[0]\ : OR3
      port map(A => N_569, B => N_566, C => 
        \data_send_buffer_3_1_5[0]\, Y => 
        \data_send_buffer_3_1_8[0]\);
    
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
    
    \cnt_send_RNIP4HR[9]\ : NOR2B
      port map(A => \cnt_send[9]_net_1\, B => \cnt_send[4]_net_1\, 
        Y => cnt_send_c11_m6_0_a2_4_3);
    
    \cnt_recive[5]\ : DFN1E0C0
      port map(D => N_32, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[5]_net_1\);
    
    receive_end_RNO_0 : AOI1
      port map(A => receive_end2lt9, B => receive_end2lto9, C => 
        N_378, Y => receive_end_1_sqmuxa);
    
    \data_send_buffer_RNO_0[2]\ : OR3
      port map(A => N_553, B => \data_send_buffer_3_1_1[2]\, C
         => \data_send_buffer_3_1_6[2]\, Y => 
        \data_send_buffer_3_1_13[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[29]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[30]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[28]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[29]\);
    
    \test_pad/U0/U0\ : IOPAD_TRI
      port map(D => \test_pad/U0/NET1\, E => \test_pad/U0/NET2\, 
        PAD => test);
    
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
    
    \data_all_RNO_0[13]\ : AO1D
      port map(A => \data_all[13]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[13]\);
    
    \cnt_send_RNO[30]\ : AX1C
      port map(A => cnt_send_c28, B => cnt_send_107_0, C => N_996, 
        Y => cnt_send_n30);
    
    idle_send_down_RNIU78E : OR2
      port map(A => \idle_send_down\, B => N_378, Y => cnt_sende);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[2]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[2]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[2]\);
    
    \cnt_recive_RNIU3BIA[4]\ : OR2
      port map(A => \data_all_4_i_o3_0_0_o3_0[100]\, B => OVER_12, 
        Y => N_344_0);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[0]\ : DFN1
      port map(D => \data_all[159]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[86]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[85]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[86]\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[93]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[94]\);
    
    \data_all_RNO[29]\ : OA1C
      port map(A => N_308, B => \data_all[29]_net_1\, C => 
        \data_all_4_i_0_0[29]\, Y => N_265);
    
    \data_all_RNO_0[19]\ : AO1D
      port map(A => \data_all[19]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[19]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa\ : 
        NOR3B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b5_OvyH3\, B => 
        \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, C => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, Y => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL_0_sqmuxa_net_1\);
    
    \data_send_buffer_RNO_32[1]\ : NOR3B
      port map(A => N_1656, B => N_889, C => \data_all[41]_net_1\, 
        Y => N_1614);
    
    \data_send_buffer_RNO_4[1]\ : OR3
      port map(A => un38_data_send_buffer_968_i_11, B => 
        un38_data_send_buffer_968_i_10, C => 
        un38_data_send_buffer_968_i_7, Y => N_1583);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[45]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[45]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[45]\);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[132]\ : DFN1
      port map(D => \data_all[27]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[132]_net_1\);
    
    \data_send_buffer_RNO_6[3]\ : NOR3C
      port map(A => N_1649, B => N_1658, C => 
        \data_all[83]_net_1\, Y => N_534);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[45]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[115]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[45]\);
    
    \cnt_send_RNO_0[23]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_4, B => 
        cnt_send_n17_i_o4_m5_0_a2_6, C => cnt_send_n23_m3_0_a2_4, 
        Y => cnt_send_n23_N_9_mux);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[131]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[130]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[131]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[126]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[34]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[126]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[48]\ : DFN1
      port map(D => \data_all[111]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[48]_net_1\);
    
    \cnt_send_RNO[12]\ : XA1B
      port map(A => cnt_send_c11, B => \cnt_send[12]_net_1\, C
         => N_378, Y => cnt_send_n12);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[112]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[113]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[111]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[112]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_1\ : 
        OA1
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/N_75\, C => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[128]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[127]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[128]\);
    
    \data_send_buffer_RNO_14[6]\ : NOR2A
      port map(A => N_450, B => \cnt_send[3]_net_1\, Y => 
        \data_send_buffer_3_1_a2_0[6]\);
    
    
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
    
    \cnt_recive_RNI5E1O1[5]\ : NOR3A
      port map(A => un5_idle_recive_7, B => \cnt_recive[5]_net_1\, 
        C => \cnt_recive[7]_net_1\, Y => un5_idle_recive_9_0);
    
    \data_send_buffer_RNO_14[1]\ : NOR2
      port map(A => \data_all[25]_net_1\, B => N_318, Y => 
        un38_data_send_buffer_968_i_a2_11_0);
    
    \data_all_RNO_0[135]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[135]_net_1\, Y => N_623);
    
    \signal_send_0/cnt_RNIMTUD2[4]\ : NOR3C
      port map(A => \signal_send_0/tx_uart29_3\, B => 
        \signal_send_0/tx_uart29_2\, C => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart29_7\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[101]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[102]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[100]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[101]\);
    
    \signal_send_0/cnt_RNISOCR4[4]\ : NOR2B
      port map(A => \signal_send_0/tx_uart29_7\, B => 
        \signal_send_0/tx_uart29_6\, Y => 
        \signal_send_0/tx_uart29\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[58]\ : DFN1
      port map(D => \data_all[101]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[58]_net_1\);
    
    
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
    
    send_end_RNO_26 : NOR3C
      port map(A => send_end_0_sqmuxa_i_a3_14, B => 
        send_end_0_sqmuxa_i_a3_13, C => send_end_0_sqmuxa_i_a3_19, 
        Y => send_end_0_sqmuxa_i_a3_23);
    
    \signal_send_0/un7_cnt_1_I_11\ : NOR2B
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[0]\, Y => \signal_send_0/N_9\);
    
    \cnt_recive_RNO[26]\ : XA1B
      port map(A => cnt_recive_c25, B => \cnt_recive[26]_net_1\, 
        C => N_378, Y => cnt_recive_n26);
    
    \data_send_buffer_RNO_13[5]\ : NOR2B
      port map(A => \data_all[93]_net_1\, B => N_1645, Y => 
        m77_0_a3_14_0);
    
    \data_all_RNO_1[152]\ : NOR2
      port map(A => N_1739, B => \data_recive_buffer[0]\, Y => 
        N_1867);
    
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
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[3]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[3]_net_1\);
    
    \data_all_RNO_0[86]\ : AO1D
      port map(A => \data_all[86]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[86]\);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIMR1A3_0\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.b7_nFG0rDY\, B => 
        \ident_coreinst/comm_block_INST/jtagi/b9_nv_cLqgOF\, Y
         => \ident_coreinst/comm_block_INST/b10_nv_ywKMm9X_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[142]\ : DFN1
      port map(D => \data_all[17]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[142]_net_1\);
    
    \single_recive_0/cnt_RNIMS0I_2[4]\ : NOR2
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m99_2\);
    
    \data_all_RNO[59]\ : OA1B
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_all[59]_net_1\, C => \data_all_4_i_0[59]\, Y => 
        N_219);
    
    \data_send_buffer_RNO_19[3]\ : NOR3C
      port map(A => N_889, B => N_1912, C => 
        \data_all[107]_net_1\, Y => N_531);
    
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
    
    \data_all_RNO[119]\ : NOR3
      port map(A => N_391, B => N_378, C => N_390, Y => N_1715);
    
    \cnt_send_RNO[24]\ : XA1B
      port map(A => cnt_send_n24_tz_N_10_mux, B => 
        \cnt_send[24]_net_1\, C => N_378, Y => cnt_send_n24);
    
    \data_send_buffer_RNO_9[7]\ : NOR2A
      port map(A => \cnt_send[1]_net_1\, B => N_138, Y => 
        m62_0_a3_3_0);
    
    \data_all[57]\ : DFN1E0C0
      port map(D => N_223, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[57]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[113]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[112]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[113]\);
    
    \data_all_RNO_0[74]\ : AO1D
      port map(A => \data_all[74]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[74]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[128]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[128]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[128]\);
    
    \data_send_buffer_RNO_25[3]\ : MX2
      port map(A => \data_all[3]_net_1\, B => 
        \data_all[11]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_484_3);
    
    \data_all[123]\ : DFN1E0C0
      port map(D => \data_all_4[123]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[123]_net_1\);
    
    \cnt_recive_RNI8A3B8[18]\ : OR2A
      port map(A => \cnt_recive[18]_net_1\, B => N_62, Y => N_63);
    
    \data_all_RNO[85]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0_0[85]\, Y
         => N_167);
    
    \signal_send_0/cnt_RNIGNDJ1[6]\ : NOR3B
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/tx_uart27_6\, C => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart31_7\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[98]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[62]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[98]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[22]\ : DFN1
      port map(D => \data_all[137]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[22]_net_1\);
    
    \cnt_send_RNO[25]\ : XA1B
      port map(A => cnt_send_n25_N_11_mux, B => 
        \cnt_send[25]_net_1\, C => N_378, Y => cnt_send_n25);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[2]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr4_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[36]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[35]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[36]\);
    
    \data_all_RNO[114]\ : OA1C
      port map(A => m90_i_o2_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_0_i_0[114]\, Y
         => N_1720);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_14\ : 
        AX1C
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        C => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[2]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/I_14_2\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[10]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[9]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[10]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[84]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[76]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[84]\);
    
    \cnt_recive_end_RNO[9]\ : XA1
      port map(A => cnt_recive_end_19_0, B => receive_end2lto9, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n9);
    
    \single_recive_0/cnt_RNO[3]\ : XA1
      port map(A => \single_recive_0/N_10\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[3]\);
    
    send_end_RNO_46 : NOR3A
      port map(A => send_end_0_sqmuxa_i_a3_10, B => 
        \cnt_send[22]_net_1\, C => \cnt_send[23]_net_1\, Y => 
        send_end_0_sqmuxa_i_a3_18);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[155]\ : DFN1
      port map(D => \data_all[4]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[155]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[128]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[129]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[127]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[128]\);
    
    \data_send_buffer_RNO_3[0]\ : NOR3C
      port map(A => N_1645, B => N_1912, C => 
        \data_all[120]_net_1\, Y => N_564);
    
    \cnt_send_RNO_2[25]\ : NOR3C
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[24]_net_1\, C => \cnt_send[18]_net_1\, Y => 
        cnt_send_n25_m4_0_a2_3);
    
    \cnt_recive_RNI9BKE2[20]\ : NOR3A
      port map(A => un5_idle_recive_4_0, B => 
        \cnt_recive[20]_net_1\, C => \cnt_recive[19]_net_1\, Y
         => un5_idle_recive_10_0);
    
    \data_all_RNO_1[140]\ : NOR2
      port map(A => N_306, B => \data_recive_buffer[4]\, Y => 
        N_1845);
    
    \data_all[140]\ : DFN1E0C0
      port map(D => N_1604, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[140]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[0]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[6]_net_1\);
    
    \data_all_RNO_0[143]\ : AO1A
      port map(A => \data_all[143]_net_1\, B => N_306, C => N_378, 
        Y => \data_all_4_i_0_0[143]\);
    
    \data_send_buffer_RNO_12[0]\ : AO1
      port map(A => \data_all[0]_net_1\, B => N_887, C => 
        \data_send_buffer_3_1_a2_11_0[0]\, Y => 
        \data_send_buffer_3_1_7_tz_0[0]\);
    
    \cnt_recive_RNO[15]\ : XA1B
      port map(A => N_59_i, B => \cnt_recive[15]_net_1\, C => 
        N_378, Y => cnt_recive_n15);
    
    \data_all_RNO[78]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0[78]\, Y => 
        N_181);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[66]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[65]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[66]\);
    
    \data_send_buffer_RNO_6[4]\ : AO1
      port map(A => \data_all[116]_net_1\, B => N_1675, C => 
        N_512, Y => \data_send_buffer_3_1_3[4]\);
    
    \data_all[83]\ : DFN1E0C0
      port map(D => N_171, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[83]_net_1\);
    
    \cnt_recive_RNIIROR1[2]\ : NOR3B
      port map(A => data_all_4_i_0_o2_0_36_m2_e_0, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        data_all_4_i_0_o2_0_36_m2_e_2);
    
    \single_recive_0/data_recive_RNO_0[2]\ : AOI1B
      port map(A => \single_recive_0/m42_4\, B => 
        \single_recive_0/N_116_mux\, C => \data_recive_buffer[2]\, 
        Y => \single_recive_0/m89_0\);
    
    \cnt_send_RNIRMBM1[2]\ : NOR3B
      port map(A => N_1677, B => m77_0_a2_3_0, C => N_378, Y => 
        N_1658);
    
    \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1\ : 
        NOR2A
      port map(A => \ident_coreinst/IICE_comm2iice[0]\, B => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b7_yYh03wy_iv_0_a2_1_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[61]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[61]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[61]\);
    
    \cnt_send[11]\ : DFN1E1C0
      port map(D => cnt_send_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[11]_net_1\);
    
    \data_send_buffer_RNO_3[2]\ : NOR3C
      port map(A => N_887, B => N_1658, C => \data_all[66]_net_1\, 
        Y => N_553);
    
    \data_send_buffer_RNO_27[1]\ : NOR2A
      port map(A => N_1677, B => \data_all[73]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_5_0);
    
    \cnt_recive_RNI1MST[8]\ : NOR2B
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => cnt_recive_n11_0_o4_m6_0_a2_2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[51]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[52]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[50]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[51]\);
    
    \data_send_buffer_RNO_20[5]\ : OA1A
      port map(A => \cnt_send_1[0]_net_1\, B => 
        \data_all[29]_net_1\, C => \cnt_send[1]_net_1\, Y => 
        m77_0_a3_1_1_0);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[31]\ : DFN1
      port map(D => \data_all[128]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[31]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[74]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[73]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[74]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[131]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[131]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[131]\);
    
    \data_send_buffer_RNO_17[2]\ : NOR2B
      port map(A => \data_all[34]_net_1\, B => N_968, Y => N_557);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[0]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[0]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => \ident_coreinst/IICE_INST/b9_ubTt3_Mxf\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[46]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[45]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[46]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[93]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[92]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[93]\);
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b3_P_F_2\ : 
        OAI1
      port map(A => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, B => 
        \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, C => 
        \ident_coreinst/IICE_INST/b4_PfFz/b4_nUAi[0]\, Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/N_24\);
    
    \cnt_recive_end_RNI66AO[3]\ : NOR2B
      port map(A => cnt_recive_end_c2, B => receive_end2lto3, Y
         => cnt_recive_end_c3);
    
    \signal_send_0/cnt_end_RNISCMJ[6]\ : NOR2
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/cnt_end[8]_net_1\, Y => 
        \signal_send_0/un6_end_flag_3\);
    
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
    
    \data_all_RNO_0[37]\ : NOR2A
      port map(A => N_310, B => \data_all[37]_net_1\, Y => N_1882);
    
    \signal_send_0/cnt_RNICPVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/un1_cnt_2\);
    
    \data_all_RNO_0[24]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_24_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[24]\);
    
    \data_all_RNO_0[138]\ : NOR2A
      port map(A => N_306, B => \data_all[138]_net_1\, Y => 
        N_1840);
    
    \single_recive_0/un7_cnt_1_I_24\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[3]\, Y => 
        \single_recive_0/DWACT_FINC_E[4]\);
    
    \data_all_RNO[109]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[5]\, C => 
        N_677, Y => \data_all_4[109]\);
    
    send_end_RNO_31 : XOR2
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_recive[10]_net_1\, Y => un12_cnt_send_10);
    
    send_end_RNO_20 : OR3
      port map(A => N_74_i, B => un12_cnt_send_26, C => N_79_i, Y
         => send_end_0_sqmuxa_i_14);
    
    \data_send_buffer_RNO_10[6]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_3[6]\, B => 
        \data_all[102]_net_1\, C => N_378, Y => N_503);
    
    \ident_coreinst/IICE_INST/b3_SoW/un1_b12_2_St6KCa_jHv_I_12\ : 
        XOR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_2_St6KCa_jHv[1]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/DWACT_ADD_CI_0_TMP[0]\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/I_12_2\);
    
    \signal_send_0/end_flag_RNISQL2E\ : OA1B
      port map(A => \signal_send_0/un11_cnt_delay_5_0_net_1\, B
         => \signal_send_0/cnt_flag_0_sqmuxa\, C => N_378, Y => 
        vld_send_0_sqmuxa);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[102]\ : DFN1
      port map(D => \data_all[57]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[102]_net_1\);
    
    \cnt_recive_RNO[8]\ : NOR3A
      port map(A => N_1505, B => N_378, C => N_1523, Y => N_26);
    
    \data_all_RNO_0[78]\ : AO1D
      port map(A => \data_all[78]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[78]\);
    
    send_end_RNIT7PG6 : NOR2A
      port map(A => N_145_mux, B => N_378, Y => m77_0_a2_1_0);
    
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
    
    \data_send_buffer_RNO_17[6]\ : MX2
      port map(A => \data_all[70]_net_1\, B => 
        \data_all[78]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_551_3);
    
    \data_send_buffer_RNO[3]\ : OR3
      port map(A => \data_send_buffer_3_1_13[3]\, B => 
        \data_send_buffer_3_1_12[3]\, C => 
        \data_send_buffer_3_1_14[3]\, Y => 
        \data_send_buffer_3[3]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[105]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[106]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[104]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[105]\);
    
    \data_all_RNO[73]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[73]\, Y => 
        N_191);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[155]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[154]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[155]\);
    
    \data_all_RNO_1[24]\ : NOR3
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[0]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_24_m1_e_1);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[70]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[70]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[70]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr_RNO[11]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]_net_1\);
    
    \data_send_buffer_RNO_0[6]\ : OR3
      port map(A => \data_send_buffer_3_1_1[6]\, B => N_499, C
         => \data_send_buffer_3_1_3[6]\, Y => 
        \data_send_buffer_3_1_6[6]\);
    
    
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/genblk1.b10_dZst39_EF3[4]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/comm_block_INST/b7_Rcmi_ql/b9_OvyH3_saL[4]_net_1\, 
        CLK => \ident_coreinst/comm_block_INST/b10_8Kz_rKlrtX\, E
         => \ident_coreinst/comm_block_INST/b10_8Kz_fFfsjX\, Q
         => \ident_coreinst/IICE_comm2iice[2]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[156]\ : DFN1
      port map(D => \data_all[3]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[156]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[93]\ : DFN1
      port map(D => \data_all[66]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[93]_net_1\);
    
    \data_all_RNO[104]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[0]\, C => 
        N_687, Y => \data_all_4[104]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[141]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[142]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[140]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[141]\);
    
    \data_all_RNO[7]\ : OA1C
      port map(A => data_all_4_i_o3_7_N_3_mux, B => N_648_2, C
         => \data_all_4_i_0[7]\, Y => N_309);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[55]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[105]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[55]\);
    
    
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
    
    \signal_send_0/cnt_flag_c2\ : NOR3C
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        C => \cnt_flag[2]_net_1\, Y => 
        \signal_send_0/cnt_flag_c2_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[159]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[1]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[159]\);
    
    \data_all_RNO_0[81]\ : AO1D
      port map(A => \data_all[81]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[81]\);
    
    
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
    
    \signal_send_0/cnt_RNIOHPM9[1]\ : OR2
      port map(A => \signal_send_0/tx_uart33\, B => 
        \signal_send_0/tx_uart27\, Y => 
        \signal_send_0/un1_tx_uart27_4\);
    
    \cnt_send_RNIOI3O7_0[2]\ : NOR2A
      port map(A => N_1898_3, B => un17_data_send_bufferlt30_22, 
        Y => m77_0_a2_6tt_N_7_mux);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[36]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[124]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[36]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[3]_net_1\);
    
    I_491 : CLKINT
      port map(A => \genblk9.b7_nYJ_BFM8_i\, Y => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\);
    
    
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
    
    \cnt_recive_RNO[11]\ : XA1B
      port map(A => \cnt_recive[11]_net_1\, B => 
        cnt_recive_n11_0_o4_N_13_mux, C => N_378, Y => 
        cnt_recive_n11);
    
    \signal_send_0/cnt_RNIFSVP[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart27_4\);
    
    \signal_send_0/cnt_end_RNO[5]\ : XA1B
      port map(A => \signal_send_0/cnt_end[5]_net_1\, B => 
        \signal_send_0/cnt_end_c4\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n5\);
    
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
    
    send_end_RNO_40 : XOR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => N_79_i);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[72]\ : DFN1
      port map(D => \data_all[87]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[72]_net_1\);
    
    \signal_send_0/cnt_RNIOHPM9[11]\ : OR2
      port map(A => \signal_send_0/tx_uart37\, B => 
        \signal_send_0/tx_uart32\, Y => 
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
    
    \cnt_recive_RNIA4PGB[28]\ : NOR2B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        Y => cnt_recive_c28);
    
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
    
    \data_all_RNO[12]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[12]\, Y => 
        N_299);
    
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
    
    \data_all_RNO[126]\ : NOR3
      port map(A => N_1832, B => N_378, C => N_1833, Y => N_1726);
    
    
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
    
    \data_send_buffer_RNO_7[5]\ : OA1
      port map(A => m77_0_472_tz_0, B => m77_0_472_tz_1, C => 
        N_1659, Y => \data_send_buffer_RNO_7[5]_net_1\);
    
    \data_all_RNO_0[106]\ : NOR2A
      port map(A => \data_all[106]_net_1\, B => N_1713, Y => 
        N_683);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[100]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[99]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[100]\);
    
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
    
    \cnt_send_RNO_2[23]\ : NOR2B
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[17]_net_1\, Y => cnt_send_n23_m3_0_a2_0);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[13]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[13]_net_1\);
    
    \data_all_RNO[147]\ : OA1B
      port map(A => N_314, B => N_385, C => \data_all_4_i_0[147]\, 
        Y => N_1597);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[14]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[15]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[13]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[14]\);
    
    \data_all_RNO_0[28]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_28_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[28]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/U1\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout[3]/Y\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/status_b2sclk[3]\);
    
    \signal_send_0/un7_cnt_1_I_30\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[5]\, Y => 
        \signal_send_0/DWACT_FINC_E[6]\);
    
    \data_all_RNO[48]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => 
        \un52_data_all[48]\, C => \data_all_4_i_0[48]\, Y => 
        N_241);
    
    \signal_send_0/cnt_end_RNO[9]\ : XA1B
      port map(A => \signal_send_0/cnt_end_19_0\, B => 
        \signal_send_0/cnt_end[9]_net_1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n9\);
    
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
    
    \cnt_recive_0_RNIG45U_1[0]\ : OR3A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive_0[0]_net_1\, Y
         => N_355);
    
    \single_recive_0/cnt_RNIH9DR[1]\ : NOR3
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/m47_2\);
    
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
    
    \data_all_RNO_1[120]\ : NOR2
      port map(A => N_320, B => \data_recive_buffer[0]\, Y => 
        N_1831);
    
    \data_send_buffer_RNO_16[1]\ : NOR2
      port map(A => \data_all[1]_net_1\, B => N_318, Y => 
        un38_data_send_buffer_968_i_a2_14_0);
    
    \data_all_RNO[91]\ : OA1B
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_all[91]_net_1\, C => \data_all_4_i_0_0[91]\, Y => 
        N_155);
    
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
    
    \data_send_buffer_RNO_13[4]\ : NOR3C
      port map(A => N_889, B => N_1912, C => 
        \data_all[108]_net_1\, Y => N_512);
    
    \cnt_send_RNIIPHO[23]\ : NOR3C
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[23]_net_1\, C => cnt_send_c25_m6_0_a2_2, Y => 
        cnt_send_c25_m6_0_a2_5);
    
    \data_all_RNO_0[123]\ : NOR3A
      port map(A => \data_recive_buffer[3]\, B => N_378, C => 
        data_all_4_0_a2_1_i_o2_out, Y => 
        data_all_4_0_a2_0_123_m1_e_1);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[107]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[106]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[107]\);
    
    
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
    
    \data_all_RNO_0[82]\ : AO1D
      port map(A => \data_all[82]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[82]\);
    
    send_end_RNO_38 : XOR2
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_send[16]_net_1\, Y => N_74_i);
    
    \data_send_buffer_RNO_9[2]\ : AO1
      port map(A => \data_send_buffer_3_1_a2_19_0[2]\, B => 
        N_1662, C => N_541, Y => \data_send_buffer_3_1_11[2]\);
    
    \data_all[86]\ : DFN1E0C0
      port map(D => N_165, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[86]_net_1\);
    
    \data_all_RNO_1[154]\ : NOR2
      port map(A => N_1739, B => \data_recive_buffer[2]\, Y => 
        N_588);
    
    \data_send_buffer_RNO_15[6]\ : MX2
      port map(A => N_551_3, B => N_567_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_452);
    
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
    
    \data_all_RNO_1[28]\ : NOR3
      port map(A => \cnt_recive[3]_net_1\, B => 
        \data_recive_buffer[4]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_28_m1_e_1);
    
    \data_all_RNO[16]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_481_2, C
         => \data_all_4_i_0[16]\, Y => N_291);
    
    idle_send_down_RNIU78E_0 : OR2
      port map(A => \idle_send_down\, B => N_378, Y => 
        cnt_sende_0);
    
    \data_send_buffer_RNO_4[6]\ : NOR2B
      port map(A => \data_all[134]_net_1\, B => N_925, Y => N_499);
    
    \cnt_send_RNIAITJ_0[28]\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => m77_0_a2_3_0);
    
    \cnt_send_RNO[11]\ : XA1B
      port map(A => cnt_send_c10, B => \cnt_send[11]_net_1\, C
         => N_378, Y => cnt_send_n11);
    
    \data_send_buffer_RNO_17[7]\ : MX2
      port map(A => \data_all[71]_net_1\, B => 
        \data_all[79]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_1730);
    
    \data_all_RNO_1[126]\ : NOR2
      port map(A => N_320, B => \data_recive_buffer[6]\, Y => 
        N_1833);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[14]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[13]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[14]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[139]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[138]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[139]\);
    
    \data_send_buffer_RNO_16[0]\ : MX2
      port map(A => N_609_3, B => N_625_3, S => 
        \cnt_send[1]_net_1\, Y => N_451);
    
    
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
    
    \data_send_buffer_RNO_21[7]\ : MX2
      port map(A => \data_all[151]_net_1\, B => 
        \data_all[159]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1731);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[73]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[72]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[73]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[26]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\);
    
    \data_all_RNO_0[57]\ : AO1D
      port map(A => \data_all[57]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[57]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[5]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[6]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[5]\);
    
    \data_all_RNO_0[95]\ : AO1D
      port map(A => \data_all[95]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[95]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[60]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[61]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[59]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[60]\);
    
    \cnt_recive_end[2]\ : DFN1C0
      port map(D => cnt_recive_end_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto2);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[32]\ : DFN1
      port map(D => \data_all[127]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[32]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[89]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[90]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[88]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[89]\);
    
    \data_all_RNO[37]\ : NOR3
      port map(A => N_1882, B => N_378, C => N_1883, Y => N_242);
    
    \cnt_recive_0_RNITB3D1_0[2]\ : NOR3B
      port map(A => \cnt_recive[1]_net_1\, B => 
        data_all_4_i_o3_7_m1_e_0, C => \cnt_recive_0[2]_net_1\, Y
         => data_all_4_i_o3_23_m1_e_1);
    
    \data_send_buffer_RNO_19[1]\ : AO1
      port map(A => un38_data_send_buffer_968_i_a2_1_0, B => 
        N_889, C => N_472, Y => un38_data_send_buffer_968_i_0);
    
    \single_recive_0/un7_cnt_1_I_5\ : XOR2
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/I_5\);
    
    \data_all[134]\ : DFN1E0C0
      port map(D => N_1610, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[134]_net_1\);
    
    \data_all_RNO[43]\ : OA1B
      port map(A => N_1736, B => \data_recive_buffer[3]\, C => 
        \data_all_4_i_0_0[43]\, Y => N_251);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[64]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[96]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[64]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[134]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[134]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[134]\);
    
    \cnt_recive_RNI4JQC1[2]\ : NOR3C
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[145]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[146]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[144]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[145]\);
    
    \data_all_RNO[94]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0_0[94]\, Y
         => N_149);
    
    \data_send_buffer_RNO_23[0]\ : OR2
      port map(A => m77_0_a2_6tt_N_7_mux, B => 
        \cnt_send[28]_net_1\, Y => 
        data_send_buffer_3_1_a2_13_0_N_4);
    
    
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
    
    \data_all_RNO_1[112]\ : NOR3A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \data_recive_buffer[0]\, C => m90_i_o2_out, Y => 
        data_all_4_0_i_a3_0_112_m1_e_1);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd_0\, C
         => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[26]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[26]_net_1\);
    
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
    
    \cnt_recive_RNII65U[4]\ : NOR3C
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive_0[0]_net_1\, Y
         => cnt_recive_n7_i_o3_m5_0_a2_3);
    
    \signal_send_0/end_flag\ : DFN1E0C0
      port map(D => \signal_send_0/end_flag_1_sqmuxa\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/end_flag_2_sqmuxa\, Q => 
        \signal_send_0/end_flag_net_1\);
    
    \data_send_buffer_RNO_0[4]\ : OR3
      port map(A => \data_send_buffer_3_1_1[4]\, B => N_517, C
         => \data_send_buffer_3_1_9[4]\, Y => 
        \data_send_buffer_3_1_13[4]\);
    
    
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
    
    \data_all_RNO_0[132]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[132]_net_1\, Y => N_629);
    
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
    
    \cnt_recive_RNO[20]\ : XA1C
      port map(A => \cnt_recive[20]_net_1\, B => N_64, C => N_378, 
        Y => cnt_recive_n20);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[97]\ : DFN1
      port map(D => \data_all[62]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[97]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[71]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[89]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[71]\);
    
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
    
    \single_recive_0/idle_recive_RNIGD8Q\ : NOR3A
      port map(A => rx_uart_c, B => idle_recive, C => N_378, Y
         => \single_recive_0/cnt_recive_end_0_sqmuxa_1\);
    
    
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
    
    \signal_send_0/un11_receive_endlto2\ : NOR3
      port map(A => \cnt_delay[2]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => \cnt_delay[1]_net_1\, Y => 
        \signal_send_0/un11_receive_endlt4\);
    
    send_end_RNO_27 : XOR2
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => un12_cnt_send_18);
    
    \data_all[126]\ : DFN1E0C0
      port map(D => N_1726, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[126]_net_1\);
    
    \data_all_RNO_0[63]\ : AO1D
      port map(A => \data_all[63]_net_1\, B => 
        data_all_4_i_o3_i_o2_63_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[63]\);
    
    \signal_send_0/cnt_RNISMVJ1[6]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart34_4_0\);
    
    \cnt_send_RNI8L8U7_0[28]\ : AOI1A
      port map(A => un17_data_send_bufferlt30_22, B => N_1898_3, 
        C => \cnt_send[28]_net_1\, Y => un17_data_send_buffer);
    
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
    
    \data_all_RNO_0[90]\ : AO1D
      port map(A => \data_all[90]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[90]\);
    
    \signal_send_0/end_flag_RNI0MOKC\ : OR2
      port map(A => \signal_send_0/un3_end_flag\, B => N_378, Y
         => cnt_flage);
    
    \data_all_RNO[70]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_647_2, C
         => \data_all_4_i_0[70]\, Y => N_197);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[123]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[122]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[123]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[2]\ : DFN1
      port map(D => \data_all[157]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[2]_net_1\);
    
    \cnt_recive_end_RNO[2]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n2_tz, Y => cnt_recive_end_n2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[101]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[100]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[101]\);
    
    \data_all[138]\ : DFN1E0C0
      port map(D => N_1606, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[138]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[140]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[139]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[140]\);
    
    \data_all_RNO_0[69]\ : AO1D
      port map(A => \data_all[69]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[69]\);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_2\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\);
    
    \data_send_buffer_RNO_13[1]\ : NOR2A
      port map(A => N_1649, B => \data_all[145]_net_1\, Y => 
        m81_i_a3_3_0);
    
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
    
    \cnt_send_0_RNI4MCH1[0]\ : NOR3C
      port map(A => \cnt_send_0[1]_net_1\, B => 
        cnt_send_n8_i_o3_m4_0_a2_0, C => \cnt_send_0[0]_net_1\, Y
         => cnt_send_n8_i_o3_m4_0_a2_5);
    
    \signal_send_0/cnt_delay_n1\ : XA1B
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => N_378, Y => cnt_delay_n1);
    
    \signal_send_0/cnt[7]\ : DFN1C0
      port map(D => \signal_send_0/I_20_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[7]_net_1\);
    
    \cnt_send_RNO[10]\ : XA1B
      port map(A => cnt_send_c9, B => \cnt_send[10]_net_1\, C => 
        N_378, Y => cnt_send_n10);
    
    \data_all[89]\ : DFN1E0C0
      port map(D => N_159, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[89]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[147]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[146]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[147]\);
    
    \data_send_buffer_RNO_21[0]\ : MX2
      port map(A => \data_all[32]_net_1\, B => 
        \data_all[40]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_513_3);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[27]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[27]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[27]\);
    
    \data_send_buffer_RNO_9[6]\ : NOR3B
      port map(A => m77_0_a2_6_m3_0_a2_0_0, B => 
        \data_send_buffer_3_1_a2_0[6]\, C => m77_0_a2_6tt_N_7_mux, 
        Y => N_494);
    
    \signal_send_0/cnt_RNISOCR4[0]\ : NOR3C
      port map(A => \signal_send_0/tx_uart37_5\, B => 
        \signal_send_0/tx_uart37_4\, C => 
        \signal_send_0/tx_uart37_6\, Y => 
        \signal_send_0/tx_uart37\);
    
    \cnt_recive_RNIQ3K64[4]\ : NOR3A
      port map(A => \data_all_4_i_o2_1_i_a3_0[135]\, B => 
        OVER_11_0, C => OVER_11_1, Y => 
        \data_all_4_i_o2_1_i_a3_1[135]\);
    
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
    
    
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6\ : 
        NOR2B
      port map(A => \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\, 
        B => \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b4_PfFz/b7_PbTtl9G/b7_1LbcgKF/b6_BATJwN_6_net_1\);
    
    send_end_RNO_47 : NOR2
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => send_end_0_sqmuxa_i_a3_4);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b3_nfs[2]_net_1\);
    
    \single_recive_0/cnt_RNIPDRV1[1]\ : NOR3C
      port map(A => \single_recive_0/m47_1\, B => 
        \single_recive_0/N_14_0\, C => \single_recive_0/m47_2\, Y
         => \single_recive_0/N_123_mux\);
    
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
    
    \cnt_recive_RNI5VFF[4]\ : NOR3C
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive_0[3]_net_1\, Y
         => cnt_recive_c27_m6_0_a2_4);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[116]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[115]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[116]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[75]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[76]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[74]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[75]\);
    
    \cnt_send_RNILN7C[13]\ : OR2
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_send[13]_net_1\, Y => un17_data_send_bufferlt30_22_5);
    
    \data_send_buffer_RNO_10[2]\ : OR3
      port map(A => N_557, B => N_556, C => 
        \data_send_buffer_3_1_3[2]\, Y => 
        \data_send_buffer_3_1_10[2]\);
    
    send_end_RNO_55 : NOR2
      port map(A => \cnt_send[12]_net_1\, B => 
        \cnt_send[10]_net_1\, Y => send_end_0_sqmuxa_i_a3_6);
    
    \cnt_recive_RNISG5Q[20]\ : NOR2B
      port map(A => \cnt_recive[20]_net_1\, B => 
        \cnt_recive[15]_net_1\, Y => cnt_recive_n21_0_m3_0_a2_0);
    
    
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
    
    \signal_send_0/cnt_end_RNO[2]\ : XA1B
      port map(A => \signal_send_0/cnt_end[2]_net_1\, B => 
        \signal_send_0/cnt_end_c1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n2\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[15]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[15]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[160]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[159]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[160]\);
    
    \signal_send_0/cnt_RNIKEVJ1[5]\ : NOR3C
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/un1_cnt_2\, Y => 
        \signal_send_0/tx_uart37_5\);
    
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
    
    \signal_send_0/end_flag_RNI0ERDC\ : AOI1B
      port map(A => un5_idle_recive_16, B => un5_idle_recive_23, 
        C => \signal_send_0/end_flag_net_1\, Y => 
        \signal_send_0/un3_end_flag\);
    
    \cnt_send_RNO[27]\ : NOR2A
      port map(A => cnt_send_n27_tz, B => N_378, Y => 
        cnt_send_n27);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[13]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[12]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[13]\);
    
    \cnt_recive_RNI1L4Q[15]\ : NOR2
      port map(A => \cnt_recive[15]_net_1\, B => 
        \cnt_recive[16]_net_1\, Y => un5_idle_recive_8);
    
    \data_all_RNO_1[135]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => 
        \data_recive_buffer[7]\, Y => N_624);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[43]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[44]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[42]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[43]\);
    
    data_send_buffer_3_1_a2_16_2_m1_e : OR2A
      port map(A => N_887, B => un17_data_send_bufferlt30_22, Y
         => data_send_buffer_3_1_a2_16_2_N_5_i);
    
    \data_send_buffer_RNO_24[5]\ : NOR3C
      port map(A => \cnt_send_1[0]_net_1\, B => 
        \cnt_send[1]_net_1\, C => \data_all[125]_net_1\, Y => 
        m77_0_a3_6_0);
    
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
    
    \data_all_RNO[19]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_385, C => 
        \data_all_4_i_0[19]\, Y => N_285);
    
    \signal_send_0/cnt_RNI5IVP[0]\ : NOR2B
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart28_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[114]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[113]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[114]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[20]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[19]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[20]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[9]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[9]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[167]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[166]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[135]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[25]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[135]\);
    
    \data_send_buffer_RNO_23[3]\ : MX2
      port map(A => N_484_3, B => N_500_3, S => 
        \cnt_send[1]_net_1\, Y => N_457);
    
    \single_recive_0/data_recive[7]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[7]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[7]\);
    
    \cnt_recive[27]\ : DFN1E0C0
      port map(D => cnt_recive_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[27]_net_1\);
    
    \cnt_send_RNO_0[7]\ : OR2
      port map(A => cnt_send_n8_i_o3_N_9_mux, B => N_378, Y => 
        cnt_send_n7_i_0);
    
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
    
    \signal_send_0/end_flag_RNIKHUFC\ : NOR3C
      port map(A => \signal_send_0/un11_cnt_delay_5\, B => 
        \signal_send_0/un11_cnt_delay_4_net_1\, C => 
        \signal_send_0/un11_cnt_delay_5_0_net_1\, Y => 
        \signal_send_0/un11_cnt_delay\);
    
    \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIKL9U\ : 
        NOR2
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi.b9_96_cLqgOF3_2\);
    
    \data_all_RNO[81]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => N_383, 
        C => \data_all_4_i_0[81]\, Y => N_175);
    
    \cnt_recive[25]\ : DFN1E0C0
      port map(D => cnt_recive_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[25]_net_1\);
    
    \cnt_send_RNI3VJ31[2]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        N_6_0);
    
    \data_all_RNO_1[138]\ : NOR2
      port map(A => N_306, B => \data_recive_buffer[2]\, Y => 
        N_1841);
    
    \cnt_recive_RNIQ8CD1[4]\ : OR3B
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => N_1491, Y => N_1496);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[54]\ : DFN1
      port map(D => \data_all[105]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[54]_net_1\);
    
    AFLSDF_INV_0 : INV
      port map(A => N_378, Y => \AFLSDF_INV_0\);
    
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
    
    \cnt_recive_RNO_1[21]\ : NOR3C
      port map(A => cnt_recive_n21_0_m3_0_a2_1, B => 
        cnt_recive_n21_0_m3_0_a2_0, C => 
        cnt_recive_n21_0_m3_0_a2_2, Y => 
        cnt_recive_n21_0_m3_0_a2_4);
    
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
    
    \cnt_send_RNIP4HR[7]\ : NOR2B
      port map(A => \cnt_send[7]_net_1\, B => \cnt_send[6]_net_1\, 
        Y => cnt_send_n8_i_o3_m4_0_a2_0);
    
    \data_all[47]\ : DFN1E0C0
      port map(D => N_243, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[47]_net_1\);
    
    \cnt_send_RNO[8]\ : XA1B
      port map(A => \cnt_send[8]_net_1\, B => 
        cnt_send_n8_i_o3_N_9_mux, C => N_378, Y => N_1486);
    
    \data_all_RNO_0[1]\ : NOR3A
      port map(A => data_all_4_i_o3_7_m1_e_1, B => N_642_2, C => 
        N_344_0, Y => N_874);
    
    \signal_send_0/cnt_RNI8LVP[6]\ : NOR2
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart29_3\);
    
    \cnt_recive_RNO_0[21]\ : NOR3B
      port map(A => cnt_recive_c14_0_o4_m6_0_a2_4, B => 
        cnt_recive_n21_0_m3_0_a2_4, C => N_1499, Y => 
        cnt_recive_n21_0_N_9_mux);
    
    \data_send_buffer_RNO_3[1]\ : NOR2A
      port map(A => un17_data_send_buffer, B => 
        \cnt_send[4]_net_1\, Y => m81_i_a3_1_0);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[76]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[76]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[76]\);
    
    \single_recive_0/cnt[1]\ : DFN1C0
      port map(D => \single_recive_0/I_5\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[1]_net_1\);
    
    send_end_RNO_12 : XO1
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_send[22]_net_1\, C => N_73_i, Y => 
        send_end_0_sqmuxa_i_8);
    
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
    
    \rx_uart_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rx_uart_pad/U0/NET1\, Y => rx_uart_c);
    
    \data_all_RNO_0[131]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[131]_net_1\, Y => N_631);
    
    send_end_RNO_29 : XOR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_recive[17]_net_1\, Y => N_73_i);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[66]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[94]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[66]\);
    
    \data_send_buffer_3_1_a2[2]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_2[2]\, B => 
        \data_send_buffer_3_1_a2_17_1[3]\, C => 
        un17_data_send_buffer, Y => N_541);
    
    \data_send_buffer_RNO_20[7]\ : MX2C
      port map(A => \data_all[23]_net_1\, B => 
        \data_all[31]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_138);
    
    \data_all_RNO[121]\ : AO1
      port map(A => N_911, B => \data_recive_buffer[1]\, C => 
        N_655, Y => \data_all_4[121]\);
    
    \cnt_recive_RNIBQQC1[6]\ : NOR3C
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_recive[6]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        cnt_recive_n7_i_o3_m5_0_a2_2);
    
    \data_send_buffer_RNO_7[1]\ : OA1
      port map(A => un38_data_send_buffer_968_i_a2_11_0, B => 
        un38_data_send_buffer_968_i_11_tz_1, C => N_1645, Y => 
        un38_data_send_buffer_968_i_11);
    
    \cnt_recive_end_RNIL5IA1[6]\ : NOR2B
      port map(A => cnt_recive_end_c5, B => 
        \cnt_recive_end[6]_net_1\, Y => cnt_recive_end_c6);
    
    \data_send_buffer_RNO_4[3]\ : NOR3C
      port map(A => N_889, B => N_1658, C => \data_all[75]_net_1\, 
        Y => N_535);
    
    \data_all_RNO_1[142]\ : NOR2
      port map(A => N_306, B => \data_recive_buffer[6]\, Y => 
        N_1850);
    
    
        \ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw_RNIEGED1_1\ : 
        NOR3A
      port map(A => 
        \ident_coreinst/comm_block_INST/jtagi.UIREGdummy[6]\, B
         => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[4]\, 
        C => \ident_coreinst/comm_block_INST/jtagi/UIREGdummy[3]\, 
        Y => 
        \ident_coreinst/comm_block_INST/jtagi/b10_8Kz_fFfsjX_0\);
    
    \signal_send_0/cnt_end[4]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n4\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[4]_net_1\);
    
    \data_all_RNO[40]\ : NOR3
      port map(A => N_1767, B => N_378, C => N_1768, Y => N_257);
    
    \single_recive_0/data_recive_RNIL7C01[5]\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => N_339, Y => 
        N_646_2);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[140]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[141]\);
    
    \cnt_recive_0_RNIG45U_0[0]\ : OR3A
      port map(A => \cnt_recive_0[0]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[1]_net_1\, Y => 
        N_346);
    
    send_end_RNO_2 : NOR2B
      port map(A => send_end_0_sqmuxa_i_a3_25, B => N_1898_3, Y
         => N_1898);
    
    \cnt_recive_end[4]\ : DFN1C0
      port map(D => cnt_recive_end_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[4]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[157]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[157]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[157]\);
    
    \data_all_RNO[84]\ : OA1B
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_all[84]_net_1\, C => \data_all_4_i_0[84]\, Y => 
        N_169);
    
    \ident_coreinst/IICE_INST/b8_uKr_IFLY/b8_nUTQ_XlK_RNI6U8F\ : 
        NOR3A
      port map(A => \ident_coreinst/IICE_INST/b8_nUTQ_XlK\, B => 
        \ident_coreinst/IICE_comm2iice[3]\, C => 
        \ident_coreinst/IICE_comm2iice[4]\, Y => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b3_PLF_0_iv_0_a2_5tt_m2_e_0\);
    
    \cnt_send_RNO_0[19]\ : AX1
      port map(A => N_71, B => \cnt_send[18]_net_1\, C => 
        \cnt_send[19]_net_1\, Y => cnt_send_n19_tz);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[135]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[134]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[135]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_3\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\);
    
    \data_send_buffer_RNO_20[0]\ : NOR2B
      port map(A => \data_all[24]_net_1\, B => N_1645, Y => 
        \data_send_buffer_3_1_a2_9_0[0]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[32]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[32]_net_1\);
    
    \data_send_buffer_RNO_15[4]\ : AO1
      port map(A => \data_all[132]_net_1\, B => N_925, C => N_513, 
        Y => \data_send_buffer_3_1_0[4]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[117]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[118]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[116]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[117]\);
    
    \data_send_buffer_RNO_7[6]\ : NOR3C
      port map(A => N_889, B => N_1912, C => 
        \data_all[110]_net_1\, Y => N_502);
    
    
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
    
    \cnt_send_RNI5T1FE[28]\ : NOR2A
      port map(A => m77_0_a2_1_0, B => un17_data_send_buffer, Y
         => N_967);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_ack\, CLK
         => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/src_ack_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[80]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[79]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[80]\);
    
    \signal_send_0/end_flag_RNIS4TD1\ : NOR3C
      port map(A => \signal_send_0/cnt_flag_0_sqmuxa_1_net_1\, B
         => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, C => 
        \signal_send_0/cnt_flag_0_sqmuxa_2\, Y => 
        \signal_send_0/cnt_flag_0_sqmuxa\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[39]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[121]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[39]\);
    
    \data_send_buffer_RNO_22[2]\ : AO1
      port map(A => \data_all[90]_net_1\, B => N_1688, C => N_551, 
        Y => \data_send_buffer_3_1_8[2]\);
    
    \signal_send_0/un7_cnt_1_I_18\ : AND3
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[2]\);
    
    \data_all_RNO_0[76]\ : AO1D
      port map(A => \data_all[76]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[76]\);
    
    \data_all_RNO_0[35]\ : AO1A
      port map(A => \data_all[35]_net_1\, B => N_310, C => N_378, 
        Y => \data_all_4_0_i_0[35]\);
    
    send_end_RNO_49 : NOR3A
      port map(A => send_end_0_sqmuxa_i_a3_6, B => 
        \cnt_send[13]_net_1\, C => \cnt_send[14]_net_1\, Y => 
        send_end_0_sqmuxa_i_a3_16);
    
    \data_all[62]\ : DFN1E0C0
      port map(D => N_213, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[62]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_27\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[4]\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/N_3\);
    
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
    
    \cnt_recive_RNO_0[20]\ : OR2A
      port map(A => \cnt_recive[19]_net_1\, B => N_63, Y => N_64);
    
    \data_all_RNO_1[38]\ : NOR2
      port map(A => N_310, B => \data_recive_buffer[6]\, Y => 
        N_1885);
    
    \data_all_RNO_0[44]\ : AO1A
      port map(A => \data_all[44]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[44]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[39]\ : DFN1
      port map(D => \data_all[120]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[39]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[161]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[160]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[161]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_RNI0GM6\ : 
        CLKINT
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_voSc3_gmasbb_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_voSc3\);
    
    send_end_RNO_4 : OR3
      port map(A => send_end_0_sqmuxa_i_8, B => 
        send_end_0_sqmuxa_i_7, C => N_349_i, Y => 
        send_end_0_sqmuxa_i_23);
    
    \data_send_buffer_RNO_22[1]\ : NOR3A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        C => \data_all[89]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_3_0);
    
    \cnt_send[22]\ : DFN1E1C0
      port map(D => cnt_send_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[22]_net_1\);
    
    \signal_send_0/cnt_delay_c1\ : NOR2B
      port map(A => \cnt_delay[0]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => 
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
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[2]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[3]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[2]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[2]\);
    
    \cnt_recive_RNITI6Q[22]\ : NOR2B
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => cnt_recive_c25tt_m3_e_1);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[43]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[117]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[43]\);
    
    \single_recive_0/data_recive_RNIG2C01[0]\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => N_339, Y => 
        N_641_2);
    
    
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
    
    \data_all[151]\ : DFN1E0C0
      port map(D => \data_all_4[151]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[151]_net_1\);
    
    \single_recive_0/data_recive[3]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[3]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[3]\);
    
    \signal_send_0/cnt_RNIHBVJ1_0[4]\ : NOR3B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/tx_uart28_2\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart32_5_0\);
    
    \data_send_buffer_RNO_30[1]\ : NOR3B
      port map(A => N_1680, B => N_1649, C => 
        \data_all[113]_net_1\, Y => N_472);
    
    send_end_RNO_7 : OR3
      port map(A => send_end_0_sqmuxa_i_12, B => 
        send_end_0_sqmuxa_i_11, C => send_end_0_sqmuxa_i_20, Y
         => send_end_0_sqmuxa_i_25);
    
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
    
    \cnt_recive[28]\ : DFN1E0C0
      port map(D => cnt_recive_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[28]_net_1\);
    
    \signal_send_0/cnt_end_RNI6GT42[6]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c5\, B => 
        \signal_send_0/cnt_end[6]_net_1\, Y => 
        \signal_send_0/cnt_end_c6\);
    
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
    
    \data_all_RNO_1[127]\ : NOR2
      port map(A => N_320, B => \data_recive_buffer[7]\, Y => 
        N_1835);
    
    \signal_send_0/cnt_RNISOCR4_1[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart31_6\, B => 
        \signal_send_0/tx_uart31_5\, C => 
        \signal_send_0/tx_uart31_7\, Y => 
        \signal_send_0/tx_uart31\);
    
    \data_send_buffer_RNO_23[6]\ : MX2
      port map(A => \data_all[38]_net_1\, B => 
        \data_all[46]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_519_3);
    
    \data_all[135]\ : DFN1E0C0
      port map(D => N_1609, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[135]_net_1\);
    
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
    
    \data_all_RNO_0[7]\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => N_339, Y => 
        N_648_2);
    
    \cnt_recive_RNO_0[30]\ : NOR3B
      port map(A => \cnt_recive[29]_net_1\, B => cnt_recive_c28, 
        C => N_378, Y => N_1057);
    
    \single_recive_0/data_recive_RNO_1[2]\ : NOR3C
      port map(A => \single_recive_0/N_116_mux\, B => 
        \single_recive_0/m42_4\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_1\);
    
    \data_all_RNO_0[130]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[130]_net_1\, Y => N_633);
    
    \data_send_buffer_RNO_35[1]\ : NOR3A
      port map(A => N_1649, B => N_318, C => \data_all[17]_net_1\, 
        Y => N_489);
    
    \cnt_delay[5]\ : DFN1E1C0
      port map(D => cnt_delay_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[5]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[0]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[160]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b11_OFWNT9L_8tZ[0]\);
    
    \data_send_buffer_RNO_18[5]\ : AO1
      port map(A => \data_all[133]_net_1\, B => N_887, C => 
        m77_0_a3_2_0, Y => m77_0_472_tz_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[5]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[155]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[5]\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[17]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[18]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[16]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[17]\);
    
    \cnt_send_RNIF70Q[11]\ : OR3
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[11]_net_1\, C => \cnt_send[4]_net_1\, Y => 
        un17_data_send_bufferlt30_22_12);
    
    \cnt_recive_RNI9IAS1[5]\ : OR2A
      port map(A => \cnt_recive[5]_net_1\, B => N_1496, Y => 
        N_1499);
    
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
    
    \data_all_RNO_0[26]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_26_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[26]\);
    
    \data_all_RNO_0[30]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_0_a3_0_30_m1_e_1, 
        C => N_378, Y => \data_all_4_i_0_0[30]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[89]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[71]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[89]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[24]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[23]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[24]\);
    
    \data_send_buffer_RNO_25[0]\ : MX2
      port map(A => \data_all[144]_net_1\, B => 
        \data_all[152]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_625_3);
    
    \data_all_RNO_0[156]\ : NOR2A
      port map(A => N_1739, B => \data_all[156]_net_1\, Y => 
        N_583);
    
    \data_all[80]\ : DFN1E0C0
      port map(D => N_177, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[80]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[153]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[7]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[84]\ : DFN1
      port map(D => \data_all[75]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[84]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[159]\ : DFN1
      port map(D => \data_all[0]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[159]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/genblk1.b3_nfs[3]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b11_nUTGT_khWqH/b10_nfs_M9kYfr[3]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[8]\, E => 
        \ident_coreinst/IICE_INST/b7_nUTQ_9u\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[3]\);
    
    \cnt_recive_RNI10871[21]\ : NOR3C
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[21]_net_1\, C => \cnt_recive[18]_net_1\, Y
         => cnt_recive_n22_0_o4_m4_0_a2_2_3);
    
    \single_recive_0/data_recive_RNO_1[5]\ : NOR3C
      port map(A => \single_recive_0/m76_6\, B => 
        \single_recive_0/m76_7\, C => rx_uart_c, Y => 
        \single_recive_0/rx_uart_m_4\);
    
    \cnt_recive_end_RNI3J7I[1]\ : NOR3C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_c2);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[108]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[109]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[30]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[29]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[30]\);
    
    \data_all_RNO_1[26]\ : NOR3
      port map(A => \cnt_recive_0[3]_net_1\, B => 
        \data_recive_buffer[2]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_26_m1_e_1);
    
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
    
    \data_send_buffer_RNO_1[7]\ : OR3
      port map(A => \data_send_buffer_RNO_4[7]_net_1\, B => 
        m62_0_0, C => m62_0_4, Y => m62_0_2);
    
    \data_all_RNO_1[122]\ : NOR2B
      port map(A => N_911, B => \data_recive_buffer[2]\, Y => 
        N_654);
    
    \signal_send_0/cnt[2]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[2]_net_1\);
    
    \data_all_RNO_0[48]\ : NOR2B
      port map(A => m30_1, B => N_142, Y => \un52_data_all[48]\);
    
    \data_all_RNO[156]\ : NOR3
      port map(A => N_583, B => N_378, C => N_584, Y => N_1589);
    
    \data_all_RNO[145]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_314, C => 
        \data_all_4_i_0_0[145]\, Y => N_1599);
    
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
    
    \cnt_send_RNI2PEI[25]\ : NOR3C
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_send[25]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        cnt_send_c25_m6_0_a2_4);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[24]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[24]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[24]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[60]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[59]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[60]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[1]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[2]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[0]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[1]\);
    
    \data_all_RNO[142]\ : NOR3
      port map(A => N_1849, B => N_378, C => N_1850, Y => N_1602);
    
    \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_RNIP5P9\ : 
        NOR2B
      port map(A => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        B => \ident_coreinst/IICE_INST/b5_iSWcC\, Y => 
        \ident_coreinst/IICE_INST/b13_PSyil9s_FMZ_L_2\);
    
    \data_all_RNO_0[104]\ : NOR2A
      port map(A => \data_all[104]_net_1\, B => N_1713, Y => 
        N_687);
    
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
    
    \data_all_RNO[120]\ : NOR3
      port map(A => N_1830, B => N_378, C => N_1831, Y => N_1725);
    
    \cnt_recive_RNO_0[27]\ : NOR2B
      port map(A => cnt_recive_c25, B => \cnt_recive[26]_net_1\, 
        Y => cnt_recive_c26);
    
    \signal_send_0/vld_send_down_RNIL7KK\ : NOR2A
      port map(A => \signal_send_0/vld_send_down_net_1\, B => 
        idle_send, Y => \signal_send_0/un2_vld_send_down\);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[128]\ : DFN1
      port map(D => \data_all[31]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[128]_net_1\);
    
    \cnt_recive[7]\ : DFN1E0C0
      port map(D => N_28, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[7]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[133]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[133]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[133]\);
    
    \data_send_buffer_RNO_22[3]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_17_1[3]\, B => 
        \data_send_buffer_3_1_a2_0[3]\, C => 
        un17_data_send_buffer, Y => N_523);
    
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
    
    \data_send_buffer_RNO_12[5]\ : AO1
      port map(A => \data_all[37]_net_1\, B => N_887, C => 
        m77_0_a3_10_0, Y => m77_0_474_tz_0);
    
    \data_all_RNO_0[71]\ : AO1A
      port map(A => N_344_0, B => data_all_4_i_a2_0_71_m1_e_1, C
         => N_378, Y => \data_all_4_i_0[71]\);
    
    
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
    
    \data_all_RNO_0[55]\ : AO1D
      port map(A => \data_all[55]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[55]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[40]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[39]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[40]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[30]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[30]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[30]\);
    
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
    
    \cnt_recive_RNO[9]\ : NOR3A
      port map(A => N_54, B => N_1521, C => N_378, Y => N_24);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[113]\ : DFN1
      port map(D => \data_all[46]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[113]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/b13_nvmFL_fx2rbuQ_RNI56V11_0[2]\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_comm2iice[4]\, B => 
        \ident_coreinst/IICE_INST/b8_uKr_IFLY/N_42\, C => 
        \ident_coreinst/IICE_comm2iice[3]\, Y => 
        \ident_coreinst/IICE_INST/b9_OFWNT9_ab\);
    
    \data_all_RNO[77]\ : OA1C
      port map(A => data_all_4_i_o3_79_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0[77]\, Y => 
        N_183);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[125]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[126]\);
    
    \data_all_RNO_2[119]\ : NOR3A
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \data_recive_buffer[7]\, C => m90_i_o2_out, Y => 
        m90_i_a3_0_m1_e_1);
    
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
    
    \cnt_send_RNO_0[24]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_4, B => 
        cnt_send_n17_i_o4_m5_0_a2_6, C => 
        cnt_send_n24_tz_m4_0_a2_5, Y => cnt_send_n24_tz_N_10_mux);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[83]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[84]\);
    
    \signal_send_0/un7_cnt_1_I_14\ : XOR2
      port map(A => \signal_send_0/N_8\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => \signal_send_0/I_14_0\);
    
    \data_send_buffer_RNO_34[1]\ : NOR2
      port map(A => \data_all[9]_net_1\, B => N_318, Y => 
        un38_data_send_buffer_968_i_a2_13_0);
    
    \signal_send_0/cnt_RNIE8VJ1[1]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_1\, Y => 
        \signal_send_0/tx_uart30_5\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[133]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[27]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[133]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[63]\ : DFN1
      port map(D => \data_all[96]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[63]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[97]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[97]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[97]\);
    
    send_end_RNO_0 : OR3
      port map(A => send_end_0_sqmuxa_i_24, B => 
        send_end_0_sqmuxa_i_23, C => N_378, Y => 
        send_end_0_sqmuxa_i_29);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[52]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[51]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[52]\);
    
    \cnt_send_RNIFH9N1[20]\ : OR3
      port map(A => un17_data_send_bufferlt30_22_9, B => 
        un17_data_send_bufferlt30_22_8, C => 
        un17_data_send_bufferlt30_22_17, Y => 
        un17_data_send_bufferlt30_22_20);
    
    \signal_send_0/cnt_RNIBOVP[4]\ : NOR2
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart27_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[124]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[123]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[124]\);
    
    \data_all_RNO_0[72]\ : AO1D
      port map(A => \data_all[72]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[72]\);
    
    \signal_send_0/vld_send_down_RNO\ : NOR2B
      port map(A => \signal_send_0/vld_send_fall_i_0\, B => 
        \vld_send\, Y => \signal_send_0/vld_send_down_1\);
    
    \data_all_RNO[137]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_306, C => 
        \data_all_4_i_0_0[137]\, Y => N_1607);
    
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
    
    \signal_send_0/cnt_end[8]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n8\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[8]_net_1\);
    
    \data_send_buffer[1]\ : DFN1E0C0
      port map(D => N_1716, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[1]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_10\ : AND3
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[0]\);
    
    \data_all_RNO_0[21]\ : AO1D
      port map(A => \data_all[21]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[21]\);
    
    \cnt_recive_RNO_0[16]\ : AX1C
      port map(A => \cnt_recive[15]_net_1\, B => N_59_i, C => 
        \cnt_recive[16]_net_1\, Y => cnt_recive_n16_tz);
    
    \data_all_RNO[98]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_312, C => 
        \data_all_4_0_i_0[98]\, Y => N_262);
    
    \data_all_RNO_1[151]\ : NOR3B
      port map(A => \data_recive_buffer[7]\, B => m85_2, C => 
        \cnt_recive_0[2]_net_1\, Y => N_148_mux);
    
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
    
    \cnt_send_RNO[16]\ : OA1C
      port map(A => N_68, B => \cnt_send[16]_net_1\, C => 
        cnt_send_n16_i_0, Y => N_43);
    
    \data_all_RNO_0[50]\ : AO1D
      port map(A => \data_all[50]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[50]\);
    
    send_end_RNO_34 : XOR2
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => un12_cnt_send_24);
    
    \data_all_RNO[62]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_63_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0[62]\, Y => 
        N_213);
    
    \signal_send_0/parity_check_RNO_9\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[7]_net_1\, C => 
        \signal_send_0/tx_uart35\, Y => 
        \signal_send_0/parity_check_8_i_m\);
    
    \data_all[159]\ : DFN1E0C0
      port map(D => N_1586, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[159]_net_1\);
    
    send_end_RNO_33 : XOR2
      port map(A => \cnt_recive[15]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => N_75_i);
    
    \cnt_recive_0_RNIA4PGB[3]\ : NOR3
      port map(A => N_346, B => \cnt_recive_0[3]_net_1\, C => 
        N_344_0, Y => data_all_4_i_o3_i_o2_15_N_3_mux);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[23]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[22]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[23]\);
    
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
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[2]\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3_ns[2]\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF_0[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_iSWcC\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[149]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[148]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[149]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[92]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[93]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[91]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[92]\);
    
    \cnt_recive_RNIP11O1[5]\ : OR3A
      port map(A => un5_idle_recive_10, B => 
        \cnt_recive[5]_net_1\, C => \cnt_recive[7]_net_1\, Y => 
        OVER_12_6);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[109]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[51]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[109]\);
    
    \data_all[121]\ : DFN1E0C0
      port map(D => \data_all_4[121]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[121]_net_1\);
    
    \data_send_buffer_RNO[1]\ : NOR3
      port map(A => m81_i_1, B => N_397, C => m81_i_2, Y => 
        N_1716);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d\ : 
        DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[1]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\);
    
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
    
    \signal_send_0/idle_send\ : DFN1E0C0
      port map(D => \signal_send_0/un1_tx_uart42\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/tx_uart_11_sqmuxa\, Q => idle_send);
    
    \cnt_send_RNO_0[30]\ : NOR2A
      port map(A => \cnt_send[29]_net_1\, B => N_378, Y => 
        cnt_send_107_0);
    
    \data_all_RNO[116]\ : OA1C
      port map(A => m90_i_o2_N_3_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_0_i_0[116]\, Y
         => N_1722);
    
    \data_all[56]\ : DFN1E0C0
      port map(D => N_225, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[56]_net_1\);
    
    \data_send_buffer_RNO_9[0]\ : NOR3C
      port map(A => N_1649, B => N_1658, C => 
        \data_all[80]_net_1\, Y => N_569);
    
    \cnt_send_RNIKVI25[14]\ : OR2B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, Y
         => N_66);
    
    \data_all_RNO_1[119]\ : NOR2
      port map(A => \data_all[119]_net_1\, B => m90_i_o2_N_3_mux, 
        Y => N_390);
    
    \signal_send_0/un7_cnt_1_I_15\ : AND2
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[1]\);
    
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
    
    \data_all_RNO[66]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_643_2, C
         => \data_all_4_i_0[66]\, Y => N_205);
    
    \data_send_buffer_RNO_16[5]\ : NOR3B
      port map(A => \cnt_send_1[0]_net_1\, B => 
        \data_all[109]_net_1\, C => \cnt_send[1]_net_1\, Y => 
        m77_0_a3_8_0);
    
    
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
    
    \data_all_RNO[93]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0_0[93]\, Y
         => N_151);
    
    \data_all_RNO_0[22]\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => 
        \cnt_recive[0]_net_1\, Y => N_388);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[34]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[33]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[34]\);
    
    \cnt_send_RNISJS72[1]\ : NOR3C
      port map(A => cnt_send_n17_i_o4_m5_0_a2_2, B => 
        \cnt_send[1]_net_1\, C => cnt_send_n17_i_o4_m5_0_a2_5, Y
         => cnt_send_n17_i_o4_m5_0_a2_6);
    
    \data_send_buffer_RNO_21[6]\ : MX2
      port map(A => \data_all[6]_net_1\, B => 
        \data_all[14]_net_1\, S => \cnt_send_1[0]_net_1\, Y => 
        N_487_3);
    
    \single_recive_0/cnt_RNI6RCI_0[2]\ : NOR2A
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/m42_0\);
    
    \data_all_RNO[143]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => N_306, C => 
        \data_all_4_i_0_0[143]\, Y => N_1601);
    
    \signal_send_0/cnt_RNILFVJ1[4]\ : NOR3A
      port map(A => \signal_send_0/tx_uart29_1\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart31_6\);
    
    send_end_RNO_9 : XO1
      port map(A => \cnt_recive[19]_net_1\, B => 
        \cnt_send[19]_net_1\, C => un12_cnt_send_18, Y => 
        send_end_0_sqmuxa_i_10);
    
    \tx_uart_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => tx_uart_c, E => \VCC\, DOUT => 
        \tx_uart_pad/U0/NET1\, EOUT => \tx_uart_pad/U0/NET2\);
    
    \cnt_recive_0_RNIFO574[2]\ : NOR3A
      port map(A => data_all_4_i_o3_i_o2_0_100_m2_e_2, B => 
        OVER_11_0, C => OVER_11_1, Y => 
        data_all_4_i_o3_i_o2_0_100_m2_e_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[138]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[138]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[138]\);
    
    \cnt_recive_RNO[22]\ : XA1B
      port map(A => \cnt_recive[22]_net_1\, B => N_67_i, C => 
        N_378, Y => cnt_recive_n22);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[78]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[82]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[78]\);
    
    \data_send_buffer_RNO_5[2]\ : AO1
      port map(A => \data_all[146]_net_1\, B => N_927, C => N_542, 
        Y => \data_send_buffer_3_1_6[2]\);
    
    \signal_send_0/cnt_end_RNIM6MJ[3]\ : NOR2A
      port map(A => \signal_send_0/cnt_end[3]_net_1\, B => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/un6_end_flag_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[69]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[91]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[69]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[6]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[154]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[6]\);
    
    \data_all_RNO_1[22]\ : AO1D
      port map(A => \data_all[22]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[22]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[8]\ : DFN1
      port map(D => \data_all[151]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[8]_net_1\);
    
    \cnt_flag[2]\ : DFN1E1C0
      port map(D => cnt_flag_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_flage, Q => \cnt_flag[2]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[64]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[63]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[64]\);
    
    \data_send_buffer_RNO_9[5]\ : NOR2B
      port map(A => \data_all[13]_net_1\, B => N_889, Y => 
        m77_0_a3_16_0);
    
    
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_RNI9DMF\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dst_req_d_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/iclksync/dout4\);
    
    \data_all_RNO[47]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => N_1736, C => 
        \data_all_4_i_0_0[47]\, Y => N_243);
    
    \data_all[14]\ : DFN1E0C0
      port map(D => N_295, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[14]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[76]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[77]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[75]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[76]\);
    
    \data_all_RNO[148]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => N_314, C => 
        \data_all_4_i_0_0[148]\, Y => N_1596);
    
    \data_all_RNO_0[107]\ : NOR2A
      port map(A => \data_all[107]_net_1\, B => N_1713, Y => 
        N_681);
    
    \data_send_buffer_RNO_4[4]\ : OR3
      port map(A => N_519, B => N_520, C => N_505, Y => 
        \data_send_buffer_3_1_9[4]\);
    
    \cnt_recive[4]\ : DFN1E0C0
      port map(D => N_34, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[4]_net_1\);
    
    \data_send_buffer_RNO_24[3]\ : NOR2B
      port map(A => \data_all[3]_net_1\, B => N_140_mux, Y => 
        \data_send_buffer_3_1_a2_0[3]\);
    
    
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
    
    \cnt_recive_RNIA2EH[0]\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => 
        \cnt_recive[0]_net_1\, Y => N_386);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[67]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[67]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[67]\);
    
    \data_all_RNO_1[124]\ : NOR3A
      port map(A => \data_all[124]_net_1\, B => N_378, C => 
        \cnt_recive_RNICR3EC_0[2]_net_1\, Y => N_649);
    
    \cnt_recive_RNIH7LQ6[5]\ : OR3
      port map(A => OVER_12_6, B => OVER_12_5, C => OVER_12_7, Y
         => OVER_12);
    
    \single_recive_0/un7_cnt_1_I_23\ : XOR2
      port map(A => \single_recive_0/N_5\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/I_23\);
    
    \data_send_buffer_RNO_16[7]\ : AO1
      port map(A => \data_all[55]_net_1\, B => N_1649, C => 
        m62_0_a3_8_0, Y => m62_0_4_tz_1);
    
    \data_all[76]\ : DFN1E0C0
      port map(D => N_185, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[76]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[73]\ : DFN1
      port map(D => \data_all[86]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[73]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[80]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[81]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[79]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[80]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[83]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[82]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[83]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[96]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[97]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[95]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[96]\);
    
    \signal_send_0/cnt_end[3]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n3\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[3]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[44]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[43]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[44]\);
    
    \cnt_recive_end[8]\ : DFN1C0
      port map(D => cnt_recive_end_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto8);
    
    \data_all_RNO[25]\ : OA1C
      port map(A => N_308, B => \data_all[25]_net_1\, C => 
        \data_all_4_i_0_0[25]\, Y => N_273);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[156]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[157]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[155]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[156]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[105]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[104]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[105]\);
    
    \data_send_buffer_RNO_10[4]\ : NOR3C
      port map(A => N_889, B => N_1660, C => \data_all[44]_net_1\, 
        Y => N_520);
    
    send_end_RNO_11 : XOR2
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => N_352_i);
    
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9_RNO[5]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[6]\, 
        B => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_FZFFLXYE[1]_net_1\, S
         => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[5]\);
    
    \cnt_recive_RNITG4Q[14]\ : NOR2
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[14]_net_1\, Y => un5_idle_recive_9);
    
    \data_all_RNO[106]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[2]\, C => 
        N_683, Y => \data_all_4[106]\);
    
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
    
    \cnt_recive_RNI6F1O1[9]\ : OR3A
      port map(A => un5_idle_recive_8, B => \cnt_recive[8]_net_1\, 
        C => \cnt_recive[9]_net_1\, Y => OVER_12_5);
    
    \data_send_buffer_RNO_21[3]\ : NOR2B
      port map(A => \data_all[115]_net_1\, B => N_1675, Y => 
        N_530);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[67]\ : DFN1
      port map(D => \data_all[92]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[67]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[7]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[6]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[7]\);
    
    \data_all_RNO_0[116]\ : AO1D
      port map(A => \data_all[116]_net_1\, B => m90_i_o2_N_3_mux, 
        C => N_378, Y => \data_all_4_0_i_0[116]\);
    
    
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
    
    \cnt_send_1[0]\ : DFN1E1C0
      port map(D => N_24_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send_1[0]_net_1\);
    
    \signal_send_0/parity_check_RNO_12\ : XOR2
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_4\);
    
    \data_send_buffer_RNO_16[2]\ : NOR2B
      port map(A => \data_all[2]_net_1\, B => N_887, Y => 
        \data_send_buffer_3_1_a2_19_0[2]\);
    
    \cnt_recive_RNI7V4M1[10]\ : NOR3C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[9]_net_1\, C => 
        cnt_recive_c14_0_o4_m6_0_a2_4_1, Y => 
        cnt_recive_c14_0_o4_m6_0_a2_4_5);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk9.b7_nYJ_BFM8_i\ : 
        OR2B
      port map(A => \ident_coreinst/IICE_INST/b9_OFWNT9_ab\, B
         => \ident_coreinst/IICE_comm2iice[10]\, Y => 
        \genblk9.b7_nYJ_BFM8_i\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[127]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[127]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_1\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[127]\);
    
    \signal_send_0/cnt_RNIJDVJ1[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/tx_uart28_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart28_3\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[109]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[109]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[109]\);
    
    \cnt_recive_RNIA4PGB_0[3]\ : OR3
      port map(A => \cnt_recive[3]_net_1\, B => N_292, C => N_344, 
        Y => N_308);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[25]\ : DFN1
      port map(D => \data_all[134]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[25]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[27]\ : DFN1
      port map(D => \data_all[132]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[27]_net_1\);
    
    \signal_send_0/cnt_delay_n7\ : XA1B
      port map(A => \signal_send_0/cnt_delay_35_0_net_1\, B => 
        \cnt_delay[7]_net_1\, C => N_378, Y => cnt_delay_n7);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[18]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_comm2iice[7]\, B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[18]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[18]\);
    
    receive_end : DFN1E0C0
      port map(D => \AFLSDF_INV_0\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => receive_end_1_sqmuxa, Q => \receive_end\);
    
    \signal_send_0/tx_uart_RNO_5\ : AO1
      port map(A => \data_send_buffer[4]_net_1\, B => 
        \signal_send_0/tx_uart32\, C => 
        \signal_send_0/parity_check_m\, Y => 
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[41]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[41]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[41]\);
    
    \data_all_RNO[151]\ : NOR2A
      port map(A => N_1699, B => N_378, Y => \data_all_4[151]\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[92]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[91]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[92]\);
    
    un19_data_send_buffer_1_I_17 : AX1A
      port map(A => \cnt_send[2]_net_1\, B => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[1]\, C => 
        \cnt_send[3]_net_1\, Y => I_17_1);
    
    send_end_RNO : NOR3
      port map(A => send_end_0_sqmuxa_i_29, B => 
        send_end_0_sqmuxa_i_28, C => N_1898, Y => \send_end_RNO\);
    
    \data_all[94]\ : DFN1E0C0
      port map(D => N_149, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[94]_net_1\);
    
    \data_all_RNO_0[14]\ : AO1D
      port map(A => \data_all[14]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[14]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[40]\ : DFN1
      port map(D => \data_all[119]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[40]_net_1\);
    
    \data_all[59]\ : DFN1E0C0
      port map(D => N_219, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[59]_net_1\);
    
    
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
    
    \cnt_send_RNO_2[24]\ : NOR2B
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => cnt_send_n24_tz_m4_0_a2_1);
    
    \data_all_RNO_0[93]\ : AO1D
      port map(A => \data_all[93]_net_1\, B => 
        data_all_4_i_0_o2_88_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[93]\);
    
    \signal_send_0/cnt_RNI6JVP[1]\ : NOR2A
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart33_2\);
    
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
    
    \data_all_RNO[55]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0_0[55]\, Y
         => N_227);
    
    send_end_RNO_6 : OR3
      port map(A => send_end_0_sqmuxa_i_1, B => 
        send_end_0_sqmuxa_i_0, C => send_end_0_sqmuxa_i_14, Y => 
        send_end_0_sqmuxa_i_21);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[33]\ : DFN1
      port map(D => \data_all[126]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[33]_net_1\);
    
    \cnt_recive_RNO[28]\ : XA1B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        C => N_378, Y => cnt_recive_n28);
    
    send_end_RNO_8 : NOR3C
      port map(A => send_end_0_sqmuxa_i_a3_22, B => 
        send_end_0_sqmuxa_i_a3_21, C => send_end_0_sqmuxa_i_a3_23, 
        Y => send_end_0_sqmuxa_i_a3_25);
    
    \data_all[26]\ : DFN1E0C0
      port map(D => N_271, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[26]_net_1\);
    
    \data_all_RNO_0[99]\ : AO1A
      port map(A => \data_all[99]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[99]\);
    
    \single_recive_0/cnt_RNI6RCI[2]\ : NOR2B
      port map(A => \single_recive_0/cnt[11]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/m99_0\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[50]\ : DFN1
      port map(D => \data_all[109]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[50]_net_1\);
    
    \data_all_RNO[88]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0_0[88]\, Y
         => N_161);
    
    \signal_send_0/tx_uart_RNO_8\ : NOR2B
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_m\);
    
    \cnt_send_RNIOI3O7[27]\ : NOR3C
      port map(A => \cnt_send[26]_net_1\, B => cnt_send_c25, C
         => \cnt_send[27]_net_1\, Y => cnt_send_c27);
    
    \data_send_buffer_3_1_7_RNO_0[4]\ : NOR3C
      port map(A => N_889, B => N_1658, C => \data_all[76]_net_1\, 
        Y => N_516);
    
    \single_recive_0/cnt_RNIMS0I_0[4]\ : NOR2A
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m23_4\);
    
    \data_send_buffer_RNO_15[7]\ : AO1
      port map(A => \data_all[39]_net_1\, B => N_887, C => 
        m62_0_a3_10_0, Y => m62_0_4_tz_0);
    
    \data_all_RNO_0[8]\ : AO1D
      port map(A => \data_all[8]_net_1\, B => 
        data_all_4_i_o3_i_o2_15_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[8]\);
    
    \data_send_buffer_RNO_15[5]\ : NOR3B
      port map(A => \cnt_send[1]_net_1\, B => 
        \data_all[117]_net_1\, C => \cnt_send_1[0]_net_1\, Y => 
        m77_0_a3_7_0);
    
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
    
    \data_all_RNO_0[87]\ : AO1D
      port map(A => \data_all[87]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[87]\);
    
    \cnt_send[1]\ : DFN1E1C0
      port map(D => N_115, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende, Q => \cnt_send[1]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[33]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[32]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[33]\);
    
    \signal_send_0/cnt_RNIEVMJ1_0[11]\ : NOR3A
      port map(A => \signal_send_0/tx_uart32_5\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart32_6_0\);
    
    \cnt_send_RNO[19]\ : NOR2A
      port map(A => cnt_send_n19_tz, B => N_378, Y => 
        cnt_send_n19);
    
    \signal_send_0/cnt[0]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[0]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[145]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[15]\);
    
    \data_all[129]\ : DFN1E0C0
      port map(D => N_120, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[129]_net_1\);
    
    \cnt_send_RNIQ5HR[9]\ : OR2
      port map(A => \cnt_send[5]_net_1\, B => \cnt_send[9]_net_1\, 
        Y => un17_data_send_bufferlt30_22_7);
    
    \cnt_send[5]\ : DFN1E1C0
      port map(D => N_1489, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[5]_net_1\);
    
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
    
    \cnt_recive_0_RNIA4PGB[2]\ : NOR2A
      port map(A => data_all_4_i_o3_i_o2_63_m1_e_0, B => N_344, Y
         => data_all_4_i_o3_i_o2_63_N_3_mux);
    
    \cnt_send_RNIRMBM1_0[28]\ : NOR3B
      port map(A => m77_0_a2_3_0, B => N_1680, C => N_378, Y => 
        N_1912);
    
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
    
    \data_all_RNO[69]\ : OA1C
      port map(A => data_all_4_i_o3_71_N_3_mux, B => N_646_2, C
         => \data_all_4_i_0[69]\, Y => N_199);
    
    \data_send_buffer_RNO_18[1]\ : AO1
      port map(A => un38_data_send_buffer_968_i_a2_5_0, B => 
        N_889, C => N_476, Y => un38_data_send_buffer_968_i_1);
    
    \signal_send_0/un7_cnt_1_I_21\ : AND2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[3]\);
    
    send_end_RNO_18 : XO1
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_recive[27]_net_1\, C => un12_cnt_send_25, Y => 
        send_end_0_sqmuxa_i_1);
    
    \data_all[147]\ : DFN1E0C0
      port map(D => N_1597, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[147]_net_1\);
    
    \data_send_buffer_RNO_18[2]\ : NOR3C
      port map(A => N_889, B => N_1660, C => \data_all[42]_net_1\, 
        Y => N_556);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[15]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[15]_net_1\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[136]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[24]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[136]\);
    
    \signal_send_0/cnt_delay_n2\ : XA1B
      port map(A => \signal_send_0/cnt_delay_c1_net_1\, B => 
        \cnt_delay[2]_net_1\, C => N_378, Y => cnt_delay_n2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[63]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[62]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[63]\);
    
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
    
    \cnt_send_RNO_0[13]\ : AX1C
      port map(A => \cnt_send[12]_net_1\, B => cnt_send_c11, C
         => \cnt_send[13]_net_1\, Y => cnt_send_n13_tz);
    
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
    
    \cnt_send_RNIMP8C[20]\ : OR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[20]_net_1\, Y => un17_data_send_bufferlt30_22_9);
    
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
    
    \data_all_RNO[90]\ : OA1C
      port map(A => data_all_4_i_0_o2_88_N_3_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0_0[90]\, Y
         => N_157);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO[1]\ : NOR2A
      port map(A => \ident_coreinst/IICE_INST/b5_nUTGT/N_90\, B
         => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b13_nAzGfFM_sLsv3[0]_net_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_5[1]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[43]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[42]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[43]\);
    
    \data_all_RNO[83]\ : OA1B
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_all[83]_net_1\, C => \data_all_4_i_0[83]\, Y => 
        N_171);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[145]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[144]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[145]\);
    
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
    
    \cnt_recive_RNIRG6Q[21]\ : NOR2
      port map(A => \cnt_recive[21]_net_1\, B => 
        \cnt_recive[22]_net_1\, Y => un5_idle_recive_5);
    
    \signal_send_0/end_flag_RNIQ5EB\ : NOR2A
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        \cnt_flag[0]_net_1\, Y => 
        \signal_send_0/cnt_flag_0_sqmuxa_2\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[8]\ : DFN1E1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_5\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[8]\);
    
    \single_recive_0/data_recive_RNIH3C01[1]\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => N_339, Y => 
        N_642_2);
    
    \data_all_RNO_0[46]\ : NOR2A
      port map(A => N_1736, B => \data_all[46]_net_1\, Y => 
        N_1773);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[1]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/tdo_sig\);
    
    \data_all_RNO_0[139]\ : NOR2A
      port map(A => N_306, B => \data_all[139]_net_1\, Y => 
        N_1842);
    
    \data_all_RNO_0[18]\ : AO1D
      port map(A => \data_all[18]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[18]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[59]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[58]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[59]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO_0[31]_net_1\, 
        Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[31]_net_1\);
    
    
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
    
    \cnt_recive_end_RNIAQCU[4]\ : NOR2B
      port map(A => cnt_recive_end_c3, B => 
        \cnt_recive_end[4]_net_1\, Y => cnt_recive_end_c4);
    
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
    
    \data_send_buffer_RNO_3[7]\ : OA1
      port map(A => m62_0_a3_3_0, B => m62_0_a3_14_0, C => N_1662, 
        Y => \data_send_buffer_RNO_3[7]_net_1\);
    
    \cnt_recive_0_RNIA4PGB[0]\ : OR2A
      port map(A => N_437, B => N_292, Y => N_1739);
    
    \data_send_buffer_RNO_12[6]\ : NOR3C
      port map(A => N_1645, B => N_1912, C => 
        \data_all[126]_net_1\, Y => N_500);
    
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
    
    \data_all_RNO_0[154]\ : NOR2A
      port map(A => N_1739, B => \data_all[154]_net_1\, Y => 
        N_587);
    
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
    
    \cnt_send_RNIAITJ[28]\ : NOR2A
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => m77_0_a2_0);
    
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
    
    \data_send_buffer_RNO_33[1]\ : AO1
      port map(A => un38_data_send_buffer_968_i_a2_13_0, B => 
        N_889, C => N_489, Y => un38_data_send_buffer_968_i_3);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[86]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[86]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[86]\);
    
    \signal_send_0/cnt_end[7]\ : DFN1E1C0
      port map(D => \signal_send_0/cnt_end_n7\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/cnt_ende\, Q => 
        \signal_send_0/cnt_end[7]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[125]\ : DFN1
      port map(D => \data_all[34]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[125]_net_1\);
    
    \data_all_RNO_1[31]\ : NOR3
      port map(A => \cnt_recive[3]_net_1\, B => 
        \data_recive_buffer[7]\, C => N_292, Y => 
        data_all_4_i_0_a3_0_31_m1_e_1);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[165]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[164]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[165]\);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[26]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[26]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[26]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[53]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[54]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[52]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[53]\);
    
    \data_all_RNO[111]\ : OA1B
      port map(A => \data_recive_buffer[7]\, B => N_337, C => 
        \data_all_4_0_i_0[111]\, Y => N_1717);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[72]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[71]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[72]\);
    
    \data_all[133]\ : DFN1E0C0
      port map(D => N_1611, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[133]_net_1\);
    
    \data_all_RNO_0[146]\ : AO1A
      port map(A => \data_all[146]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[146]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2\ : DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_net_1\);
    
    \cnt_recive_RNO_0[4]\ : AX1A
      port map(A => N_1491, B => \cnt_recive_0[3]_net_1\, C => 
        \cnt_recive[4]_net_1\, Y => N_83_i);
    
    \cnt_recive[13]\ : DFN1E0C0
      port map(D => cnt_recive_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[13]_net_1\);
    
    \data_send_buffer_RNO_5[6]\ : AO1
      port map(A => \data_all[118]_net_1\, B => N_1675, C => 
        N_500, Y => \data_send_buffer_3_1_3[6]\);
    
    
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
    
    \data_all_RNO[150]\ : OA1B
      port map(A => \data_recive_buffer[6]\, B => N_314, C => 
        \data_all_4_i_0_0[150]\, Y => N_1594);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[93]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[67]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[93]\);
    
    \data_all[144]\ : DFN1E0C0
      port map(D => N_1600, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[144]_net_1\);
    
    \data_all_RNO[32]\ : NOR3
      port map(A => N_1873, B => N_378, C => N_1874, Y => N_234);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b9_v_mzCDYXs[2]\ : 
        DFN1C1
      port map(D => \ident_coreinst/IICE_INST/b3_SoW/I_14_1\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b9_v_mzCDYXs[2]\);
    
    \single_recive_0/un7_cnt_1_I_16\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[1]\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_7\);
    
    \data_send_buffer_RNO_24[7]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \data_all[63]_net_1\, Y => 
        m62_0_a3_8_0);
    
    \data_send_buffer_RNO[0]\ : OR3
      port map(A => \data_send_buffer_3_1_7_0[0]\, B => 
        \data_send_buffer_3_1_6[0]\, C => 
        \data_send_buffer_3_1_8[0]\, Y => \data_send_buffer_3[0]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[6]\ : DFN1
      port map(D => \data_all[153]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[6]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[32]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[32]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[32]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[12]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[148]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[12]\);
    
    \cnt_send[18]\ : DFN1E1C0
      port map(D => N_39, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[18]_net_1\);
    
    \cnt_send_RNIGH991[6]\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[5]_net_1\, 
        C => \cnt_send[3]_net_1\, Y => cnt_send_c11_m6_0_a2_4_5);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[57]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[56]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[57]\);
    
    \cnt_send[16]\ : DFN1E1C0
      port map(D => N_43, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_sende_0, Q => \cnt_send[16]_net_1\);
    
    
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
    
    \cnt_recive_RNIENOR1[2]\ : OR3B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => N_46, Y => 
        data_all_4_0_a2_1_i_o2_out);
    
    \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_RNIK43C\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b20_i2WM2X_F8tsl_Ae1cdJ4_net_1\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b9_PSyil9s_2_net_1\, 
        Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa_0\);
    
    \data_send_buffer_RNO_1[1]\ : NOR3B
      port map(A => N_889, B => N_1917, C => 
        \data_all[137]_net_1\, Y => N_397);
    
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
    
    \cnt_send_RNI877M3[8]\ : OR2B
      port map(A => cnt_send_n8_i_o3_N_9_mux, B => 
        \cnt_send[8]_net_1\, Y => N_1504);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[35]\ : DFN1
      port map(D => \data_all[124]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[35]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[37]\ : DFN1
      port map(D => \data_all[122]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[37]_net_1\);
    
    send_end_RNO_36 : XOR2
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_send[25]_net_1\, Y => un12_cnt_send_25);
    
    \data_send_buffer_RNO_7[0]\ : AO1
      port map(A => N_451, B => N_1659, C => N_567, Y => 
        \data_send_buffer_3_1_0[0]\);
    
    \cnt_recive_RNIVBAF1[2]\ : NOR3A
      port map(A => \data_recive_buffer[3]\, B => 
        \cnt_recive[2]_net_1\, C => N_339, Y => N_804_2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[93]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[93]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[93]\);
    
    un19_data_send_buffer_1_I_18 : NOR3
      port map(A => \cnt_send[1]_net_1\, B => 
        \cnt_send_1[0]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \un19_data_send_buffer_1.U1.DWACT_FINC_E[2]\);
    
    \data_send_buffer_RNO_16[3]\ : NOR3B
      port map(A => \data_send_buffer_3_1_a2_10_3[6]\, B => 
        \data_all[99]_net_1\, C => N_378, Y => N_532);
    
    \data_all[81]\ : DFN1E0C0
      port map(D => N_175, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[81]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[14]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[14]_net_1\);
    
    \data_all_RNO_1[32]\ : NOR2
      port map(A => N_310, B => \data_recive_buffer[0]\, Y => 
        N_1874);
    
    \signal_send_0/parity_check_RNO_6\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[2]_net_1\, C => 
        \signal_send_0/tx_uart30\, Y => 
        \signal_send_0/parity_check_3_i_m\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[80]\ : DFN1
      port map(D => \data_all[79]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[80]_net_1\);
    
    \cnt_send_RNO[9]\ : XA1C
      port map(A => \cnt_send[9]_net_1\, B => N_1504, C => N_378, 
        Y => cnt_send_n9);
    
    \single_recive_0/idle_recive_RNISA95D\ : AOI1B
      port map(A => un5_idle_recive_16, B => un5_idle_recive_23, 
        C => \single_recive_0/cnt_recive_end_0_sqmuxa_1\, Y => 
        cnt_recive_end_0_sqmuxa);
    
    \data_all_RNO_1[129]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => N_642_2, 
        Y => N_636);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[126]\ : DFN1
      port map(D => \data_all[33]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[126]_net_1\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[11]\ : DFN1
      port map(D => \data_all[148]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[11]_net_1\);
    
    \data_all_RNO[3]\ : NOR3
      port map(A => N_870, B => N_378, C => N_869, Y => N_317);
    
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
    
    \data_all_RNO_2[151]\ : NOR3B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive_0[3]_net_1\, Y
         => m85_2);
    
    \data_send_buffer_RNO_20[1]\ : OR3
      port map(A => N_480, B => N_1614, C => 
        un38_data_send_buffer_968_i_3, Y => 
        un38_data_send_buffer_968_i_5);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[8]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[8]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[8]\);
    
    \data_all_RNO[36]\ : OA1B
      port map(A => \data_recive_buffer[4]\, B => N_310, C => 
        \data_all_4_i_0_0[36]\, Y => N_259);
    
    \signal_send_0/un7_cnt_1_I_19\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => \signal_send_0/N_6\);
    
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
    
    \data_all_RNO[135]\ : NOR3
      port map(A => N_623, B => N_378, C => N_624, Y => N_1609);
    
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
    
    \signal_send_0/cnt_end_RNO[8]\ : XA1B
      port map(A => \signal_send_0/cnt_end_c7\, B => 
        \signal_send_0/cnt_end[8]_net_1\, C => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/cnt_end_n8\);
    
    \data_all_RNO[132]\ : NOR3
      port map(A => N_629, B => N_378, C => N_630, Y => N_1612);
    
    \data_all[148]\ : DFN1E0C0
      port map(D => N_1596, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[148]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_12\ : AX1C
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/DWACT_FINC_E[0]\, C => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/I_12\);
    
    \data_send_buffer_RNO_3[4]\ : NOR3C
      port map(A => N_887, B => N_1658, C => \data_all[68]_net_1\, 
        Y => N_517);
    
    \data_all_RNO_0[41]\ : AO1A
      port map(A => \data_all[41]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[41]\);
    
    \data_all_RNO[101]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => N_312, C => 
        \data_all_4_0_i_0[101]\, Y => N_270);
    
    \signal_send_0/vld_send_fall\ : DFN1P0
      port map(D => \signal_send_0/vld_send_i\, CLK => sys_clk_c, 
        PRE => sys_rest_c, Q => \signal_send_0/vld_send_fall_i_0\);
    
    \data_all[12]\ : DFN1E0C0
      port map(D => N_299, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[12]_net_1\);
    
    \cnt_recive_0_RNIRFEVB_2[0]\ : OR2A
      port map(A => N_437, B => N_346, Y => N_306);
    
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
    
    \ident_coreinst/IICE_INST/mdiclink_reg[151]\ : DFN1
      port map(D => \data_all[8]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[151]_net_1\);
    
    send_end_RNO_25 : NOR3C
      port map(A => send_end_0_sqmuxa_i_a3_4, B => 
        send_end_0_sqmuxa_i_a3_3, C => send_end_0_sqmuxa_i_a3_16, 
        Y => send_end_0_sqmuxa_i_a3_21);
    
    \data_all[50]\ : DFN1E0C0
      port map(D => N_237, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[50]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[130]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[131]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[129]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[130]\);
    
    \data_send_buffer_RNO[5]\ : AO1
      port map(A => N_333, B => \data_all[5]_net_1\, C => m77_0_3, 
        Y => \data_send_buffer_3[5]\);
    
    \data_send_buffer_RNO_25[1]\ : NOR3A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        C => \data_all[65]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_6_0);
    
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
    
    \data_send_buffer_RNO_21[5]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \data_all[61]_net_1\, Y => 
        m77_0_a3_10_0);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[138]\ : DFN1
      port map(D => \data_all[21]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[138]_net_1\);
    
    \cnt_recive_RNIGJ8E3[6]\ : NOR3C
      port map(A => un5_idle_recive_9, B => un5_idle_recive_3, C
         => un5_idle_recive_6_0, Y => un5_idle_recive_11);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[133]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[134]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[132]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[133]\);
    
    \signal_send_0/un11_cnt_delay_4\ : NOR3B
      port map(A => \cnt_delay[7]_net_1\, B => 
        \signal_send_0/un11_cnt_delay_1_net_1\, C => 
        \cnt_delay[5]_net_1\, Y => 
        \signal_send_0/un11_cnt_delay_4_net_1\);
    
    \data_send_buffer_RNO_14[2]\ : NOR3C
      port map(A => N_1645, B => N_1659, C => 
        \data_all[154]_net_1\, Y => N_542);
    
    \cnt_recive_end[1]\ : DFN1C0
      port map(D => cnt_recive_end_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[1]_net_1\);
    
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
    
    \data_all_RNO_0[33]\ : AO1A
      port map(A => \data_all[33]_net_1\, B => N_310, C => N_378, 
        Y => \data_all_4_0_i_0[33]\);
    
    \data_send_buffer_RNO_25[2]\ : NOR3C
      port map(A => N_1649, B => N_1660, C => 
        \data_all[50]_net_1\, Y => N_555);
    
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
    
    
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/genblk1.b13_PLF_2grFt_FH9[7]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9_10[7]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/N_21\, Q
         => 
        \ident_coreinst/IICE_INST/b3_SoW/samplerStatus/b13_PLF_2grFt_FH9[7]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[152]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[151]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[152]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[131]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[29]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[131]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[55]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[54]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[55]\);
    
    \data_all_RNO_0[105]\ : NOR2A
      port map(A => \data_all[105]_net_1\, B => N_1713, Y => 
        N_685);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[113]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[47]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[113]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]\ : 
        AOI1B
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_16\, Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[2]_net_1\);
    
    \data_all[46]\ : DFN1E0C0
      port map(D => N_245, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[46]_net_1\);
    
    \data_all_RNO_1[48]\ : AO1D
      port map(A => \data_all[48]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[48]\);
    
    \cnt_send_RNI4UMU[21]\ : OR3
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_send[21]_net_1\, C => 
        un17_data_send_bufferlt30_22_11, Y => 
        un17_data_send_bufferlt30_22_17);
    
    \cnt_send[6]\ : DFN1E1C0
      port map(D => N_1488, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[6]_net_1\);
    
    \cnt_send_RNIJ9FE9[28]\ : NOR3A
      port map(A => m77_0_a2_6_m3_0_a2_0_0, B => 
        m77_0_a2_6tt_N_7_mux, C => N_318, Y => N_1662);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[9]\ : MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[10]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[8]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_6\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[9]\);
    
    \data_all_RNO_0[39]\ : NOR2A
      port map(A => N_310, B => \data_all[39]_net_1\, Y => N_1886);
    
    \cnt_send_RNO[18]\ : XA1C
      port map(A => \cnt_send[18]_net_1\, B => N_71, C => N_378, 
        Y => N_39);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[54]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[106]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[54]\);
    
    \data_send_buffer_RNO_8[0]\ : NOR3C
      port map(A => N_889, B => N_1658, C => \data_all[72]_net_1\, 
        Y => N_570);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[24]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[136]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[24]\);
    
    \data_send_buffer_RNO_18[0]\ : NOR3C
      port map(A => N_887, B => N_1658, C => \data_all[64]_net_1\, 
        Y => N_571);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[118]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[119]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[117]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_0\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[118]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[111]\ : DFN1
      port map(D => \data_all[48]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[111]_net_1\);
    
    \cnt_send_RNO[22]\ : XA1B
      port map(A => cnt_send_c21, B => \cnt_send[22]_net_1\, C
         => N_378, Y => cnt_send_n22);
    
    \data_all_RNO[80]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_87_N_3_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0_0[80]\, Y
         => N_177);
    
    \cnt_recive_RNIL9ST_0[0]\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => N_339);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[12]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[11]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[12]\);
    
    send_end_RNO_45 : NOR2
      port map(A => \cnt_send[7]_net_1\, B => \cnt_send[5]_net_1\, 
        Y => send_end_0_sqmuxa_i_a3_7);
    
    
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
    
    \data_all_RNO_1[1]\ : NOR2
      port map(A => \data_all[1]_net_1\, B => 
        data_all_4_i_o3_7_N_3_mux, Y => N_873);
    
    \cnt_recive_RNO[24]\ : XA1C
      port map(A => \cnt_recive[24]_net_1\, B => N_72, C => N_378, 
        Y => cnt_recive_n24);
    
    \data_all_RNO_0[126]\ : NOR2A
      port map(A => N_320, B => \data_all[126]_net_1\, Y => 
        N_1832);
    
    \data_all_RNO_0[42]\ : AO1A
      port map(A => \data_all[42]_net_1\, B => N_1736, C => N_378, 
        Y => \data_all_4_i_0_0[42]\);
    
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
    
    \signal_send_0/cnt_RNIGNDJ1_0[6]\ : NOR3B
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/tx_uart27_6\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart30_4\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[99]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[98]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[99]\);
    
    send_end_RNO_30 : XOR2
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => un12_cnt_send_23);
    
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
    
    \cnt_recive_RNO[23]\ : XA1C
      port map(A => \cnt_recive[23]_net_1\, B => N_70, C => N_378, 
        Y => cnt_recive_n23);
    
    \signal_send_0/cnt_end_RNIO0HT[2]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c1\, B => 
        \signal_send_0/cnt_end[2]_net_1\, Y => 
        \signal_send_0/cnt_end_c2\);
    
    \cnt_send_RNIQOUT1[0]\ : NOR3
      port map(A => N_887, B => N_378, C => N_1645, Y => N_115);
    
    \data_all_RNO_0[157]\ : AO1A
      port map(A => \data_all[157]_net_1\, B => N_1739, C => 
        N_378, Y => \data_all_4_i_0_0[157]\);
    
    \data_all_RNO[110]\ : AO1
      port map(A => N_1668, B => \data_recive_buffer[6]\, C => 
        N_675, Y => \data_all_4[110]\);
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[16]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[17]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[15]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_2\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[16]\);
    
    \data_all[92]\ : DFN1E0C0
      port map(D => N_153, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[92]_net_1\);
    
    \cnt_send_RNO[4]\ : NOR2A
      port map(A => N_16_0, B => N_378, Y => cnt_send_n4);
    
    \cnt_recive_RNIG9TP1[6]\ : NOR3A
      port map(A => un5_idle_recive_2_0, B => 
        \cnt_recive[6]_net_1\, C => \cnt_recive[9]_net_1\, Y => 
        un5_idle_recive_6_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b13_oRB_MqCD2_EdR_0__RNI1A7L\ : 
        NOR3B
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b4_2o_z\, B
         => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa_0\, 
        C => \ident_coreinst/IICE_INST/b5_voSc3\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b12_PSyi_KyDbLbb_0_sqmuxa\);
    
    \data_all_RNO[21]\ : OA1C
      port map(A => data_all_4_i_o3_23_N_3_mux, B => N_386, C => 
        \data_all_4_i_0[21]\, Y => N_281);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[63]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[63]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[63]\);
    
    \data_all_RNO[149]\ : OA1B
      port map(A => \data_recive_buffer[5]\, B => N_314, C => 
        \data_all_4_i_0_0[149]\, Y => N_1595);
    
    send_end_RNIC31LC : AND3C
      port map(A => N_378, B => data_all_4_0_a2_1_i_o2_out, C => 
        N_344, Y => N_911);
    
    \cnt_recive_RNO[29]\ : XA1B
      port map(A => cnt_recive_c28, B => \cnt_recive[29]_net_1\, 
        C => N_378, Y => cnt_recive_n29);
    
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
    
    \single_recive_0/cnt_RNI3K2D1_0[0]\ : NOR3B
      port map(A => \single_recive_0/m85_1\, B => 
        \single_recive_0/m12_1\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m85_3\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[15]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[16]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[15]\);
    
    \data_send_buffer_RNO_1[2]\ : OR3
      port map(A => N_547, B => N_548, C => 
        \data_send_buffer_3_1_5[2]\, Y => 
        \data_send_buffer_3_1_12[2]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[67]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[68]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[66]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[67]\);
    
    \data_send_buffer_RNO_24[6]\ : MX2
      port map(A => \data_all[54]_net_1\, B => 
        \data_all[62]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_535_3);
    
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
    
    \cnt_send_RNI2MBI[16]\ : NOR3C
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_send[16]_net_1\, C => \cnt_send[13]_net_1\, Y => 
        cnt_send_n17_i_o4_m5_0_a2_2);
    
    \cnt_send[19]\ : DFN1E1C0
      port map(D => cnt_send_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[19]_net_1\);
    
    \data_all_RNO[144]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_314, C => 
        \data_all_4_i_0_0[144]\, Y => N_1600);
    
    \single_recive_0/data_recive_RNO[4]\ : AO1
      port map(A => \single_recive_0/data_recive27\, B => 
        rx_uart_c, C => \single_recive_0/data_recive_2_m[4]\, Y
         => \single_recive_0/data_recive_12[4]\);
    
    \signal_send_0/cnt_end_RNO_0[9]\ : NOR2B
      port map(A => \signal_send_0/cnt_end[8]_net_1\, B => 
        \signal_send_0/cnt_end_c7\, Y => 
        \signal_send_0/cnt_end_19_0\);
    
    \signal_send_0/parity_check_RNO_7\ : XOR2
      port map(A => \data_send_buffer[6]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_7\);
    
    \single_recive_0/data_recive[4]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[4]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[4]\);
    
    \data_send_buffer_RNO_24[1]\ : NOR3A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \data_all[33]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_10_0);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[11]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[11]_net_1\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[109]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[110]\);
    
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
    
    \cnt_send_RNO[13]\ : NOR2A
      port map(A => cnt_send_n13_tz, B => N_378, Y => 
        cnt_send_n13);
    
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
    
    \data_send_buffer_RNO_23[5]\ : NOR3B
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \data_all[85]_net_1\, C => \cnt_send_0[0]_net_1\, Y => 
        m77_0_a3_15_0);
    
    \cnt_send_RNI5V1PO[0]\ : AO1
      port map(A => N_1662, B => N_887, C => N_967, Y => N_333);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[149]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[149]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[149]\);
    
    \single_recive_0/un7_cnt_1_I_19\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/N_6\);
    
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
    
    \data_all_RNO_0[108]\ : NOR2A
      port map(A => \data_all[108]_net_1\, B => N_1713, Y => 
        N_679);
    
    \data_all[34]\ : DFN1E0C0
      port map(D => N_238, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[34]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[97]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[96]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[97]\);
    
    \cnt_send[27]\ : DFN1E1C0
      port map(D => cnt_send_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[27]_net_1\);
    
    send_end_RNO_52 : NOR3A
      port map(A => send_end_0_sqmuxa_i_a3_12, B => 
        \cnt_send[20]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        send_end_0_sqmuxa_i_a3_19);
    
    \data_all_RNO_0[64]\ : AO1D
      port map(A => \data_all[64]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[64]\);
    
    \data_all_RNO[24]\ : OA1C
      port map(A => N_308, B => \data_all[24]_net_1\, C => 
        \data_all_4_i_0_0[24]\, Y => N_275);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[117]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[116]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[117]\);
    
    
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
    
    \data_all_RNO[39]\ : NOR3
      port map(A => N_1886, B => N_378, C => N_1887, Y => N_250);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[155]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[5]_net_1\, CLK => 
        sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[155]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[146]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[147]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[145]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[146]\);
    
    \data_all_RNO_0[114]\ : AO1D
      port map(A => \data_all[114]_net_1\, B => m90_i_o2_N_3_mux, 
        C => N_378, Y => \data_all_4_0_i_0[114]\);
    
    \data_all[98]\ : DFN1E0C0
      port map(D => N_262, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[98]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO\ : DFN1C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_RNO_net_1\, 
        CLK => sys_clk_c, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b8_jAA_KlCO_net_1\);
    
    receive_end_RNO_3 : AO1
      port map(A => receive_end2lto2, B => receive_end2lto3, C
         => \cnt_recive_end[4]_net_1\, Y => receive_end2lto6_1);
    
    \data_all_RNO[15]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_15_N_3_mux, B => 
        \data_recive_buffer[7]\, C => \data_all_4_i_0_0[15]\, Y
         => N_293);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[17]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[17]_net_1\);
    
    \data_all_RNO[51]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => N_385, 
        C => \data_all_4_i_0[51]\, Y => N_235);
    
    \data_all[20]\ : DFN1E0C0
      port map(D => N_283, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[20]_net_1\);
    
    \cnt_recive_end_RNO_0[9]\ : NOR2B
      port map(A => receive_end2lto8, B => cnt_recive_end_c7, Y
         => cnt_recive_end_19_0);
    
    \data_all_RNO[133]\ : NOR3
      port map(A => N_627, B => N_378, C => N_628, Y => N_1611);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[124]\ : DFN1
      port map(D => \data_all[35]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[124]_net_1\);
    
    \cnt_send_0_RNITVR96[0]\ : AND3B
      port map(A => I_17_1, B => I_20_1, C => N_140_mux, Y => 
        N_145_mux);
    
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
    
    \data_all_RNO[100]\ : NOR3
      port map(A => N_1555, B => N_378, C => N_1553, Y => N_1544);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[98]\ : DFN1
      port map(D => \data_all[61]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[98]_net_1\);
    
    \cnt_recive_RNIB9LP2[0]\ : NOR3C
      port map(A => cnt_recive_n22_0_o4_N_9_mux_i_a0_0, B => 
        \cnt_recive[0]_net_1\, C => 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_3, Y => 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_4);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[2]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[3]\, 
        B => \ident_coreinst/IICE_comm2iice_1[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[2]\);
    
    \data_all_RNO_0[53]\ : AO1D
      port map(A => \data_all[53]_net_1\, B => 
        data_all_4_i_o3_i_o2_55_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[53]\);
    
    \cnt_recive_RNI3HUG7[15]\ : OR3C
      port map(A => \cnt_recive[15]_net_1\, B => N_59_i, C => 
        \cnt_recive[16]_net_1\, Y => N_61);
    
    \data_send_buffer_3_1_7_RNO[4]\ : NOR3C
      port map(A => N_1649, B => N_1658, C => 
        \data_all[84]_net_1\, Y => N_515);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[108]\ : DFN1
      port map(D => \data_all[51]_net_1\, CLK => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/mdiclink_reg[108]_net_1\);
    
    \data_all[49]\ : DFN1E0C0
      port map(D => N_239, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[49]_net_1\);
    
    \cnt_send_RNO_3[25]\ : NOR2B
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[21]_net_1\, Y => cnt_send_n25_m4_0_a2_2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[158]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[157]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[158]\);
    
    \data_all_RNO_3[100]\ : NOR2A
      port map(A => \data_recive_buffer[4]\, B => 
        \cnt_recive[1]_net_1\, Y => 
        un37_data_send_buffer_2354_0_a2_0);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9_RNO[16]\ : 
        NOR2A
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[17]\, 
        B => \ident_coreinst/IICE_comm2iice[9]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[16]\);
    
    \single_recive_0/recive\ : DFN1E1C0
      port map(D => \single_recive_0/un1_cnt\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \single_recive_0/un2_cnt\, Q => 
        \single_recive_0/recive_net_1\);
    
    \data_all_RNO_0[59]\ : AO1A
      port map(A => N_344_0, B => \data_all_4_i_a2_0_59_m1_e_1\, 
        C => N_378, Y => \data_all_4_i_0[59]\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nfs_IF[2]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[8]_net_1\);
    
    \data_all_RNO[138]\ : NOR3
      port map(A => N_1840, B => N_378, C => N_1841, Y => N_1606);
    
    
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
    
    \data_all_RNO[97]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_312, C => 
        \data_all_4_0_i_0[97]\, Y => N_258);
    
    \single_recive_0/data_recive_RNO_0[5]\ : AOI1B
      port map(A => \single_recive_0/m76_7\, B => 
        \single_recive_0/m76_6\, C => \data_recive_buffer[5]\, Y
         => \single_recive_0/m78_0\);
    
    \cnt_recive_RNO[27]\ : XA1B
      port map(A => cnt_recive_c26, B => \cnt_recive[27]_net_1\, 
        C => N_378, Y => cnt_recive_n27);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[5]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[5]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[58]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[57]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[58]\);
    
    \data_send_buffer_RNO_22[0]\ : MX2
      port map(A => \data_all[48]_net_1\, B => 
        \data_all[56]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_529_3);
    
    \data_all[136]\ : DFN1E0C0
      port map(D => N_1608, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[136]_net_1\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_RNO[1]\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[2]_net_1\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[1]_net_1\, 
        S => \ident_coreinst/IICE_comm2iice_0[9]\, Y => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[1]\);
    
    \cnt_recive_RNI3GFV9[22]\ : OR2B
      port map(A => N_67_i, B => \cnt_recive[22]_net_1\, Y => 
        N_70);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/virOut/genblk1.b13_PLF_2grFt_FH9[11]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9_5[11]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/N_20_0\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/virOut/b13_PLF_2grFt_FH9[11]\);
    
    \cnt_recive_RNIE87M1[10]\ : OR3A
      port map(A => un5_idle_recive_3, B => \cnt_recive[6]_net_1\, 
        C => \cnt_recive[10]_net_1\, Y => OVER_12_4);
    
    \data_all_RNO_0[85]\ : AO1D
      port map(A => \data_all[85]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[85]\);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[8]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[9]\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[18]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[18]_net_1\);
    
    \cnt_recive_RNIKVVD5[12]\ : OR2A
      port map(A => \cnt_recive[12]_net_1\, B => N_56, Y => N_57);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[24]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[24]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[24]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[79]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[78]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[79]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[110]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[50]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[110]\);
    
    \signal_send_0/end_flag_RNIV88B\ : NOR2A
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        idle_send, Y => \signal_send_0/un3_end_flag_0\);
    
    \single_recive_0/cnt[2]\ : DFN1C0
      port map(D => \single_recive_0/I_7\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[2]_net_1\);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]\ : 
        AO1
      port map(A => \ident_coreinst/IICE_comm2iice[9]\, B => 
        \ident_coreinst/comm_block_INST/b12_ORbIwXaEF_bd\, C => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/N_15\, Y => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[1]_net_1\);
    
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
    
    \cnt_recive_RNI57CI9[0]\ : NOR3C
      port map(A => cnt_recive_n22_0_o4_m4_0_a2_2, B => 
        cnt_recive_n22_0_o4_N_9_mux_i_a0_4, C => 
        cnt_recive_c14_0_o4_m6_0_a2_4, Y => N_67_i);
    
    \data_all_RNO[54]\ : OA1C
      port map(A => data_all_4_i_o3_i_o2_55_N_3_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0_0[54]\, Y
         => N_229);
    
    \cnt_recive_RNISQUA1[10]\ : NOR3C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[9]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        cnt_recive_n11_0_o4_m6_0_a2_3);
    
    \signal_send_0/cnt_flag_n4_tz\ : AX1C
      port map(A => \signal_send_0/cnt_flag_c2_net_1\, B => 
        \cnt_flag[3]_net_1\, C => \cnt_flag[4]_net_1\, Y => 
        \signal_send_0/cnt_flag_n4_tz_net_1\);
    
    \cnt_send_RNIMJLK[0]\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => N_378, Y => N_24_0);
    
    \data_all_RNO_1[0]\ : NOR2A
      port map(A => data_all_4_i_o3_7_N_3_mux, B => N_641_2, Y
         => N_876);
    
    \signal_send_0/tx_uart_RNO_9\ : NOR2B
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/data_send_m[1]\);
    
    \cnt_recive_RNO[16]\ : NOR2A
      port map(A => cnt_recive_n16_tz, B => N_378, Y => 
        cnt_recive_n16);
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[94]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[95]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[105]\ : 
        DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[105]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_0\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[105]\);
    
    \cnt_recive_RNIBB91B[4]\ : NOR2A
      port map(A => \data_all_4_i_o2_1_i_a3_1[135]\, B => OVER_12, 
        Y => N_437);
    
    
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
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[4]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[5]\);
    
    \data_send_buffer_RNO_20[6]\ : MX2
      port map(A => N_519_3, B => N_535_3, S => 
        \cnt_send[1]_net_1\, Y => N_453);
    
    \data_all_RNO_0[16]\ : AO1D
      port map(A => \data_all[16]_net_1\, B => 
        data_all_4_i_o3_23_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[16]\);
    
    \cnt_send_RNIRMBM1_0[2]\ : NOR3B
      port map(A => m77_0_a2_3_0, B => N_1656, C => N_378, Y => 
        N_1660);
    
    \cnt_recive_RNI1QE9A[5]\ : NOR3B
      port map(A => cnt_recive_c14_0_o4_m6_0_a2_4, B => 
        cnt_recive_c25_m1_0_a2_0, C => N_1499, Y => 
        cnt_recive_c25);
    
    \single_recive_0/recive_RNO\ : AO1C
      port map(A => idle_recive, B => 
        \single_recive_0/rx_down_net_1\, C => 
        \single_recive_0/un1_cnt\, Y => \single_recive_0/un2_cnt\);
    
    \data_all_RNO_0[68]\ : AO1D
      port map(A => \data_all[68]_net_1\, B => 
        data_all_4_i_o3_71_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[68]\);
    
    \signal_send_0/cnt_RNI8LVP[5]\ : NOR2
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart28_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[57]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[57]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[57]\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b11_nFG0rDY_9e2_RNIVVSO_4\ : 
        OR2A
      port map(A => \ident_coreinst.IICE_INST.b3_SoW.N_1550\, B
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, Y
         => \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/b6_SoWyQD/genblk2.b5_oRB_C[72]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/mdiclink_reg[88]_net_1\, CLK
         => sys_clk_c, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_OFWNT9L_8tZ[72]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[29]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[29]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_3\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[29]\);
    
    \single_recive_0/cnt[10]\ : DFN1C0
      port map(D => \single_recive_0/I_28\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[10]_net_1\);
    
    \cnt_send_RNO[3]\ : XA1B
      port map(A => \cnt_send[3]_net_1\, B => N_6_0, C => N_378, 
        Y => cnt_send_n3);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[7]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[7]_net_1\);
    
    \data_send_buffer_RNO_18[3]\ : NOR3C
      port map(A => N_1645, B => N_1659, C => 
        \data_all[155]_net_1\, Y => N_525);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_RNO_0\ : 
        MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_0_sqmuxa\, 
        B => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b10_nYhI3_umjB_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b13_nAzGfFM_sLsv3_1\, 
        Y => \ident_coreinst/IICE_INST/b5_nUTGT/N_97\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[41]\ : DFN1
      port map(D => \data_all[118]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[41]_net_1\);
    
    \cnt_recive[0]\ : DFN1E0C0
      port map(D => N_101, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[0]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[111]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[110]\, CLK
         => \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[111]\);
    
    \single_recive_0/data_recive[1]\ : DFN1C0
      port map(D => \single_recive_0/data_recive_12[1]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \data_recive_buffer[1]\);
    
    
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
    
    send_end_RNO_37 : XOR2
      port map(A => \cnt_recive[29]_net_1\, B => 
        \cnt_send[29]_net_1\, Y => un12_cnt_send_29);
    
    \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb_RNO[28]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/comm_block_INST/b9_ORb_xNywD/b3_ORb[28]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[140]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[141]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[139]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[140]\);
    
    \cnt_recive_end_RNO[7]\ : XA1
      port map(A => receive_end2lto7, B => cnt_recive_end_c6, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n7);
    
    \cnt_recive_end_RNISSKG1[7]\ : NOR2B
      port map(A => cnt_recive_end_c6, B => receive_end2lto7, Y
         => cnt_recive_end_c7);
    
    \data_all_RNO_0[80]\ : AO1D
      port map(A => \data_all[80]_net_1\, B => 
        data_all_4_i_o3_i_o2_87_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0_0[80]\);
    
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
    
    \data_send_buffer_RNO_16[4]\ : AO1
      port map(A => \data_all[140]_net_1\, B => N_1682, C => 
        N_506, Y => \data_send_buffer_3_1_5[4]\);
    
    \cnt_send_RNI4U0D6[20]\ : NOR2B
      port map(A => cnt_send_c19, B => \cnt_send[20]_net_1\, Y
         => cnt_send_c20);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]\ : 
        DFN1E0
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN_5[1]\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b5_nUTGT/un1_b12_uRrc2XfY_rbN10_net_1\, 
        Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b12_uRrc2XfY_rbN[1]_net_1\);
    
    idle_recive_down_RNIIQRK_0 : CLKINT
      port map(A => \idle_recive_down_RNIIQRK\, Y => 
        cnt_recive_1_sqmuxa);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[44]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[44]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[44]\);
    
    \data_send_buffer_RNO_11[4]\ : NOR2B
      port map(A => N_456, B => N_1662, Y => N_505);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[143]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[144]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[142]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_1\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[143]\);
    
    \data_send_buffer_RNO_5[3]\ : OR3
      port map(A => N_537, B => N_538, C => N_524, Y => 
        \data_send_buffer_3_1_9[3]\);
    
    \data_all_RNO_0[77]\ : AO1D
      port map(A => \data_all[77]_net_1\, B => 
        data_all_4_i_o3_79_N_3_mux, C => N_378, Y => 
        \data_all_4_i_0[77]\);
    
    \ident_coreinst/IICE_INST/mdiclink_reg[51]\ : DFN1
      port map(D => \data_all[108]_net_1\, CLK => sys_clk_c, Q
         => \ident_coreinst/IICE_INST/mdiclink_reg[51]_net_1\);
    
    \data_all_RNO[1]\ : NOR3
      port map(A => N_874, B => N_378, C => N_873, Y => N_321);
    
    \single_recive_0/cnt_RNIHNFV1[0]\ : NOR3B
      port map(A => \single_recive_0/m76_0\, B => 
        \single_recive_0/m76_5\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/m76_7\);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]\ : 
        DFN1
      port map(D => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gr[13]_net_1\, 
        CLK => \ident_coreinst/IICE_comm2iice[11]\, Q => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b15_uRrc2XfY_rbN_gs[13]_net_1\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM[77]\ : 
        DFN1E0C1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[76]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, CLR => 
        \ident_coreinst/IICE_INST/b5_voSc3\, E => 
        \ident_coreinst.IICE_INST.b3_SoW.N_1550\, Q => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[77]\);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[17]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[17]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_2\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[17]\);
    
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
    
    \cnt_send_RNI4BSJ[10]\ : NOR2B
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[7]_net_1\, Y => cnt_send_c11_m6_0_a2_4_1);
    
    \cnt_send_RNIDOGR[0]\ : NOR2B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => N_1645);
    
    
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
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[61]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[62]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[60]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[61]\);
    
    \cnt_send_RNO[21]\ : XA1B
      port map(A => cnt_send_c20, B => \cnt_send[21]_net_1\, C
         => N_378, Y => cnt_send_n21);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[65]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[66]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[64]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_4\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[65]\);
    
    \cnt_send_RNO_3[23]\ : NOR2B
      port map(A => \cnt_send[21]_net_1\, B => 
        \cnt_send[18]_net_1\, Y => cnt_send_n23_m3_0_a2_2);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG_RNO[84]\ : 
        MX2
      port map(A => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[85]\, 
        B => \ident_coreinst/IICE_INST/b3_SoW/b7_vFW_PlM[83]\, S
         => \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_5\, 
        Y => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[84]\);
    
    \signal_send_0/un7_cnt_1_I_28\ : XOR2
      port map(A => \signal_send_0/N_3\, B => 
        \signal_send_0/cnt[10]_net_1\, Y => 
        \signal_send_0/I_28_0\);
    
    \signal_send_0/cnt_end_RNO[0]\ : NOR2
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/un4_vld_send_down[0]\, Y => 
        \signal_send_0/N_156\);
    
    
        \ident_coreinst/IICE_INST/b3_SoW/genblk9.b7_nYJ_BFM_RNI3NV6_4[167]\ : 
        OR2
      port map(A => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2\, B => 
        \ident_coreinst/IICE_INST/b3_SoW/b7_nYJ_BFM[167]\, Y => 
        \ident_coreinst/IICE_INST/b3_SoW/b11_nFG0rDY_9e2_3\);
    
    \cnt_recive_RNO_0[9]\ : NOR2A
      port map(A => N_1505, B => \cnt_recive[9]_net_1\, Y => 
        N_1521);
    
    \cnt_recive_0_RNIVOFF[0]\ : OR3B
      port map(A => \cnt_recive_0[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive_0[2]_net_1\, Y
         => N_292);
    
    \data_all_RNO_2[48]\ : NOR3C
      port map(A => \cnt_recive_0[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => N_481_2, Y => m30_1);
    
    \data_all_RNO_1[130]\ : NOR3B
      port map(A => N_437, B => un5_idle_recive_23, C => N_643_2, 
        Y => N_634);
    
    \ident_coreinst/IICE_INST/b3_SoW/genblk9.b3_PfG[49]\ : DFN1E1
      port map(D => 
        \ident_coreinst/IICE_INST/b3_SoW/b3_PfG_6[49]\, CLK => 
        \ident_coreinst/IICE_comm2iice[11]\, E => 
        \ident_coreinst/IICE_INST/b3_SoW/un1_b7_nYJ_BFM8_4\, Q
         => \ident_coreinst/IICE_INST/b3_SoW/b3_PfG[49]\);
    
    \cnt_delay[3]\ : DFN1E1C0
      port map(D => cnt_delay_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[3]_net_1\);
    
    send_end_RNO_14 : XOR2
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_send[0]_net_1\, Y => N_349_i);
    
    \ident_coreinst/IICE_INST/b5_nUTGT/b7_nYhI39s_RNO_0[0]\ : MX2
      port map(A => 
        \ident_coreinst/IICE_INST/b5_nUTGT/DWACT_ADD_CI_0_partial_sum[0]\, 
        B => \ident_coreinst/IICE_INST/b5_nUTGT/b3_nUT[0]_net_1\, 
        S => 
        \ident_coreinst/IICE_INST/b5_nUTGT/b6_nUT_fF_0_sqmuxa\, Y
         => \ident_coreinst/IICE_INST/b5_nUTGT/N_89\);
    
    \data_all_RNO_0[133]\ : AOI1
      port map(A => un5_idle_recive_23, B => N_437, C => 
        \data_all[133]_net_1\, Y => N_627);
    
    \data_all[150]\ : DFN1E0C0
      port map(D => N_1594, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[150]_net_1\);
    
    \data_send_buffer_3_1_a2_17_RNO_0[2]\ : NOR3A
      port map(A => \data_all[26]_net_1\, B => 
        \cnt_send[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_3_1_a2_17_1[2]\);
    
    \signal_send_0/cnt_RNO[0]\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/cnt_4[0]\);
    
    \data_send_buffer_RNO_4[0]\ : NOR2B
      port map(A => \data_all[112]_net_1\, B => N_1675, Y => 
        N_565);
    
    send_end_RNO_13 : XO1
      port map(A => \cnt_send[9]_net_1\, B => 
        \cnt_recive[9]_net_1\, C => un12_cnt_send_23, Y => 
        send_end_0_sqmuxa_i_7);
    
    \signal_send_0/cnt[10]\ : DFN1C0
      port map(D => \signal_send_0/I_28_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[10]_net_1\);
    
    \single_recive_0/cnt_RNIAVCI[11]\ : NOR2
      port map(A => \single_recive_0/cnt[11]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/m76_0\);
    
    \data_send_buffer_RNO_26[1]\ : NOR2A
      port map(A => N_1680, B => \data_all[97]_net_1\, Y => 
        un38_data_send_buffer_968_i_a2_2_0);
    
    \data_all_RNO_0[102]\ : AO1A
      port map(A => \data_all[102]_net_1\, B => N_312, C => N_378, 
        Y => \data_all_4_0_i_0[102]\);
    
    \cnt_delay[7]\ : DFN1E1C0
      port map(D => cnt_delay_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[7]_net_1\);
    
    vld_send_RNIF5UH : NOR2
      port map(A => \vld_send\, B => N_378, Y => 
        data_send_buffer_1_sqmuxa);
    
    \single_recive_0/data_recive_RNO_0[0]\ : AOI1B
      port map(A => \single_recive_0/m52_3\, B => 
        \single_recive_0/N_123_mux\, C => \data_recive_buffer[0]\, 
        Y => \single_recive_0/m93_0\);
    
    \data_all_RNO_0[144]\ : AO1A
      port map(A => \data_all[144]_net_1\, B => N_314, C => N_378, 
        Y => \data_all_4_i_0_0[144]\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
