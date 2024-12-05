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
          tx_uart  : out   std_logic
        );

end buf;

architecture DEF_ARCH of buf is 

  component AOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
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

  component AND3B
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

  component OA1
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

  component NOR2
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

  component DFN1E0C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
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

  component XA1B
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

  component OA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component AX1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component XNOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component AO1
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

  component XA1
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

  component OA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1A
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

  component AX1A
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

  component AND3C
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

  component DFN1E0P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          E   : in    std_logic := 'U';
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

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component MX2B
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

  component OAI1
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

  component AX1
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

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1B
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

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal I_12_1, I_14_1, I_17_1, I_20_1, 
        \data_recive_buffer[0]\, \data_recive_buffer[1]\, 
        \data_recive_buffer[2]\, \data_recive_buffer[3]\, 
        \data_recive_buffer[4]\, \data_recive_buffer[5]\, 
        \data_recive_buffer[6]\, \data_recive_buffer[7]\, 
        \vld_send\, \data_send_buffer[0]_net_1\, 
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
        \cnt_send[30]_net_1\, \cnt_flag[0]_net_1\, 
        \cnt_delay[6]_net_1\, \cnt_delay[7]_net_1\, 
        \cnt_delay[4]_net_1\, \cnt_delay[0]_net_1\, 
        \cnt_delay[1]_net_1\, \idle_recive_fall\, 
        \idle_send_fall\, idle_recive_fall_3, idle_send_fall_2, 
        idle_recive_down_3, idle_send_down_3, \idle_send_down\, 
        \cnt_recive_end[0]_net_1\, \cnt_recive_end[1]_net_1\, 
        receive_end2lto2, receive_end2lto3, 
        \cnt_recive_end[4]_net_1\, \cnt_recive_end[5]_net_1\, 
        \cnt_recive_end[6]_net_1\, receive_end2lto7, 
        receive_end2lto8, receive_end2lto9, \cnt_delay[2]_net_1\, 
        \cnt_delay[3]_net_1\, \cnt_delay[5]_net_1\, 
        \cnt_delay[8]_net_1\, \data_all[0]_net_1\, 
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
        \data_all[159]_net_1\, \receive_end\, \cnt_flag[1]_net_1\, 
        \cnt_flag_5[0]\, \cnt_flag_5[1]\, cnt_recive_end_n0, 
        cnt_recive_end_n1, cnt_recive_end_n2, cnt_recive_end_n3, 
        cnt_recive_end_n4, cnt_recive_end_n5, cnt_recive_end_n6, 
        cnt_recive_end_n7, cnt_recive_end_n8, cnt_recive_end_n9, 
        N_398, N_413, 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\, 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\, sys_clk_c, 
        sys_rest_c, rx_uart_c, tx_uart_c, cnt_send_n19, cnt_sende, 
        cnt_send_n18, cnt_send_n12, cnt_send_n11, cnt_send_n10, 
        cnt_send_n9, cnt_send_n8, cnt_send_n7, cnt_send_n6, 
        cnt_send_n5, cnt_send_n4, cnt_send_n3, cnt_send_n2, 
        cnt_send_n1, N_1466, cnt_send_c18, cnt_send_c17, 
        cnt_send_c11, cnt_send_c10, cnt_send_c9, cnt_send_c8, 
        cnt_send_c7, cnt_send_c6, cnt_send_c5, cnt_send_c4, 
        cnt_send_c3, cnt_send_c2, cnt_send_c1, cnt_send_c12, 
        cnt_send_c19, N_1888, N_1855, N_1850, N_1843, N_1865, 
        N_1571, N_1797, N_595_i, N_594_i, un12_cnt_send_20, 
        un12_cnt_send_21, un12_cnt_send_18, un12_cnt_send_19, 
        un12_cnt_send_16, un12_cnt_send_17, cnt_send_c25, 
        cnt_send_c26, cnt_send_n26, cnt_send_n27, cnt_send_c23, 
        cnt_send_n24, cnt_send_n25, N_164, cnt_recive_1_sqmuxa, 
        N_291, N_275, N_259, N_194, N_243, N_238, N_171, N_167, 
        N_165, N_133, N_1606, N_298, N_1613, 
        \data_send_buffer_4[6]\, data_send_buffer_1_sqmuxa, 
        N_487_3, N_551_3, \un39_data_send_buffer[6]\, N_967_4, 
        N_1095_3, N_807_3, N_871_3, N_775_3, N_711_3, N_743_3, 
        N_647_3, N_679_3, N_1647, N_631_3, N_1649, N_1648, 
        N_567_3, N_1651, N_1650, N_1652, N_815_2, N_655_2, 
        \un38_data_send_buffer[6]\, N_861, N_31, N_1859, N_443, 
        N_1856, N_1761, N_1620, N_1793, N_1047, N_1846, N_1654, 
        N_1653, N_1661, N_641, N_441, N_362, N_1636, N_847_2_i, 
        N_1635, N_1618, N_1838, N_1842, N_1476, N_1633, N_875, 
        N_753, N_752, N_107, N_218, N_216, N_1716, 
        \un46_data_all[80]\, N_434, N_459, N_1051, 
        \data_all_4[78]\, \data_all_2[78]\, N_339, N_134, N_1593, 
        N_293, N_287, N_285, N_176, N_182, N_277, N_196, N_200, 
        N_222, N_224, N_234, N_240, N_310, N_322, N_1608, N_336, 
        cnt_recive_n4, cnt_recive_n2, cnt_recive_c1, 
        cnt_recive_c4, N_1692, N_1877, N_1694, N_1696, N_1845, 
        N_1844, N_1722, N_1053, N_1724, N_1052, N_1769, N_1785, 
        N_1658, N_1579, N_1574, N_1848, N_1530, N_1529, N_1770_1, 
        N_1580, cnt_recive_c2, cnt_recive_n3, N_325, N_263, N_251, 
        N_237, N_177, N_175, N_169, cnt_delay_n8, cnt_delaye, 
        cnt_delay_n2, N_456, N_1465, cnt_delay_n1, cnt_delay_n3, 
        cnt_delay_n4, cnt_delay_n5, cnt_delay_n6, cnt_delay_n7, 
        un5_idle_recive, vld_send_0_sqmuxa, vld_send_2_sqmuxa, 
        cnt_recive_n24, cnt_recive_n20, cnt_recive_n19, 
        cnt_recive_n13, cnt_recive_n12, cnt_recive_n11, 
        cnt_recive_n10, cnt_recive_n9, cnt_recive_n8, 
        cnt_recive_n7, cnt_recive_n6, cnt_recive_n5, N_19, 
        un5_idle_recive_12, un5_idle_recive_11, un5_idle_recive_9, 
        un5_idle_recive_8, un5_idle_recive_7, un5_idle_recive_6, 
        un5_idle_recive_4, cnt_recive_c18, cnt_recive_c6, 
        cnt_recive_c10, cnt_recive_c9, cnt_recive_c11, 
        cnt_recive_c12, cnt_recive_c13, cnt_recive_c20, 
        cnt_recive_c23, cnt_recive_c5, cnt_recive_c7, 
        cnt_recive_c8, N_1615, N_426, N_458, cnt_recive_c22, 
        cnt_recive_n22, cnt_recive_n23, cnt_recive_n21, 
        cnt_recive_c24, cnt_recive_c25, cnt_recive_n25, 
        cnt_recive_n30, cnt_recive_n29, cnt_recive_n28, 
        cnt_recive_n26, N_1043, cnt_recive_c28, cnt_recive_c27, 
        N_265, N_223, N_221, N_219, N_217, N_212, N_220, 
        \data_send_buffer_4[7]\, N_1714, N_1720, N_1573, N_1469, 
        N_479, N_478, N_476, N_477, N_471, N_866, N_865, N_813, 
        N_812, N_811, N_810, N_36, cnt_send_n30, cnt_send_n29, 
        cnt_send_n28, cnt_send_n23, cnt_send_n21, 
        un12_cnt_send_15, un12_cnt_send_14, cnt_send_c22, 
        cnt_send_c21, N_981, N_976, cnt_send_c28, 
        un12_cnt_send_12, un12_cnt_send_30, N_589_i, N_591_i, 
        N_593_i, un12_cnt_send_11, un12_cnt_send_9, 
        un12_cnt_send_6, un12_cnt_send_5, N_450_i, N_587_i, 
        N_1711_1, N_349, N_1540, N_1539, N_347, N_1538, N_1537, 
        N_345, N_1536, N_1535, N_343, N_1534, N_1533, N_341, 
        N_1532, N_1531, N_333, N_331, N_329, N_301, N_1495, N_902, 
        N_299, N_1494, N_1493, N_297, N_1492, N_1491, N_273, 
        N_271, N_872, N_871, N_269, N_870, N_869, N_267, N_868, 
        N_867, N_255, N_253, N_239, N_235, N_233, N_207, N_795, 
        N_794, N_205, N_793, N_792, N_203, N_791, N_790, N_201, 
        N_789, N_788, N_199, N_787, N_786, N_197, N_785, N_784, 
        N_195, N_783, N_782, N_161, N_159, N_157, N_145, N_143, 
        N_141, N_139, N_129, N_127, N_125, N_113, N_111, N_109, 
        N_105, N_97, N_95, N_93, N_681, N_680, N_91, N_81, N_79, 
        N_77, N_75, N_49, N_47, N_45, N_37, N_1668, N_1668_2, 
        N_1669, N_1646, N_1814, N_1815, N_1812, N_1813, N_1811, 
        N_1808, N_1806, N_1807, N_1804, N_1805, N_1802, N_1803, 
        N_1800, N_1801, N_1798, N_1799, N_1836, N_1837, N_1834, 
        N_1831, N_1826, N_1827, N_1824, N_1825, N_1822, N_1823, 
        N_1820, N_1821, N_1818, N_1819, N_462, N_463, N_984, 
        N_464, N_1585, N_1581, N_466, N_1583, N_468, N_1570, 
        N_469, N_1575, N_474, N_1568, N_475, N_510, N_511, N_512, 
        N_513, N_516, N_517, N_518, N_519, N_520, N_521, N_526, 
        N_553, N_554, N_556, N_557, N_559, N_560, N_561, N_562, 
        N_563, N_565, N_567, N_569, N_570, N_571, N_574, N_575, 
        N_578, N_581, N_582, N_583, N_584, N_585, N_594, N_595, 
        N_597, N_598, N_601, N_602, N_604, N_605, N_606, N_607, 
        N_608, N_609, N_610, N_614, N_364, 
        \data_send_buffer_4[0]\, \data_send_buffer_4[1]\, 
        \data_send_buffer_4[2]\, \data_send_buffer_4[4]\, N_1858, 
        N_1863, N_1664, N_646, N_644, N_1663, N_1660, N_1659, 
        N_1657, N_1656, N_1655, N_433, N_1614, N_1795, N_1612, 
        N_1791, N_1611, N_1789, N_1610, N_1609, N_1783, N_1607, 
        N_1779, N_326, N_318, N_314, N_1771, N_306, N_1767, N_302, 
        N_300, N_296, N_1759, N_292, N_288, N_860, N_286, N_858, 
        N_284, N_856, N_280, N_1605, N_1604, N_1603, N_1602, 
        N_1746, N_1601, N_1744, N_1600, N_1742, N_262, N_258, 
        N_1599, N_1598, N_1597, N_163, N_173, N_236, N_232, N_228, 
        N_208, N_206, N_1710, N_204, N_202, N_1706, N_198, N_257, 
        N_261, N_178, N_289, N_295, N_166, N_1596, N_1595, N_1594, 
        N_154, N_150, N_146, N_319, N_323, N_327, N_138, 
        \data_send_buffer_4[3]\, \data_send_buffer_4[5]\, 
        receive_end_1_sqmuxa, cnt_recive_end_c2, 
        cnt_recive_end_c4, cnt_recive_end_c6, receive_end2lt9, 
        receive_end2lt7, \data_all_4[28]\, cnt_send_c16, 
        cnt_send_c15, cnt_send_c14, cnt_send_c13, N_460, N_461, 
        cnt_recive_c14, cnt_recive_c15, cnt_recive_c16, 
        cnt_send_n13, cnt_send_n14, cnt_recive_n14, 
        cnt_recive_n15, cnt_recive_n16, cnt_recive_n17, 
        cnt_recive_c17, cnt_send_n15, cnt_send_n16, cnt_send_n17, 
        cnt_send_n20, cnt_send_n22, cnt_recive_n18, 
        cnt_recive_n27, cnt_recive_end_19_0, cnt_send_n25_tz, 
        cnt_recive_n4_tz, cnt_recive_n20_tz, cnt_recive_n22_tz, 
        cnt_send_n21_tz, cnt_recive_end_n2_tz, 
        cnt_recive_end_n4_tz, cnt_recive_end_n6_tz, 
        cnt_recive_end_n8_tz, cnt_recive_n27_tz, 
        cnt_send_c13_m6_0_a2_4, cnt_recive_c17_m6_0_a2_4, 
        cnt_send_c24_m6_0_a2_4, cnt_recive_c19_m6_0_a2_3, 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, 
        send_end_0_sqmuxa_i_a2_0_19, send_end_0_sqmuxa_i_a2_0_20, 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, 
        \data_send_buffer_4_1_a2_23_0_a2_0[7]\, N_449_i_0_o4_0, 
        \data_all_4_i_o2_i_o4_0[39]\, \data_send_buffer_4_1_2[7]\, 
        \data_send_buffer_4_1_7[4]\, N_1851, 
        un46_data_all_0_a2_1_o2_0_out, N_385_i_0_o4_out, 
        data_send_buffer_4_1_a2_23_0_a2_out, 
        data_send_buffer_4_1_a2_35_0_a4_out, N_381_i_0_o4_out, 
        data_all_4_i_o2_0_i_o4_out, data_all_4_i_o2_i_o2_out, 
        data_send_buffer_4_1_a2_32_0_a4_out, 
        data_send_buffer_4_1_a2_20_0_a4_out, 
        data_send_buffer_4_1_a2_34_0_a4_out, 
        data_send_buffer_4_1_a2_21_0_a4_out, 
        data_send_buffer_4_1_a2_10_out, 
        data_send_buffer_4_1_a2_2_out_0, 
        \data_send_buffer_4_1_14_s_0[1]\, 
        data_all_4_i_i_a2tt_34_N_7_mux, 
        data_all_4_i_o2_i_o4_127_N_5_mux, 
        data_all_4_i_o2_i_o4_159_N_5_mux, N_391_i_0_o2_N_5_mux, 
        data_all_4_i_i_o2_80_N_5_mux, \data_all_RNO_2[140]_net_1\, 
        \data_all_4_i_i_2[140]\, \data_all_RNO_2[103]_net_1\, 
        \data_all_4_i_i_2[103]\, 
        un46_data_all_0_a2_1_o2_0_80_N_5_mux, 
        N_392_i_0_o4_N_5_mux, N_387_i_0_o4_N_5_mux, 
        N_397_i_0_o4_N_5_mux, data_all_2_i_o2_i_o4_28_N_5_mux, 
        data_all_4_i_o2_i_o4_111_N_5_mux, 
        data_all_4_i_o2_i_o4_47_N_5_mux, N_385_i_0_o4_N_5_mux, 
        N_449_i_0_o4_N_5_mux, \data_send_buffer_RNO_29[5]_net_1\, 
        data_send_buffer_4_1_0_7_5_N_4, 
        \cnt_send_RNIOI3O7[4]_net_1\, 
        data_send_buffer_4_1_a2_40_i_o4_0_7_N_4, 
        \data_send_buffer_RNO_28[3]_net_1\, 
        \data_send_buffer_RNO_29[3]_net_1\, 
        data_all_4_i_i_148_N_7_mux, \data_all_RNO_3[148]_net_1\, 
        \data_all_RNO_1[148]_net_1\, d_N_3_mux, 
        data_all_4_i_i_145_N_7_mux, \data_all_RNO_3[145]_net_1\, 
        \data_all_RNO_1[145]_net_1\, d_N_3_mux_0, 
        data_all_4_i_i_135_N_7_mux, \data_all_RNO_3[135]_net_1\, 
        \data_all_RNO_1[135]_net_1\, d_N_3_mux_1, 
        data_all_4_i_i_146_N_7_mux, \data_all_RNO_3[146]_net_1\, 
        \data_all_RNO_1[146]_net_1\, d_N_3_mux_2, 
        data_all_4_i_i_144_N_7_mux, \data_all_RNO_3[144]_net_1\, 
        \data_all_RNO_1[144]_net_1\, d_N_3_mux_3, 
        \cnt_recive_RNICR3EC_1[1]_net_1\, 
        \data_all_RNO_3[132]_net_1\, data_all_4_i_i_132_N_5_mux, 
        \data_all_RNO_1[132]_net_1\, d_N_3_mux_4, 
        \data_all_RNO_3[151]_net_1\, data_all_4_i_i_151_N_5_mux, 
        \data_all_RNO_1[151]_net_1\, d_N_3_mux_5, 
        data_send_buffer_4_1_3tt_4_N_7_mux, 
        \data_send_buffer_RNO_9[2]_net_1\, 
        data_send_buffer_4_1_10tt_4_N_3_mux, 
        data_send_buffer_4_1_10_4_N_6_mux, 
        \data_send_buffer_RNO_21[4]_net_1\, 
        data_send_buffer_4_1_10tt_0_N_3_mux, 
        data_send_buffer_4_1_10_0_N_6_mux, 
        \data_send_buffer_RNO_27[0]_net_1\, 
        data_send_buffer_4_1_16_stt_1_N_5_mux, 
        \data_send_buffer_RNO_29[1]_net_1\, 
        data_send_buffer_4_1_16_s_1_N_7, 
        data_send_buffer_4_1_7tt_4_N_3_mux, 
        \data_send_buffer_RNO_30[4]_net_1\, 
        \data_send_buffer_4_1_14_s_0_tz_tz_tz[1]\, 
        receive_end2lto6_1, send_end_0_sqmuxa_i_a2_0_19_1, 
        send_end_0_sqmuxa_i_a2_0_19_2, 
        send_end_0_sqmuxa_i_a2_0_19_3, 
        send_end_0_sqmuxa_i_a2_0_19_4, cnt_recive_c19_m6_0_a2_3_3, 
        cnt_recive_c19_m6_0_a2_3_4, send_end_0_sqmuxa_i_a2_0_20_1, 
        send_end_0_sqmuxa_i_a2_0_20_2, 
        send_end_0_sqmuxa_i_a2_0_20_4, 
        send_end_0_sqmuxa_i_a2_0_20_6, 
        send_end_0_sqmuxa_i_a2_0_20_7, 
        send_end_0_sqmuxa_i_a2_0_20_9, 
        send_end_0_sqmuxa_i_a2_0_20_10, 
        send_end_0_sqmuxa_i_a2_0_20_11, 
        cnt_recive_c17_m6_0_a2_4_2, cnt_recive_c17_m6_0_a2_4_4, 
        cnt_recive_c17_m6_0_a2_4_5, cnt_recive_c17_m6_0_a2_4_6, 
        cnt_send_c24_m6_0_a2_4_2, cnt_send_c24_m6_0_a2_4_4, 
        cnt_send_c24_m6_0_a2_4_5, cnt_send_c24_m6_0_a2_4_6, 
        cnt_send_c13_m6_0_a2_4_4, cnt_send_c13_m6_0_a2_4_5, 
        cnt_send_c13_m6_0_a2_4_6, cnt_recive_c8_m6_0_a2_0, 
        cnt_recive_c8_m6_0_a2_5, cnt_recive_c8_m6_0_a2_6, 
        cnt_recive_c8_m6_0_a2_1, cnt_recive_c8_m6_0_a2_2, 
        cnt_recive_c10_m6_0_a2_4, cnt_recive_c10_m6_0_a2_5, 
        cnt_recive_c10_m6_0_a2_7, N_1840, 
        cnt_recive_c24_m6_0_a2_0, cnt_recive_c24_m6_0_a2_1, 
        cnt_recive_c24_m6_0_a2_4, cnt_recive_c24_m6_0_a2_5, 
        cnt_recive_c24_m6_0_a2_7, un5_idle_recive_6_0, 
        un5_idle_recive_7_0, un5_idle_recive_10_0, 
        un5_idle_recive_16, cnt_send_c8_m3_0_a2_0, 
        cnt_send_c8_m3_0_a2_1, cnt_send_c8_m3_0_a2_3, 
        send_end_0_sqmuxa_i_a2_m3_e_0, 
        send_end_0_sqmuxa_i_a2_m3_e_1, 
        \data_all_4_i_o2_0_i_o2_0_11_0[111]\, 
        \data_all_4_i_o2_0_i_o2_0_11_1[111]\, 
        cnt_send_c18_m6_0_a2_3, cnt_send_c18_m6_0_a2_4, 
        cnt_send_c18_m6_0_a2_5, cnt_send_c18_m6_0_a2_7, 
        \data_send_buffer_4_1_a2_24_0_a4_s_0[7]\, 
        cnt_recive_c19_m6_0_a2_0, 
        \data_send_buffer_4_1_14_s_1_0[1]\, 
        \data_all_4_i_o2_0_i_o2_0_12_0[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_1[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_4[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_6[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_8[111]\, 
        \data_send_buffer_4_1_13_a0_0[4]\, N_1841, 
        \data_send_buffer_4_1_0_2_s_a1_0[3]\, 
        \data_send_buffer_4_1_0_2_s_a1_2[3]\, 
        \data_send_buffer_4_1_13_a1_0[4]\, 
        data_send_buffer_4_1_a2_40_i_o4_0_7_m1_e_1, 
        send_end_0_sqmuxa_i_a4_1, 
        \data_send_buffer_4_1_0_2_s_a0_1[3]\, 
        data_send_buffer_4_1_0_1tt_5_m3_0_a2_1, 
        data_send_buffer_4_1_3tt_4_m3_0_a2_0, cnt_send_95_1, 
        cnt_send_95_3, cnt_send_95_4, cnt_send_95_6, 
        cnt_send_95_8, data_send_buffer_4_1_0_a4_8_5_m1_e_1, 
        cnt_send_c28_m6_0_a2_2, cnt_send_c28_m6_0_a2_3, 
        cnt_send_c28_m6_0_a2_5, cnt_send_c28_m6_0_a2_6, 
        cnt_send_c11_m6_0_a2_0, cnt_send_c11_m6_0_a2_1, 
        cnt_send_c11_m6_0_a2_3, cnt_send_c11_m6_0_a2_5, 
        cnt_send_c11_m6_0_a2_6, 
        data_send_buffer_4_1_a2_17_2_m2_0_a2_0, 
        un46_data_all_0_a2_1_o2_0_80_m2_e_1, 
        data_all_4_i_i_a2tt_34_m3_0_a2_1, N_385_i_0_o4_m2_e_1, 
        data_all_4_i_i_a2tt_68_m3_0_a2_1, 
        data_send_buffer_4_1_0_7_5_m4_0_0, 
        \data_all_4_i_i_a0_0[103]\, \data_all_4_i_i_a0_2[103]\, 
        data_all_4_i_i_o2_80_m2_e_0, data_all_4_i_i_o2_80_m2_e_2, 
        data_all_4_i_o2_i_o4_159_m2_e_1, 
        data_all_4_i_o2_i_o4_159_m2_e_3, 
        data_all_4_i_a2_0_67_m2_e_1, 
        data_all_4_i_o2_i_o4_47_m2_e_1, 
        data_all_4_i_o2_i_o4_127_m2_e_2, 
        data_all_4_i_a2_0_66_m2_e_1, data_all_4_i_a2_0_37_m2_e_1, 
        data_all_4_i_a2_0_37_m2_e_2, data_all_4_i_a2_0_38_m2_e_1, 
        N_392_i_0_o4_m2_e_0, N_392_i_0_o4_m2_e_2, 
        N_397_i_0_o4_m2_e_0, N_397_i_0_o4_m2_e_2, 
        N_387_i_0_o4_m2_e_0, N_387_i_0_o4_m2_e_2, 
        data_all_2_i_o2_i_o4_28_m2_e_0, 
        data_all_2_i_o2_i_o4_28_m2_e_2, 
        \data_all_4_i_o2_i_o4_111_m2_e_1\, N_449_i_0_o4_m2_e_1, 
        \data_send_buffer_4_1_a2_22_0_a4_0[7]\, 
        un38_data_send_buffer_1135_1, \data_all_4_i_i_a0_1[140]\, 
        \data_send_buffer_4_1_a2_40_i_o4_1[7]\, cnt_send_99_0, 
        data_send_buffer_4_1_a2_39_0_a4_7_m2_e_1, 
        data_send_buffer_4_1_a2_39_0_a4_7_m2_e_3, 
        \data_send_buffer_4_1_a2_24_0_a2_0[7]\, 
        \data_send_buffer_4_1_a2_24_0_a2_1[7]\, 
        data_send_buffer_4_1_a2_28_0_a4_7_m2_e_1, 
        data_send_buffer_4_1_a2_37_0_a4_out, 
        \data_send_buffer_4_1_a2_33_0_a4_1[7]\, 
        send_end_0_sqmuxa_i_1, send_end_0_sqmuxa_i_2, 
        send_end_0_sqmuxa_i_4, send_end_0_sqmuxa_i_6, 
        send_end_0_sqmuxa_i_8, send_end_0_sqmuxa_i_10, 
        send_end_0_sqmuxa_i_11, send_end_0_sqmuxa_i_12, 
        send_end_0_sqmuxa_i_14, send_end_0_sqmuxa_i_15, 
        send_end_0_sqmuxa_i_16, send_end_0_sqmuxa_i_17, 
        send_end_0_sqmuxa_i_18, send_end_0_sqmuxa_i_20, 
        send_end_0_sqmuxa_i_21, send_end_0_sqmuxa_i_24, 
        send_end_0_sqmuxa_i_25, send_end_0_sqmuxa_i_26, 
        send_end_0_sqmuxa_i_27, send_end_0_sqmuxa_i_29, 
        \data_send_buffer_4_1_a2_2_0[2]\, 
        \data_send_buffer_4_1_a2_2_1[2]\, 
        \data_send_buffer_4_1_a2_16_0[2]\, 
        \data_send_buffer_4_1_a2_16_1[2]\, 
        \data_send_buffer_4_1_a2_1_1[7]\, 
        \data_send_buffer_4_1_a2_0[2]\, \data_all_4_i_i_0_0[103]\, 
        \data_all_4_i_i_0_1[103]\, 
        data_send_buffer_4_1_0_a4_12_5_m1_e_1, 
        \data_send_buffer_4_1_a2_15_0[1]\, 
        data_send_buffer_4_1_14_1_m1_e_1, data_all_4_i_i_99_m5_0, 
        \data_send_buffer_4_1_a2_1[1]\, 
        \data_send_buffer_4_1_a2_3[1]\, 
        \data_send_buffer_4_1_a2_4[1]\, \data_all_4_i_i_0_0[140]\, 
        \data_all_4_i_i_0_1[140]\, N_391_i_0_o2_m2_e_1, 
        N_383_i_0_o4_0, N_383_i_0_o4_2, \data_all_4_i_i_o2_0[16]\, 
        \data_all_4_i_i_o2_1[16]\, cnt_recive_c14_m6_0_a2_2, 
        cnt_recive_c14_m6_0_a2_4, cnt_recive_c14_m6_0_a2_5, 
        cnt_recive_c14_m6_0_a2_6, \data_all_4_i_o2_i_o4_1[95]\, 
        cnt_recive_161_0, \data_all_4_i_i_a4_0[100]\, 
        \data_all_4_i_i_a4_0[101]\, \data_all_4_i_i_a4_0[102]\, 
        data_all_4_i_a2_0_128_m1_e_0, 
        data_all_4_i_a2_0_131_m1_e_0, 
        data_all_4_i_a2_0_129_m1_e_0, \data_all_4_i_i_a4_0[85]\, 
        \data_all_4_i_i_a4_0[84]\, \data_all_4_i_i_a4_0[87]\, 
        \data_all_4_i_i_a4_0[82]\, \data_all_4_i_i_a4_0[83]\, 
        \data_all_4_i_i_a4_0[86]\, \data_all_4_i_i_a4_0[115]\, 
        \data_all_4_i_i_a4_0[116]\, \data_all_4_i_i_a4_0[117]\, 
        \data_all_4_i_i_a4_0[52]\, \data_all_4_i_i_a4_0[55]\, 
        \data_all_4_i_i_a4_0[119]\, \data_all_4_i_i_a4_0[6]\, 
        \data_all_4_i_i_a4_0[7]\, \data_all_4_i_i_a4_0[51]\, 
        \data_all_4_i_i_a4_0[53]\, \data_all_4_i_i_a4_0[118]\, 
        \data_all_4_i_i_a4_0[63]\, \data_all_4_i_i_a4_0[61]\, 
        \data_all_4_i_i_a4_0[16]\, \data_all_4_i_i_a4_0[19]\, 
        \data_all_4_i_i_a4_0[17]\, \data_all_4_i_i_a4_0[18]\, 
        \data_all_4_i_i_a4_0[21]\, \data_all_4_i_i_a4_0[20]\, 
        \data_all_4_i_i_a4_0[23]\, \data_all_4_i_i_a4_0[22]\, 
        \data_all_4_i_i_a4_0[14]\, data_all_4_i_i_a4_134_m2_0, 
        data_all_4_i_i_a4_133_m2_0, 
        \data_send_buffer_4_1_0_a4_12_0[3]\, 
        \data_send_buffer_4_1_a2_13_0[4]\, \data_all_4_i_0[98]\, 
        \data_all_4_i_0[97]\, \data_all_4_i_0[96]\, 
        \data_all_4_i_0[158]\, \data_all_4_i_0[152]\, 
        \data_all_4_i_0[154]\, \data_all_4_i_0[153]\, 
        \data_all_4_i_0[136]\, \data_all_4_i_0[137]\, 
        \data_all_4_i_0[138]\, \data_all_4_i_0[139]\, 
        \data_all_4_i_i_a4_0[70]\, \data_all_4_i_0[106]\, 
        \data_all_4_i_0[104]\, \data_all_4_i_0[124]\, 
        \data_all_4_i_0[107]\, \data_all_4_i_0[121]\, 
        \data_all_4_i_0[105]\, \data_all_4_i_0[110]\, 
        \data_all_4_i_0[120]\, \data_all_4_i_0[122]\, 
        \data_all_4_i_0[49]\, \data_all_4_i_0[112]\, 
        \data_all_4_i_0[113]\, \data_all_4_i_0[48]\, 
        \data_all_4_i_0[54]\, \data_all_4_i_0[114]\, 
        \data_all_4_i_0[59]\, \data_all_4_i_0[56]\, 
        \data_all_4_i_0[58]\, \data_all_4_i_0[8]\, 
        \data_all_4_i_0[9]\, \data_all_4_i_0[10]\, 
        \data_all_4_i_0[37]\, \data_send_buffer_4_1_1[1]\, 
        \data_send_buffer_4_1_2[1]\, \data_send_buffer_4_1_3[1]\, 
        \data_send_buffer_4_1_4[1]\, \data_send_buffer_4_1_5[1]\, 
        \data_send_buffer_4_1_6[1]\, \data_send_buffer_4_1_7[1]\, 
        \data_send_buffer_4_1_9[1]\, \data_send_buffer_4_1_12[1]\, 
        \data_send_buffer_4_1_13[1]\, 
        \data_send_buffer_4_1_14[1]\, 
        \data_send_buffer_4_1_15[1]\, \data_send_buffer_4_1_0[4]\, 
        \data_send_buffer_4_1_3[4]\, \data_send_buffer_4_1_6[4]\, 
        \data_send_buffer_4_1_7_0[4]\, 
        \data_send_buffer_4_1_9[4]\, 
        \data_send_buffer_4_1_10_0[4]\, 
        \data_send_buffer_4_1_12[4]\, 
        \data_send_buffer_4_1_13[4]\, 
        \data_send_buffer_4_1_15[4]\, \data_all_4_i_0[64]\, 
        \data_all_4_i_0[33]\, \data_all_4_i_0[65]\, 
        \data_all_4_i_0[32]\, \data_all_4_i_0[39]\, 
        \data_send_buffer_4_1_0_1[5]\, 
        \data_send_buffer_4_1_0_5[5]\, 
        \data_send_buffer_4_1_0_6[5]\, 
        \data_send_buffer_4_1_0_8[5]\, 
        \data_send_buffer_4_1_0_9[5]\, 
        \data_send_buffer_4_1_0_10[5]\, 
        \data_send_buffer_4_1_0_11[5]\, 
        \data_send_buffer_4_1_0_15[5]\, 
        \data_send_buffer_4_1_0_16[5]\, 
        \data_send_buffer_4_1_0_17[5]\, \data_all_4_i_0[131]\, 
        \data_all_4_i_0[128]\, \data_all_4_i_0[129]\, 
        \data_send_buffer_4_1_0_1[3]\, 
        \data_send_buffer_4_1_0_6[3]\, 
        \data_send_buffer_4_1_0_7[3]\, 
        \data_send_buffer_4_1_0_8[3]\, 
        \data_send_buffer_4_1_0_9[3]\, 
        \data_send_buffer_4_1_0_12[3]\, 
        \data_send_buffer_4_1_0_14[3]\, 
        \data_send_buffer_4_1_0_15[3]\, 
        \data_send_buffer_4_1_0_16[3]\, 
        \data_send_buffer_4_1_0_17[3]\, 
        \data_send_buffer_4_1_0[0]\, \data_send_buffer_4_1_2[0]\, 
        \data_send_buffer_4_1_3[0]\, \data_send_buffer_4_1_5[0]\, 
        \data_send_buffer_4_1_6[0]\, \data_send_buffer_4_1_8[0]\, 
        \data_send_buffer_4_1_10_0[0]\, 
        \data_send_buffer_4_1_13[0]\, 
        \data_send_buffer_4_1_14[0]\, 
        \data_send_buffer_4_1_15[0]\, 
        \data_send_buffer_4_1_16[0]\, \data_send_buffer_4_1_0[2]\, 
        \data_send_buffer_4_1_1[2]\, \data_send_buffer_4_1_3[2]\, 
        \data_send_buffer_4_1_6[2]\, \data_send_buffer_4_1_7[2]\, 
        \data_send_buffer_4_1_8[2]\, \data_send_buffer_4_1_9[2]\, 
        \data_send_buffer_4_1_12[2]\, 
        \data_send_buffer_4_1_13[2]\, 
        \data_send_buffer_4_1_15[2]\, 
        \data_send_buffer_4_1_16[2]\, 
        \data_send_buffer_4_1_17[2]\, \data_send_buffer_4_1_0[7]\, 
        \data_send_buffer_4_1_2_0[7]\, 
        \data_send_buffer_4_1_5[7]\, \data_send_buffer_4_1_6[7]\, 
        \data_send_buffer_4_1_7[7]\, \data_send_buffer_4_1_8[7]\, 
        \data_send_buffer_4_1_11[7]\, 
        \data_send_buffer_4_1_13[7]\, 
        \data_send_buffer_4_1_14[7]\, 
        \data_send_buffer_4_1_15[7]\, 
        \data_send_buffer_4_1_16[7]\, 
        data_send_buffer_4_1_0_a4_11_out, 
        data_send_buffer_4_1_a2_7_out, 
        data_send_buffer_4_1_a2_17_out, 
        data_send_buffer_4_1_a2_23_0_a4_s_out, 
        cnt_send_c24_m6_0_a2_out, data_send_buffer_4_1_16_out, 
        data_send_buffer_4_1_0_1_out, 
        data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, 
        idle_recive_down_i_0, N_432_i, un3_end_flag, 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\, 
        \un1_cnt_flag_1[2]\, cnt_flag_0_sqmuxa, 
        cnt_recive_end_0_sqmuxa, un5_idle_recive_17, 
        un5_idle_recive_18, un5_idle_recive_2, 
        un5_idle_recive_4_0, un5_idle_recive_5, 
        un5_idle_recive_8_0, un5_idle_recive_12_0, 
        un5_idle_recive_15, \send_end\, 
        \idle_recive_down_RNIIQRK\, 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, cnt_sende_0, 
        \cnt_send_0[4]_net_1\, \cnt_send_0[1]_net_1\, 
        \cnt_send_0[0]_net_1\, \cnt_recive_0[1]_net_1\, 
        \single_recive_0/un1_data_recive19_0_1\, 
        \single_recive_0/un1_data_recive19_0_a2_3\, 
        \single_recive_0/N_29\, \single_recive_0/N_46\, 
        \single_recive_0/N_64\, \single_recive_0/N_63\, 
        \single_recive_0/un1_data_recive19_0_a2_0_5\, 
        \single_recive_0/N_66\, 
        \single_recive_0/un1_data_recive19_0_a2_10_1\, 
        \single_recive_0/un1_data_recive19_0_a2_10_0\, 
        \single_recive_0/un1_cnt_6\, 
        \single_recive_0/un1_data_recive19\, 
        \single_recive_0/N_47\, \single_recive_0/N_48\, 
        \single_recive_0/cnt[9]_net_1\, 
        \single_recive_0/cnt[10]_net_1\, 
        \single_recive_0/un1_data_recive19_0_a2_9_2\, 
        \single_recive_0/un1_cnt_0_a2_2\, 
        \single_recive_0/N_64_1\, \single_recive_0/cnt[8]_net_1\, 
        \single_recive_0/cnt[3]_net_1\, 
        \single_recive_0/un1_data_recive19_0_a2_8_3_0\, 
        \single_recive_0/cnt[0]_net_1\, 
        \single_recive_0/cnt_recive_end_0_sqmuxa_1\, 
        \single_recive_0/idle_recive_net_1\, 
        \single_recive_0/cnt[1]_net_1\, 
        \single_recive_0/DWACT_FINC_E[0]\, 
        \single_recive_0/DWACT_FINC_E[4]\, 
        \single_recive_0/data_all_4_i_0[57]_net_1\, 
        \single_recive_0/data_all_4_i_0[50]_net_1\, 
        \single_recive_0/data_all_4_i_0[123]_net_1\, 
        \single_recive_0/cnt_delay_37_0_net_1\, 
        \single_recive_0/un1_data_recive19_0_a2_1\, 
        \single_recive_0/un1_data_recive19_0_a2_0\, 
        \single_recive_0/cnt[2]_net_1\, 
        \single_recive_0/cnt[11]_net_1\, 
        \single_recive_0/cnt[7]_net_1\, 
        \single_recive_0/un1_data_recive19_0_a2_0_2\, 
        \single_recive_0/un1_data_recive19_0_a2_0_1\, 
        \single_recive_0/un1_data_recive19_0_a2_0_3\, 
        \single_recive_0/cnt[6]_net_1\, 
        \single_recive_0/cnt[4]_net_1\, 
        \single_recive_0/un1_data_recive19_0_a2_1_2\, 
        \single_recive_0/N_65_3\, \single_recive_0/N_47_1\, 
        \single_recive_0/un1_data_recive19_0_a2_1_1\, 
        \single_recive_0/un1_data_recive19_0_a2_2_3\, 
        \single_recive_0/N_68\, \single_recive_0/N_69\, 
        \single_recive_0/un1_data_recive19_0_a2_2_2\, 
        \single_recive_0/un1_data_recive19_0_a2_2_1\, 
        \single_recive_0/cnt[5]_net_1\, 
        \single_recive_0/un1_cnt_0_a2_6\, 
        \single_recive_0/un1_cnt_0_a2_5\, 
        \single_recive_0/un1_cnt_0_a2_1\, 
        \single_recive_0/un1_cnt_0_a2_0\, 
        \single_recive_0/data_recive_11_0_o2_1[7]\, 
        \single_recive_0/un3_cnt_4_0_a2_0\, 
        \single_recive_0/N_50\, 
        \single_recive_0/data_recive_11_0_o2_0[7]\, 
        \single_recive_0/un3_cnt_5\, 
        \single_recive_0/un1_data_recive19_0_a2_5_1\, 
        \single_recive_0/un1_data_recive19_0_a2_7_2\, 
        \single_recive_0/un1_data_recive19_0_a2_6_2\, 
        \single_recive_0/un1_data_recive19_0_a2_3_0\, 
        \single_recive_0/un1_data_recive19_0_a2_4_1\, 
        \single_recive_0/un1_data_recive19_0_a2_4_0\, 
        \single_recive_0/rx_uart_m_5\, \single_recive_0/N_27\, 
        \single_recive_0/N_26\, \single_recive_0/N_51\, 
        \single_recive_0/N_54\, \single_recive_0/un1_cnt\, 
        \single_recive_0/N_34\, \single_recive_0/N_762\, 
        \single_recive_0/N_763\, \single_recive_0/N_764\, 
        \single_recive_0/N_765\, 
        \single_recive_0/cnt_delay_c6_net_1\, 
        \single_recive_0/cnt_delay_c5_net_1\, 
        \single_recive_0/cnt_delay_c4_net_1\, 
        \single_recive_0/cnt_delay_c3_net_1\, 
        \single_recive_0/cnt_delay_c2_net_1\, 
        \single_recive_0/cnt_delay_c1_net_1\, 
        \single_recive_0/data_recive_m[7]\, 
        \single_recive_0/N_57_1\, \single_recive_0/un3_cnt_3\, 
        \single_recive_0/data_recive_11[7]\, 
        \single_recive_0/data_recive26_2\, 
        \single_recive_0/data_recive_11[2]\, 
        \single_recive_0/data_recive_m[2]\, 
        \single_recive_0/N_61\, \single_recive_0/N_43\, 
        \single_recive_0/data_recive_11[6]\, 
        \single_recive_0/rx_down_net_1\, 
        \single_recive_0/un2_cnt\, \single_recive_0/cnt_4[6]\, 
        \single_recive_0/recive_net_1\, \single_recive_0/N_645\, 
        \single_recive_0/N_1662\, \single_recive_0/N_615\, 
        \single_recive_0/N_919\, \single_recive_0/cnt_4[7]\, 
        \single_recive_0/cnt_4[0]\, \single_recive_0/cnt_4[3]\, 
        \single_recive_0/cnt_4[11]\, \single_recive_0/cnt_4[5]\, 
        \single_recive_0/rx_uart_m\, 
        \single_recive_0/data_recive_11[0]\, 
        \single_recive_0/rx_uart_m_0\, 
        \single_recive_0/rx_uart_m_2\, 
        \single_recive_0/data_recive_11[3]\, 
        \single_recive_0/data_recive_m[4]\, 
        \single_recive_0/data_recive_11[4]\, 
        \single_recive_0/rx_uart_m_4\, 
        \single_recive_0/data_recive_11[5]\, 
        \single_recive_0/data_recive_11[1]\, 
        \single_recive_0/rx_down_1\, 
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
        \single_recive_0/N_10\, \signal_send_0/un12_cnt_delay\, 
        \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, 
        \signal_send_0/end_flag_net_1\, \signal_send_0/N_11\, 
        \signal_send_0/cnt[1]_net_1\, 
        \signal_send_0/cnt[0]_net_1\, 
        \signal_send_0/cnt[3]_net_1\, 
        \signal_send_0/DWACT_FINC_E[0]\, 
        \signal_send_0/cnt[8]_net_1\, 
        \signal_send_0/DWACT_FINC_E[4]\, 
        \signal_send_0/vld_send_i\, 
        \signal_send_0/un1_tx_uart27_1_1\, 
        \signal_send_0/tx_uart36\, \signal_send_0/tx_uart37\, 
        \signal_send_0/tx_uart27\, 
        \signal_send_0/tx_uart_11_iv_7\, 
        \signal_send_0/tx_uart_11_iv_1\, 
        \signal_send_0/tx_uart_11_iv_0\, 
        \signal_send_0/tx_uart_11_iv_4\, 
        \signal_send_0/tx_uart30\, \signal_send_0/un1_tx_uart42\, 
        \signal_send_0/tx_uart_11_iv_3\, 
        \signal_send_0/tx_uart33\, \signal_send_0/data_send_m[0]\, 
        \signal_send_0/tx_uart_11_iv_2\, 
        \signal_send_0/tx_uart35\, \signal_send_0/data_send_m[6]\, 
        \signal_send_0/tx_uart32\, \signal_send_0/parity_check_m\, 
        \signal_send_0/tx_uart31\, \signal_send_0/data_send_m[1]\, 
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
        \signal_send_0/un1_tx_uart27_8\, 
        \signal_send_0/un1_tx_uart27_2\, 
        \signal_send_0/un1_tx_uart27_1_0\, 
        \signal_send_0/un1_tx_uart27_5\, 
        \signal_send_0/un1_tx_uart27_7\, 
        \signal_send_0/un1_tx_uart27_4\, 
        \signal_send_0/tx_uart29\, 
        \signal_send_0/un12_cnt_delay_5\, 
        \signal_send_0/un12_cnt_delay_1_net_1\, 
        \signal_send_0/un12_cnt_delay_0\, 
        \signal_send_0/un12_cnt_delay_3_net_1\, 
        \signal_send_0/un12_cnt_delay_4_net_1\, 
        \signal_send_0/un12_cnt_delay_1_0_net_1\, 
        \signal_send_0/tx_uart28_4\, \signal_send_0/un1_cnt_2\, 
        \signal_send_0/tx_uart28_3\, \signal_send_0/cnt[7]_net_1\, 
        \signal_send_0/tx_uart28_1\, \signal_send_0/cnt[2]_net_1\, 
        \signal_send_0/cnt[5]_net_1\, \signal_send_0/tx_uart30_5\, 
        \signal_send_0/tx_uart27_3\, \signal_send_0/un1_cnt_1\, 
        \signal_send_0/tx_uart30_4\, \signal_send_0/tx_uart30_2\, 
        \signal_send_0/tx_uart27_6\, \signal_send_0/tx_uart30_3\, 
        \signal_send_0/cnt[9]_net_1\, \signal_send_0/tx_uart30_1\, 
        \signal_send_0/cnt[6]_net_1\, \signal_send_0/tx_uart34_5\, 
        \signal_send_0/cnt[11]_net_1\, 
        \signal_send_0/tx_uart34_4_0\, 
        \signal_send_0/tx_uart34_4\, \signal_send_0/tx_uart34_3\, 
        \signal_send_0/tx_uart32_0\, \signal_send_0/cnt[4]_net_1\, 
        \signal_send_0/tx_uart29_7\, \signal_send_0/tx_uart29_3\, 
        \signal_send_0/tx_uart29_2\, \signal_send_0/un1_cnt_4\, 
        \signal_send_0/tx_uart29_6\, \signal_send_0/tx_uart29_1\, 
        \signal_send_0/tx_uart29_0\, \signal_send_0/tx_uart35_5\, 
        \signal_send_0/cnt[10]_net_1\, 
        \signal_send_0/tx_uart35_4_0\, 
        \signal_send_0/tx_uart35_4\, \signal_send_0/tx_uart35_3\, 
        \signal_send_0/tx_uart27_2\, \signal_send_0/tx_uart27_1\, 
        \signal_send_0/tx_uart27_4\, \signal_send_0/tx_uart31_7\, 
        \signal_send_0/tx_uart31_6\, \signal_send_0/tx_uart31_3\, 
        \signal_send_0/tx_uart31_5\, \signal_send_0/tx_uart31_1\, 
        \signal_send_0/tx_uart33_5\, \signal_send_0/tx_uart33_4\, 
        \signal_send_0/tx_uart33_2\, 
        \signal_send_0/tx_uart33_3_0\, 
        \signal_send_0/tx_uart33_1\, 
        \signal_send_0/tx_uart32_6_0\, 
        \signal_send_0/tx_uart32_5\, 
        \signal_send_0/tx_uart32_5_0\, 
        \signal_send_0/tx_uart32_4\, \signal_send_0/tx_uart32_1\, 
        \signal_send_0/tx_uart37_6\, \signal_send_0/tx_uart37_5\, 
        \signal_send_0/tx_uart37_4\, \signal_send_0/un1_cnt_6\, 
        \signal_send_0/tx_uart36_6\, \signal_send_0/tx_uart36_5\, 
        \signal_send_0/tx_uart36_3\, \signal_send_0/tx_uart36_4\, 
        \signal_send_0/tx_uart36_1\, \signal_send_0/un1_cnt_5\, 
        \signal_send_0/un1_cnt_1_0\, \signal_send_0/un1_cnt_4_0\, 
        \signal_send_0/un1_cnt_0\, 
        \signal_send_0/end_flag_0_sqmuxa_7\, 
        \signal_send_0/end_flag_0_sqmuxa_1\, 
        \signal_send_0/end_flag_0_sqmuxa_0\, 
        \signal_send_0/end_flag_0_sqmuxa_5\, 
        \signal_send_0/end_flag_0_sqmuxa_6\, 
        \signal_send_0/cnt_end[0]_net_1\, 
        \signal_send_0/cnt_end[1]_net_1\, 
        \signal_send_0/idle_send_net_1\, 
        \signal_send_0/end_flag_0_sqmuxa_3\, 
        \signal_send_0/cnt_end[5]_net_1\, 
        \signal_send_0/cnt_end[4]_net_1\, 
        \signal_send_0/cnt_end[6]_net_1\, 
        \signal_send_0/cnt_end[8]_net_1\, 
        \signal_send_0/cnt_end[7]_net_1\, 
        \signal_send_0/cnt_end[2]_net_1\, 
        \signal_send_0/cnt_end[9]_net_1\, 
        \signal_send_0/cnt_end[3]_net_1\, 
        \signal_send_0/tx_uart_11\, \signal_send_0/tx_uart27_9\, 
        \signal_send_0/un1_tx_uart27\, 
        \signal_send_0/parity_check_10_iv\, 
        \signal_send_0/cnt_4[2]\, \signal_send_0/send_net_1\, 
        \signal_send_0/cnt_4[4]\, \signal_send_0/I_12_0\, 
        \signal_send_0/cnt_4[6]\, \signal_send_0/cnt_4[8]\, 
        \signal_send_0/cnt_4[11]\, 
        \signal_send_0/tx_uart_11_sqmuxa\, 
        \signal_send_0/parity_check_0_sqmuxa\, 
        \signal_send_0/cnt_4[0]\, 
        \signal_send_0/parity_check_net_1\, 
        \signal_send_0/un12_receive_end\, 
        \signal_send_0/un12_receive_endlt7\, 
        \signal_send_0/cnt_end_n9\, \signal_send_0/cnt_end_c7\, 
        \signal_send_0/cnt_end_n8\, \signal_send_0/cnt_end_n7\, 
        \signal_send_0/cnt_end_c6\, \signal_send_0/cnt_end_n6\, 
        \signal_send_0/cnt_end_c5\, \signal_send_0/cnt_end_n5\, 
        \signal_send_0/cnt_end_c4\, \signal_send_0/cnt_end_n4\, 
        \signal_send_0/cnt_end_c2\, \signal_send_0/cnt_end_n3\, 
        \signal_send_0/cnt_end_n2\, 
        \signal_send_0/cnt_end_RNO[0]_net_1\, 
        \signal_send_0/cnt_end_n1\, 
        \signal_send_0/end_flag_2_sqmuxa\, 
        \signal_send_0/un2_cnt\, 
        \signal_send_0/end_flag_1_sqmuxa\, 
        \signal_send_0/un2_vld_send_down\, 
        \signal_send_0/vld_send_down_net_1\, 
        \signal_send_0/vld_send_down_1\, 
        \signal_send_0/vld_send_fall_i_0\, \signal_send_0/I_5_0\, 
        \signal_send_0/I_9_0\, \signal_send_0/I_14_0\, 
        \signal_send_0/I_20_0\, \signal_send_0/I_26_0\, 
        \signal_send_0/I_28_0\, \signal_send_0/N_2\, 
        \signal_send_0/DWACT_FINC_E[6]\, 
        \signal_send_0/DWACT_FINC_E[2]\, 
        \signal_send_0/DWACT_FINC_E[5]\, \signal_send_0/N_3\, 
        \signal_send_0/DWACT_FINC_E[3]\, \signal_send_0/N_5\, 
        \signal_send_0/N_6\, \signal_send_0/N_7\, 
        \signal_send_0/DWACT_FINC_E[1]\, \signal_send_0/N_8\, 
        \signal_send_0/N_10\, \sys_clk_pad/U0/NET1\, 
        \sys_rest_pad/U0/NET1\, \rx_uart_pad/U0/NET1\, 
        \tx_uart_pad/U0/NET1\, \tx_uart_pad/U0/NET2\, \VCC\, 
        AFLSDF_VCC, AFLSDF_GND, \AFLSDF_INV_0\ : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \data_send_buffer_RNO_25[5]\ : AOI1
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        \data_all[77]_net_1\, C => 
        \data_send_buffer_RNO_29[5]_net_1\, Y => 
        data_send_buffer_4_1_0_7_5_N_4);
    
    send_end_RNO_40 : XOR2
      port map(A => \cnt_send[9]_net_1\, B => 
        \cnt_recive[9]_net_1\, Y => un12_cnt_send_9);
    
    \single_recive_0/data_recive_RNO_1[6]\ : NOR3C
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        rx_uart_c, C => \single_recive_0/N_68\, Y => 
        \single_recive_0/rx_uart_m_5\);
    
    \cnt_recive_RNI9FLS5_0[4]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_1, B => N_362, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_o2_i_o4_159_m2_e_3);
    
    \cnt_recive_RNI2N7M1[2]\ : NOR2A
      port map(A => N_815_2, B => N_398, Y => N_1770_1);
    
    \data_send_buffer_RNO_19[2]\ : NOR2B
      port map(A => \data_send_buffer_4_1_a2_16_1[2]\, B => 
        N_1842, Y => N_569);
    
    \data_all_RNO_0[33]\ : AO1A
      port map(A => \data_all[33]_net_1\, B => N_1633, C => N_398, 
        Y => \data_all_4_i_0[33]\);
    
    \cnt_recive_RNICR3EC_1[3]\ : AND3B
      port map(A => \data_all_4_i_o2_0_i_o2_0_11[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, C => 
        data_all_4_i_o2_i_o4_47_m2_e_1, Y => 
        data_all_4_i_o2_i_o4_47_N_5_mux);
    
    send_end : DFN1C0
      port map(D => N_413, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \send_end\);
    
    \single_recive_0/data_recive_RNO_0[7]\ : OA1
      port map(A => \single_recive_0/N_57_1\, B => 
        \single_recive_0/un3_cnt_3\, C => \data_recive_buffer[7]\, 
        Y => \single_recive_0/data_recive_m[7]\);
    
    \data_all_RNO_0[107]\ : AO1D
      port map(A => \data_all[107]_net_1\, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[107]\);
    
    \cnt_recive_0_RNIO30E5_0[1]\ : NOR3A
      port map(A => N_392_i_0_o4_m2_e_0, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        N_392_i_0_o4_m2_e_2);
    
    \signal_send_0/cnt_RNI8LVP[6]\ : NOR2
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart29_3\);
    
    \cnt_recive_0_RNIO30E5_4[1]\ : NOR3
      port map(A => N_385_i_0_o4_out, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        N_385_i_0_o4_m2_e_1);
    
    \cnt_recive[14]\ : DFN1E0C0
      port map(D => cnt_recive_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[14]_net_1\);
    
    \cnt_send[8]\ : DFN1E1C0
      port map(D => cnt_send_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[8]_net_1\);
    
    \signal_send_0/send_RNIACO65\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/tx_uart37\, Y => 
        \signal_send_0/un1_tx_uart42\);
    
    \data_all[19]\ : DFN1E0C0
      port map(D => N_1594, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[19]_net_1\);
    
    \signal_send_0/cnt[1]\ : DFN1C0
      port map(D => \signal_send_0/I_5_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[1]_net_1\);
    
    \data_all_RNO_1[2]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, Y => N_1536);
    
    \data_all_RNO_0[98]\ : AO1D
      port map(A => \data_all[98]_net_1\, B => 
        N_385_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[98]\);
    
    \cnt_recive_RNO[2]\ : XA1B
      port map(A => \cnt_recive[2]_net_1\, B => cnt_recive_c1, C
         => N_398, Y => cnt_recive_n2);
    
    \signal_send_0/cnt_RNIMTUD2[4]\ : NOR3C
      port map(A => \signal_send_0/tx_uart29_3\, B => 
        \signal_send_0/tx_uart29_2\, C => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart29_7\);
    
    send_end_RNO_10 : XO1
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_send[8]_net_1\, C => un12_cnt_send_14, Y => 
        send_end_0_sqmuxa_i_10);
    
    \signal_send_0/cnt_RNIAHDJ1[3]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_6\, B => 
        \signal_send_0/cnt[3]_net_1\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart31_7\);
    
    \signal_send_0/tx_uart_RNO_2\ : OR3
      port map(A => \signal_send_0/tx_uart_11_iv_1\, B => 
        \signal_send_0/tx_uart_11_iv_0\, C => 
        \signal_send_0/tx_uart_11_iv_4\, Y => 
        \signal_send_0/tx_uart_11_iv_7\);
    
    \data_send_buffer_RNO_22[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        N_1841, C => \data_all[74]_net_1\, Y => N_565);
    
    \data_send_buffer_RNO_21[4]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        \data_all[68]_net_1\, Y => 
        \data_send_buffer_RNO_21[4]_net_1\);
    
    \single_recive_0/data_recive[0]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[0]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[0]\);
    
    \data_all_RNO[113]\ : OA1C
      port map(A => N_387_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[113]\, Y
         => N_127);
    
    \cnt_send_0_RNIFIO51[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_23_0_a2_out, B => 
        N_398, Y => N_1842);
    
    \data_send_buffer_RNO_2[6]\ : NOR3B
      port map(A => un38_data_send_buffer_1135_1, B => 
        \data_send_buffer_4_1_a2_3[1]\, C => I_14_1, Y => 
        \un38_data_send_buffer[6]\);
    
    \cnt_send_0_RNIQPPF1[4]\ : NOR3C
      port map(A => cnt_send_c28_m6_0_a2_2, B => 
        \cnt_send_0[4]_net_1\, C => cnt_send_c28_m6_0_a2_3, Y => 
        cnt_send_c28_m6_0_a2_5);
    
    \cnt_recive_end_RNO[2]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n2_tz, Y => cnt_recive_end_n2);
    
    \data_send_buffer_RNO_6[6]\ : NOR3A
      port map(A => \data_all[6]_net_1\, B => I_12_1, C => 
        \cnt_send_0[0]_net_1\, Y => un38_data_send_buffer_1135_1);
    
    \data_send_buffer_RNO_11[5]\ : NOR2B
      port map(A => \data_all[93]_net_1\, B => N_1583, Y => 
        N_1819);
    
    \data_all_RNO_0[72]\ : NOR2
      port map(A => \data_all[72]_net_1\, B => 
        \un46_data_all[80]\, Y => N_794);
    
    \cnt_recive_0_RNIRFEVB_5[1]\ : OR2
      port map(A => N_383_i_0_o4_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => N_456);
    
    \data_send_buffer_RNO_11[6]\ : MX2
      port map(A => N_1651, B => N_1650, S => 
        \cnt_send_0[1]_net_1\, Y => N_679_3);
    
    \cnt_send_RNO[26]\ : XA1B
      port map(A => cnt_send_c25, B => \cnt_send[26]_net_1\, C
         => N_398, Y => cnt_send_n26);
    
    \cnt_recive_0_RNIRFEVB[1]\ : OR3
      port map(A => \data_all_4_i_o2_0_i_o2_0_11[111]\, B => 
        \data_all_4_i_i_o2_1[16]\, C => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => N_443);
    
    \cnt_recive_end_RNIL5IA1[6]\ : NOR3C
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        cnt_recive_end_c4, C => \cnt_recive_end[6]_net_1\, Y => 
        cnt_recive_end_c6);
    
    \cnt_recive_RNINLUA1[10]\ : NOR3C
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_recive[10]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        cnt_recive_c10_m6_0_a2_4);
    
    \single_recive_0/cnt_RNIB0DI[11]\ : NOR2
      port map(A => \single_recive_0/cnt[11]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_0\);
    
    \cnt_send[12]\ : DFN1E1C0
      port map(D => cnt_send_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[12]_net_1\);
    
    \single_recive_0/cnt_delay_n8\ : AX1C
      port map(A => \single_recive_0/cnt_delay_c6_net_1\, B => 
        \single_recive_0/cnt_delay_37_0_net_1\, C => 
        \single_recive_0/N_919\, Y => cnt_delay_n8);
    
    send_end_RNO_19 : XOR2
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => un12_cnt_send_18);
    
    \cnt_send_RNI6AHL1[5]\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[5]_net_1\, 
        C => cnt_send_c13_m6_0_a2_4_4, Y => 
        cnt_send_c13_m6_0_a2_4_6);
    
    \cnt_send_0_RNINLE61_1[1]\ : NOR3A
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \cnt_send[2]_net_1\, C => \cnt_send[3]_net_1\, Y => 
        N_1850);
    
    \cnt_recive_RNO[20]\ : NOR2A
      port map(A => cnt_recive_n20_tz, B => N_398, Y => 
        cnt_recive_n20);
    
    \data_all_RNO[27]\ : NOR2A
      port map(A => N_1657, B => N_398, Y => N_295);
    
    \data_all[35]\ : DFN1E0C0
      port map(D => N_178, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[35]_net_1\);
    
    \cnt_recive_end_RNO_0[9]\ : NOR3C
      port map(A => receive_end2lto7, B => cnt_recive_end_c6, C
         => receive_end2lto8, Y => cnt_recive_end_19_0);
    
    \cnt_recive_RNICR3EC_0[3]\ : OR3
      port map(A => data_all_4_i_o2_i_o2_out, B => N_426, C => 
        \data_all_4_i_o2_i_o4_0[39]\, Y => N_1633);
    
    \data_all_RNO_0[140]\ : OA1A
      port map(A => \data_all_4_i_o2_0_i_o2_0_0_1[111]\, B => 
        \data_all[140]_net_1\, C => \data_all_4_i_i_0_0[140]\, Y
         => \data_all_4_i_i_0_1[140]\);
    
    \data_all[155]\ : DFN1E0C0
      port map(D => N_1611, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[155]_net_1\);
    
    data_all_4_i_o2_i_o4_111_m2_e_1 : NOR3B
      port map(A => N_432_i, B => \cnt_recive[0]_net_1\, C => 
        un46_data_all_0_a2_1_o2_0_out, Y => 
        \data_all_4_i_o2_i_o4_111_m2_e_1\);
    
    \single_recive_0/data_recive_RNO_0[4]\ : NOR2A
      port map(A => \data_recive_buffer[4]\, B => 
        \single_recive_0/N_63\, Y => 
        \single_recive_0/data_recive_m[4]\);
    
    \single_recive_0/cnt_RNI3OCI[0]\ : NOR2B
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_4_1\);
    
    \data_all_RNO_1[132]\ : XNOR2
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \data_all[132]_net_1\, Y => \data_all_RNO_1[132]_net_1\);
    
    \single_recive_0/idle_recive_RNIGD8Q\ : NOR3A
      port map(A => rx_uart_c, B => 
        \single_recive_0/idle_recive_net_1\, C => N_398, Y => 
        \single_recive_0/cnt_recive_end_0_sqmuxa_1\);
    
    \data_all_RNO_0[79]\ : NOR2
      port map(A => \data_all[79]_net_1\, B => 
        \un46_data_all[80]\, Y => N_782);
    
    \data_all_RNO[98]\ : OA1C
      port map(A => N_385_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[98]\, Y => 
        N_157);
    
    \cnt_send_RNI6DSJ[10]\ : NOR2B
      port map(A => \cnt_send[9]_net_1\, B => 
        \cnt_send[10]_net_1\, Y => cnt_send_c11_m6_0_a2_1);
    
    \cnt_delay[4]\ : DFN1E1C0
      port map(D => cnt_delay_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[4]_net_1\);
    
    send_end_RNO_26 : OR3
      port map(A => N_593_i, B => un12_cnt_send_30, C => 
        un12_cnt_send_6, Y => send_end_0_sqmuxa_i_12);
    
    \data_all_RNO_0[41]\ : NOR2
      port map(A => \data_all[41]_net_1\, B => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_869);
    
    \single_recive_0/data_all_4_i_a2[89]\ : NOR2A
      port map(A => N_1618, B => \data_all[89]_net_1\, Y => 
        \single_recive_0/N_762\);
    
    \signal_send_0/cnt_RNI2AVD2[5]\ : NOR3C
      port map(A => \signal_send_0/un1_cnt_2\, B => 
        \signal_send_0/un1_cnt_1_0\, C => 
        \signal_send_0/un1_cnt_4\, Y => \signal_send_0/un1_cnt_5\);
    
    \data_all[112]\ : DFN1E0C0
      port map(D => N_129, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[112]_net_1\);
    
    \signal_send_0/end_flag_RNIFP23\ : NOR2
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        \cnt_delay[0]_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_0\);
    
    \data_all_RNO_0[15]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[15]_net_1\, S => N_1636, Y => N_1664);
    
    \cnt_send_RNI2O5N[17]\ : NOR3C
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_send[17]_net_1\, C => \cnt_send_0[4]_net_1\, Y => 
        cnt_send_c18_m6_0_a2_4);
    
    \single_recive_0/cnt_RNIPQBH4[11]\ : NOR3C
      port map(A => \single_recive_0/un1_data_recive19_0_a2_2_3\, 
        B => \single_recive_0/un1_data_recive19_0_a2_2_2\, C => 
        \single_recive_0/N_26\, Y => \single_recive_0/N_48\);
    
    \signal_send_0/cnt_RNI6RDD2[5]\ : NOR3C
      port map(A => \signal_send_0/tx_uart29_1\, B => 
        \signal_send_0/tx_uart29_0\, C => 
        \signal_send_0/tx_uart27_6\, Y => 
        \signal_send_0/tx_uart29_6\);
    
    \data_all_RNO[54]\ : OA1C
      port map(A => N_392_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[6]\, C => \data_all_4_i_0[54]\, Y => 
        N_243);
    
    \cnt_recive_0_RNIRFEVB_2[1]\ : NOR2A
      port map(A => N_392_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => 
        N_392_i_0_o4_N_5_mux);
    
    \data_all_RNO_0[157]\ : NOR2B
      port map(A => \data_all[157]_net_1\, B => N_1047, Y => 
        N_1793);
    
    send_end_RNO_7 : OR3
      port map(A => un12_cnt_send_20, B => un12_cnt_send_18, C
         => send_end_0_sqmuxa_i_4, Y => send_end_0_sqmuxa_i_14);
    
    \data_all_RNO_3[144]\ : XOR2
      port map(A => \data_recive_buffer[0]\, B => 
        \data_all[144]_net_1\, Y => \data_all_RNO_3[144]_net_1\);
    
    \single_recive_0/cnt_RNIN4241[1]\ : NOR2B
      port map(A => \single_recive_0/N_68\, B => 
        \single_recive_0/N_69\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_2_3\);
    
    \signal_send_0/cnt_RNISOCR4_0[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart36_5\, B => 
        \signal_send_0/tx_uart36_4\, C => 
        \signal_send_0/tx_uart36_6\, Y => 
        \signal_send_0/tx_uart36\);
    
    \data_send_buffer_RNO_26[5]\ : AO1
      port map(A => data_send_buffer_4_1_0_1tt_5_m3_0_a2_1, B => 
        N_1843, C => N_1826, Y => data_send_buffer_4_1_0_1_out);
    
    \data_all_RNO_4[140]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \data_recive_buffer[4]\, C => N_449_i_0_o4_0, Y => 
        \data_all_4_i_i_a0_1[140]\);
    
    \single_recive_0/un7_cnt_1_I_15\ : AND2
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[1]\);
    
    \single_recive_0/cnt_RNIUE2D1[1]\ : NOR3B
      port map(A => \single_recive_0/un1_data_recive19_0_a2_7_2\, 
        B => \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/N_63\);
    
    \data_send_buffer_RNO_25[7]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        N_1841, C => \data_all[127]_net_1\, Y => N_466);
    
    \data_all_RNO[26]\ : NOR3
      port map(A => N_1491, B => N_398, C => N_1492, Y => N_297);
    
    \data_all[102]\ : DFN1E0C0
      port map(D => N_258, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[102]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_10\ : AND3
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[0]\);
    
    \data_all_RNO[61]\ : MX2
      port map(A => N_1846, B => \data_all_4_i_i_a4_0[61]\, S => 
        N_456, Y => N_204);
    
    \data_send_buffer_RNO_22[7]\ : OA1
      port map(A => data_send_buffer_4_1_a2_2_out_0, B => 
        data_send_buffer_4_1_a2_10_out, C => N_1838, Y => 
        \data_send_buffer_4_1_2[7]\);
    
    \cnt_recive[27]\ : DFN1E0C0
      port map(D => cnt_recive_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[27]_net_1\);
    
    \data_send_buffer_RNO_2[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_9[3]\, B => N_1808, C
         => \data_send_buffer_4_1_0_14[3]\, Y => 
        \data_send_buffer_4_1_0_17[3]\);
    
    \data_send_buffer_RNO_17[1]\ : NOR2B
      port map(A => \data_all[81]_net_1\, B => N_1579, Y => N_583);
    
    \cnt_recive_RNIS39K1[15]\ : NOR3C
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[15]_net_1\, C => cnt_recive_c17_m6_0_a2_4_2, 
        Y => cnt_recive_c17_m6_0_a2_4_5);
    
    \data_all_RNO_1[140]\ : AO1D
      port map(A => \data_all_4_i_o2_0_i_o2_0_0_0[111]\, B => 
        N_449_i_0_o4_0, C => \data_all[140]_net_1\, Y => 
        \data_all_4_i_i_2[140]\);
    
    \data_all_RNO[90]\ : NOR2
      port map(A => N_1660, B => N_398, Y => N_173);
    
    \cnt_delay[0]\ : DFN1E1C0
      port map(D => N_1465, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_delaye, Q => \cnt_delay[0]_net_1\);
    
    \single_recive_0/cnt_delay_c6\ : NOR2B
      port map(A => \single_recive_0/cnt_delay_c5_net_1\, B => 
        \cnt_delay[6]_net_1\, Y => 
        \single_recive_0/cnt_delay_c6_net_1\);
    
    \data_all_RNO[130]\ : NOR3
      port map(A => N_681, B => N_398, C => N_680, Y => N_93);
    
    \data_all_RNO[106]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[106]\, Y
         => N_141);
    
    \data_all[87]\ : DFN1E0C0
      port map(D => N_240, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[87]_net_1\);
    
    \data_send_buffer_RNO_11[1]\ : OR3
      port map(A => N_578, B => \data_send_buffer_4_1_14_s_0[1]\, 
        C => N_574, Y => \data_send_buffer_4_1_1[1]\);
    
    \cnt_send_RNIHSGR_0[3]\ : NOR2A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_1848);
    
    \data_send_buffer_RNO_22[3]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => N_1863, C => 
        \data_all[155]_net_1\, Y => N_1801);
    
    \data_all_RNO[73]\ : NOR3
      port map(A => N_792, B => N_398, C => N_793, Y => N_205);
    
    \data_send_buffer_RNO_13[5]\ : AO1D
      port map(A => data_send_buffer_4_1_0_7_5_m4_0_0, B => 
        data_send_buffer_4_1_0_7_5_N_4, C => 
        data_send_buffer_4_1_0_1_out, Y => 
        \data_send_buffer_4_1_0_1[5]\);
    
    \data_all_RNO_0[22]\ : NOR2A
      port map(A => \data_all[22]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[22]\);
    
    \cnt_send_RNI87VA2[4]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => 
        send_end_0_sqmuxa_i_a2_m3_e_0, C => N_1840, Y => N_1865);
    
    \cnt_recive_0_RNIS52S1[1]\ : NOR3C
      port map(A => cnt_recive_c8_m6_0_a2_1, B => 
        cnt_recive_c8_m6_0_a2_0, C => \cnt_recive_0[1]_net_1\, Y
         => cnt_recive_c8_m6_0_a2_6);
    
    \cnt_recive_RNIB35M1[10]\ : OR2B
      port map(A => un5_idle_recive_9, B => un5_idle_recive_11, Y
         => \data_all_4_i_o2_0_i_o2_0_11_0[111]\);
    
    \single_recive_0/cnt_delay_c5\ : NOR2B
      port map(A => \single_recive_0/cnt_delay_c4_net_1\, B => 
        \cnt_delay[5]_net_1\, Y => 
        \single_recive_0/cnt_delay_c5_net_1\);
    
    \data_all_RNO[0]\ : NOR3
      port map(A => N_1539, B => N_398, C => N_1540, Y => N_349);
    
    \cnt_send_RNIGRGR[4]\ : NOR2A
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \data_send_buffer_4_1_a2_24_0_a4_s_0[7]\);
    
    \cnt_recive_RNO[8]\ : XA1B
      port map(A => cnt_recive_c7, B => \cnt_recive[8]_net_1\, C
         => N_398, Y => cnt_recive_n8);
    
    \cnt_send_RNI0E9J5[10]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_0_20, B => 
        send_end_0_sqmuxa_i_a2_0_19, Y => N_1888);
    
    \single_recive_0/cnt_RNO[11]\ : XA1
      port map(A => \single_recive_0/N_2\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[11]\);
    
    \data_all_RNO_0[138]\ : AO1D
      port map(A => \data_all[138]_net_1\, B => 
        N_449_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[138]\);
    
    \cnt_recive_0_RNIJ75U[1]\ : OR3B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => \cnt_recive_0[1]_net_1\, Y
         => N_385_i_0_o4_out);
    
    \single_recive_0/data_recive_RNI8JCEO[1]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_456, C => 
        \single_recive_0/data_all_4_i_0[57]_net_1\, Y => N_237);
    
    \signal_send_0/un7_cnt_1_I_30\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[5]\, Y => 
        \signal_send_0/DWACT_FINC_E[6]\);
    
    \data_all_RNO_1[0]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_1540);
    
    \cnt_recive_RNI9FLS5_0[1]\ : NOR3
      port map(A => N_381_i_0_o4_out, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_i_a2tt_68_m3_0_a2_1);
    
    \data_all_RNO_0[63]\ : NOR2A
      port map(A => \data_all[63]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[63]\);
    
    \data_all[92]\ : DFN1E0C0
      port map(D => N_169, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[92]_net_1\);
    
    \single_recive_0/cnt_RNO[0]\ : NOR2A
      port map(A => \single_recive_0/recive_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/cnt_4[0]\);
    
    \data_send_buffer_RNO_6[4]\ : OR3
      port map(A => \data_send_buffer_4_1_0[4]\, B => 
        data_send_buffer_4_1_3tt_4_N_7_mux, C => N_512, Y => 
        \data_send_buffer_4_1_3[4]\);
    
    \data_all_RNO_0[114]\ : AO1D
      port map(A => \data_all[114]_net_1\, B => 
        N_387_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[114]\);
    
    \single_recive_0/cnt_RNIV51I_0[4]\ : NOR2
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_0_1\);
    
    \data_send_buffer_RNO_19[1]\ : NOR3C
      port map(A => \data_all[121]_net_1\, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, C => N_1841, Y => 
        N_578);
    
    \signal_send_0/tx_uart_RNO\ : OR3
      port map(A => \signal_send_0/tx_uart_11_iv_3\, B => 
        \signal_send_0/tx_uart_11_iv_2\, C => 
        \signal_send_0/tx_uart_11_iv_7\, Y => 
        \signal_send_0/tx_uart_11\);
    
    \cnt_send_RNO[17]\ : XA1B
      port map(A => cnt_send_c16, B => \cnt_send[17]_net_1\, C
         => N_398, Y => cnt_send_n17);
    
    \cnt_recive_RNIDFUH3_0[5]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_11_1[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11_0[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\);
    
    \cnt_recive_RNI5R6Q[25]\ : OR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_recive[25]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_1[111]\);
    
    \signal_send_0/cnt_end[9]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n9\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[9]_net_1\);
    
    \data_all_RNO[83]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[83]\, B => N_1856, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_232);
    
    \data_all_RNO[118]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[118]\, B => N_1859, S
         => N_387_i_0_o4_N_5_mux, Y => N_1606);
    
    \data_all[146]\ : DFN1E0C0
      port map(D => N_326, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[146]_net_1\);
    
    \cnt_recive_RNO_0[19]\ : NOR2B
      port map(A => cnt_recive_c17, B => \cnt_recive[18]_net_1\, 
        Y => cnt_recive_c18);
    
    \signal_send_0/un7_cnt_1_I_12\ : AX1C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[0]\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => \signal_send_0/I_12_0\);
    
    \data_all[47]\ : DFN1E0C0
      port map(D => N_257, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[47]_net_1\);
    
    \data_all_RNO_0[112]\ : AO1D
      port map(A => \data_all[112]_net_1\, B => 
        N_387_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[112]\);
    
    \data_all_RNO_0[29]\ : MX2
      port map(A => \data_all[29]_net_1\, B => 
        \data_recive_buffer[5]\, S => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1658);
    
    \signal_send_0/cnt_RNIE8VJ1_0[1]\ : NOR3B
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/tx_uart30_2\, C => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart32_5_0\);
    
    \data_send_buffer_RNO_10[5]\ : OR3
      port map(A => N_1822, B => N_1820, C => N_1821, Y => 
        \data_send_buffer_4_1_0_10[5]\);
    
    \signal_send_0/cnt_RNIIVVP[7]\ : NOR2A
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/tx_uart29_0\);
    
    send_end_RNO_25 : XOR2
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_recive[14]_net_1\, Y => un12_cnt_send_14);
    
    \cnt_recive_end[0]\ : DFN1C0
      port map(D => cnt_recive_end_n0, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[0]_net_1\);
    
    idle_recive_fall : DFN1C0
      port map(D => idle_recive_fall_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_recive_fall\);
    
    \single_recive_0/data_recive_RNO_0[3]\ : NOR3B
      port map(A => \single_recive_0/un3_cnt_4_0_a2_0\, B => 
        rx_uart_c, C => \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/rx_uart_m_2\);
    
    \cnt_send_RNIOR8C[12]\ : NOR2
      port map(A => \cnt_send[12]_net_1\, B => 
        \cnt_send[27]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_2);
    
    \data_all_RNO_0[100]\ : NOR2A
      port map(A => \data_all[100]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[100]\);
    
    \data_all_RNO[95]\ : NOR2
      port map(A => N_1663, B => N_398, Y => N_163);
    
    \cnt_recive_RNIN0BIB[27]\ : NOR3C
      port map(A => \cnt_recive[26]_net_1\, B => cnt_recive_c25, 
        C => \cnt_recive[27]_net_1\, Y => cnt_recive_c27);
    
    \signal_send_0/cnt[11]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[11]_net_1\);
    
    \cnt_send_RNO[3]\ : XA1B
      port map(A => cnt_send_c2, B => \cnt_send[3]_net_1\, C => 
        N_398, Y => cnt_send_n3);
    
    \single_recive_0/data_recive_RNITCITC[4]\ : NOR2
      port map(A => \single_recive_0/N_615\, B => N_398, Y => 
        N_263);
    
    send_end_RNO_42 : XOR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => N_589_i);
    
    \cnt_send_RNO_0[13]\ : NOR2B
      port map(A => cnt_send_c11, B => \cnt_send[12]_net_1\, Y
         => cnt_send_c12);
    
    \data_send_buffer_RNO_29[4]\ : NOR2B
      port map(A => \data_all[132]_net_1\, B => N_1581, Y => 
        N_513);
    
    \data_send_buffer_RNO_16[0]\ : AO1
      port map(A => \data_all[56]_net_1\, B => N_1570, C => N_601, 
        Y => \data_send_buffer_4_1_2[0]\);
    
    \signal_send_0/un7_cnt_1_I_20\ : XOR2
      port map(A => \signal_send_0/N_6\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => \signal_send_0/I_20_0\);
    
    \signal_send_0/cnt_RNIGNDJ1[6]\ : NOR2B
      port map(A => \signal_send_0/tx_uart30_2\, B => 
        \signal_send_0/tx_uart27_6\, Y => 
        \signal_send_0/tx_uart30_4\);
    
    \cnt_recive_RNISVMA2_0[3]\ : NOR3
      port map(A => N_364, B => \cnt_recive[3]_net_1\, C => 
        data_all_4_i_o2_0_i_o4_out, Y => 
        data_all_4_i_o2_i_o4_47_m2_e_1);
    
    \cnt_recive_end_RNO_0[4]\ : AX1C
      port map(A => receive_end2lto3, B => cnt_recive_end_c2, C
         => \cnt_recive_end[4]_net_1\, Y => cnt_recive_end_n4_tz);
    
    \cnt_recive_RNO[22]\ : NOR2A
      port map(A => cnt_recive_n22_tz, B => N_398, Y => 
        cnt_recive_n22);
    
    send_end_RNO_5 : NOR3A
      port map(A => N_1865, B => \cnt_send[29]_net_1\, C => 
        \cnt_send[30]_net_1\, Y => send_end_0_sqmuxa_i_a4_1);
    
    \data_send_buffer_RNO_0[6]\ : MX2
      port map(A => \un39_data_send_buffer[6]\, B => 
        \un38_data_send_buffer[6]\, S => N_31, Y => N_861);
    
    \signal_send_0/parity_check_RNO_8\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[5]_net_1\, C => 
        \signal_send_0/tx_uart33\, Y => 
        \signal_send_0/parity_check_6_i_m\);
    
    \data_all_RNO_1[129]\ : NOR2
      port map(A => \data_recive_buffer[1]\, B => 
        \cnt_recive[1]_net_1\, Y => data_all_4_i_a2_0_129_m1_e_0);
    
    \data_all[52]\ : DFN1E0C0
      port map(D => N_196, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[52]_net_1\);
    
    \signal_send_0/cnt_RNIJDVJ1[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/tx_uart28_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart28_3\);
    
    send_end_RNO_4 : OR3
      port map(A => send_end_0_sqmuxa_i_17, B => 
        send_end_0_sqmuxa_i_16, C => send_end_0_sqmuxa_i_24, Y
         => send_end_0_sqmuxa_i_27);
    
    \data_all_RNO[77]\ : NOR3
      port map(A => N_784, B => N_398, C => N_785, Y => N_197);
    
    \data_all[99]\ : DFN1E0C0
      port map(D => N_1597, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[99]_net_1\);
    
    \cnt_recive_end[7]\ : DFN1C0
      port map(D => cnt_recive_end_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto7);
    
    \signal_send_0/tx_uart_RNO_5\ : AO1
      port map(A => \data_send_buffer[4]_net_1\, B => 
        \signal_send_0/tx_uart32\, C => 
        \signal_send_0/parity_check_m\, Y => 
        \signal_send_0/tx_uart_11_iv_1\);
    
    \cnt_recive[23]\ : DFN1E0C0
      port map(D => cnt_recive_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[23]_net_1\);
    
    \signal_send_0/cnt_end[1]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n1\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[1]_net_1\);
    
    \data_all_RNO[156]\ : AO1
      port map(A => N_1845, B => data_all_4_i_o2_i_o4_159_N_5_mux, 
        C => N_1791, Y => N_1612);
    
    \single_recive_0/data_recive_RNO[0]\ : AO1A
      port map(A => \single_recive_0/N_66\, B => 
        \data_recive_buffer[0]\, C => \single_recive_0/rx_uart_m\, 
        Y => \single_recive_0/data_recive_11[0]\);
    
    send_end_RNO_12 : XO1
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_send[2]_net_1\, C => N_450_i, Y => 
        send_end_0_sqmuxa_i_17);
    
    \data_send_buffer_RNO_9[4]\ : OA1
      port map(A => \data_send_buffer_4_1_13_a1_0[4]\, B => 
        \data_send_buffer_4_1_13_a0_0[4]\, C => N_1841, Y => 
        \data_send_buffer_4_1_0[4]\);
    
    \single_recive_0/data_recive[2]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[2]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[2]\);
    
    send_end_RNO_1 : NOR2B
      port map(A => send_end_0_sqmuxa_i_a4_1, B => N_1888, Y => 
        N_1797);
    
    \data_all_RNO_1[76]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[4]\, Y => N_787);
    
    \signal_send_0/end_flag_RNO_0\ : AOI1
      port map(A => \signal_send_0/end_flag_0_sqmuxa_7\, B => 
        \signal_send_0/end_flag_0_sqmuxa_6\, C => 
        \signal_send_0/un2_cnt\, Y => 
        \signal_send_0/end_flag_2_sqmuxa\);
    
    \data_all_RNO[87]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[87]\, B => N_1844, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_240);
    
    \data_all_RNO[109]\ : AO1
      port map(A => N_1846, B => data_all_4_i_o2_i_o4_111_N_5_mux, 
        C => N_1744, Y => N_1601);
    
    \data_all_RNO[76]\ : NOR3
      port map(A => N_786, B => N_398, C => N_787, Y => N_199);
    
    \cnt_send_0_RNIKDP01[4]\ : NOR3A
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \cnt_send_0[0]_net_1\, C => \cnt_send_0[4]_net_1\, Y => 
        data_send_buffer_4_1_a2_23_0_a4_s_out);
    
    \cnt_recive_end_RNO[8]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n8_tz, Y => cnt_recive_end_n8);
    
    \signal_send_0/cnt_RNIBOVP_0[4]\ : NOR2
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart27_3\);
    
    \data_all[110]\ : DFN1E0C0
      port map(D => N_133, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[110]_net_1\);
    
    \data_all_RNO_0[143]\ : NOR3A
      port map(A => \data_all[143]_net_1\, B => N_398, C => 
        N_449_i_0_o4_N_5_mux, Y => N_1771);
    
    \data_send_buffer_RNO_22[4]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        \data_all[36]_net_1\, Y => 
        data_send_buffer_4_1_10tt_4_N_3_mux);
    
    \data_all_RNO[64]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_459, C => 
        \data_all_4_i_0[64]\, Y => N_223);
    
    \cnt_recive_RNI1L4Q[15]\ : NOR2
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[15]_net_1\, Y => un5_idle_recive_8);
    
    \signal_send_0/cnt_RNIKHCDL1[10]\ : OR2
      port map(A => \signal_send_0/un1_tx_uart27_8\, B => 
        \signal_send_0/un1_tx_uart27_7\, Y => 
        \signal_send_0/un1_tx_uart27\);
    
    \data_all[59]\ : DFN1E0C0
      port map(D => N_233, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[59]_net_1\);
    
    \single_recive_0/cnt_RNILKDT9[0]\ : AO1
      port map(A => \single_recive_0/un1_data_recive19_0_a2_3\, B
         => \single_recive_0/N_29\, C => \single_recive_0/N_46\, 
        Y => \single_recive_0/un1_data_recive19_0_1\);
    
    \data_all_RNO_0[150]\ : AND3B
      port map(A => N_398, B => \cnt_recive_RNICR3EC_1[1]_net_1\, 
        C => \data_all[150]_net_1\, Y => N_1785);
    
    \data_all[100]\ : DFN1E0C0
      port map(D => N_1598, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[100]_net_1\);
    
    \tx_uart_pad/U0/U0\ : IOPAD_TRI
      port map(D => \tx_uart_pad/U0/NET1\, E => 
        \tx_uart_pad/U0/NET2\, PAD => tx_uart);
    
    \data_all_RNO[145]\ : MX2
      port map(A => d_N_3_mux_0, B => \data_all_RNO_1[145]_net_1\, 
        S => data_all_4_i_i_145_N_7_mux, Y => N_322);
    
    un20_data_send_buffer_1_I_17 : AX1A
      port map(A => \cnt_send[2]_net_1\, B => 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\, C => 
        \cnt_send[3]_net_1\, Y => I_17_1);
    
    \signal_send_0/cnt_end_RNO[6]\ : XOR2
      port map(A => \signal_send_0/cnt_end_c5\, B => 
        \signal_send_0/cnt_end[6]_net_1\, Y => 
        \signal_send_0/cnt_end_n6\);
    
    \cnt_recive_RNO_0[4]\ : AX1C
      port map(A => \cnt_recive[3]_net_1\, B => cnt_recive_c2, C
         => \cnt_recive[4]_net_1\, Y => cnt_recive_n4_tz);
    
    \single_recive_0/data_recive[5]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[5]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[5]\);
    
    \cnt_send_0[0]\ : DFN1E1C0
      port map(D => N_1466, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send_0[0]_net_1\);
    
    \single_recive_0/idle_recive_RNIN3SB\ : NOR2A
      port map(A => \single_recive_0/idle_recive_net_1\, B => 
        N_398, Y => idle_recive_fall_3);
    
    \signal_send_0/cnt_RNICTMJ1[11]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_4\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart33_5\);
    
    send_end_RNO_30 : XO1
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_send[13]_net_1\, C => un12_cnt_send_11, Y => 
        send_end_0_sqmuxa_i_8);
    
    \data_all_RNO[86]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[86]\, B => N_1859, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_238);
    
    \data_all_RNO_0[75]\ : NOR2
      port map(A => \data_all[75]_net_1\, B => 
        \un46_data_all[80]\, Y => N_788);
    
    \signal_send_0/cnt_end_RNIQN3S[1]\ : NOR3B
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end[1]_net_1\, C => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_6\);
    
    \data_send_buffer_RNO_23[6]\ : MX2
      port map(A => \data_all[118]_net_1\, B => 
        \data_all[126]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1648);
    
    \signal_send_0/parity_check_RNO_5\ : XOR2
      port map(A => \data_send_buffer[0]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_1\);
    
    \data_send_buffer_RNO_3[6]\ : AO1
      port map(A => N_1855, B => N_1888, C => 
        \cnt_send[28]_net_1\, Y => N_31);
    
    \data_send_buffer[1]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[1]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[1]_net_1\);
    
    send_end_RNI8FSH2_0 : NOR3B
      port map(A => N_1848, B => 
        data_send_buffer_4_1_a2_28_0_a4_7_m2_e_1, C => N_398, Y
         => N_1574);
    
    \data_all_RNO[32]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_1633, C => 
        \data_all_4_i_0[32]\, Y => N_287);
    
    data_all_4_i_o2_i_o4_111_m2_e_1_RNO : NOR2B
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_432_i);
    
    \data_all[84]\ : DFN1E0C0
      port map(D => N_234, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[84]_net_1\);
    
    \single_recive_0/data_recive_RNO_0[2]\ : OA1
      port map(A => \single_recive_0/N_57_1\, B => 
        \single_recive_0/data_recive26_2\, C => 
        \data_recive_buffer[2]\, Y => 
        \single_recive_0/data_recive_m[2]\);
    
    \cnt_recive_RNO_0[27]\ : AX1C
      port map(A => \cnt_recive[26]_net_1\, B => cnt_recive_c25, 
        C => \cnt_recive[27]_net_1\, Y => cnt_recive_n27_tz);
    
    \data_all_RNO[41]\ : NOR3
      port map(A => N_869, B => N_398, C => N_870, Y => N_269);
    
    \data_all_RNO[2]\ : NOR3
      port map(A => N_1535, B => N_398, C => N_1536, Y => N_345);
    
    \cnt_recive_RNIVFJ83[11]\ : OR3B
      port map(A => un5_idle_recive_7, B => un5_idle_recive_6, C
         => \data_all_4_i_o2_0_i_o2_0_12_6[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_8[111]\);
    
    send_end_RNO_39 : XOR2
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_recive[11]_net_1\, Y => un12_cnt_send_11);
    
    \cnt_send[28]\ : DFN1E1C0
      port map(D => cnt_send_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[28]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_5\ : XOR2
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/I_5\);
    
    \data_all_RNO_0[90]\ : MX2C
      port map(A => \data_recive_buffer[2]\, B => 
        \data_all[90]_net_1\, S => N_1618, Y => N_1660);
    
    \data_all_RNO_0[53]\ : NOR2A
      port map(A => \data_all[53]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[53]\);
    
    \data_all_RNO[142]\ : AO1
      port map(A => N_1770_1, B => N_449_i_0_o4_N_5_mux, C => 
        N_1769, Y => N_310);
    
    \cnt_recive_RNI84JF5[11]\ : NOR2B
      port map(A => cnt_recive_c10, B => \cnt_recive[11]_net_1\, 
        Y => cnt_recive_c11);
    
    \cnt_send_RNI1MCI[13]\ : NOR3
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_send[13]_net_1\, C => \cnt_send[14]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_7);
    
    \data_send_buffer_RNO_20[3]\ : NOR2B
      port map(A => \data_all[59]_net_1\, B => N_1570, Y => 
        N_1800);
    
    \data_all[121]\ : DFN1E0C0
      port map(D => N_111, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[121]_net_1\);
    
    \data_all_RNO_1[40]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_47_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_872);
    
    \data_all[88]\ : DFN1E0C0
      port map(D => N_177, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[88]_net_1\);
    
    \data_send_buffer_RNO_18[7]\ : AO1
      port map(A => \data_all[7]_net_1\, B => N_1571, C => N_477, 
        Y => \data_send_buffer_4_1_2_0[7]\);
    
    \cnt_send_RNIAITJ[4]\ : NOR2A
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_a2_24_0_a2_0[7]\);
    
    \cnt_send_RNI9GSJ[7]\ : NOR2
      port map(A => \cnt_send[7]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_19_3);
    
    \data_send_buffer_RNO_3[7]\ : NOR2A
      port map(A => \data_all[7]_net_1\, B => N_36, Y => N_1469);
    
    \cnt_send_RNO[15]\ : XA1B
      port map(A => cnt_send_c14, B => \cnt_send[15]_net_1\, C
         => N_398, Y => cnt_send_n15);
    
    \data_all_RNO[7]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[7]\, B => N_1844, S => 
        N_397_i_0_o4_N_5_mux, Y => N_138);
    
    \data_send_buffer_RNO_29[5]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_20_0_a4_out, B => 
        \data_all[109]_net_1\, Y => 
        \data_send_buffer_RNO_29[5]_net_1\);
    
    \data_send_buffer_RNO_7[4]\ : OR3A
      port map(A => data_send_buffer_4_1_10_4_N_6_mux, B => N_520, 
        C => N_519, Y => \data_send_buffer_4_1_9[4]\);
    
    \data_all_RNO_0[139]\ : AO1D
      port map(A => \data_all[139]_net_1\, B => 
        N_449_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[139]\);
    
    \signal_send_0/un12_cnt_delay_3\ : NOR2
      port map(A => \cnt_delay[6]_net_1\, B => 
        \cnt_delay[7]_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_3_net_1\);
    
    \signal_send_0/cnt_RNIFSVP[5]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart29_1\);
    
    \data_send_buffer_RNO_5[6]\ : NOR2B
      port map(A => N_1840, B => N_775_3, Y => N_1095_3);
    
    \cnt_send_0[1]\ : DFN1E1C0
      port map(D => cnt_send_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send_0[1]_net_1\);
    
    \data_send_buffer_RNO_28[0]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        \data_all[32]_net_1\, Y => 
        data_send_buffer_4_1_10tt_0_N_3_mux);
    
    \data_all_RNO[159]\ : AO1
      port map(A => data_all_4_i_o2_i_o4_159_N_5_mux, B => N_1844, 
        C => N_1795, Y => N_1614);
    
    \signal_send_0/cnt_RNIOVDJ1[8]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_6\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/tx_uart27_9\);
    
    \data_all[44]\ : DFN1E0C0
      port map(D => N_263, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[44]_net_1\);
    
    \data_all_RNO_0[86]\ : NOR2A
      port map(A => \data_all[86]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[86]\);
    
    \signal_send_0/vld_send_down_RNIH01G5\ : AO1
      port map(A => \signal_send_0/un1_cnt_5\, B => 
        \signal_send_0/un1_cnt_4_0\, C => 
        \signal_send_0/un2_vld_send_down\, Y => 
        \signal_send_0/un2_cnt\);
    
    \signal_send_0/parity_check_RNO_6\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[2]_net_1\, C => 
        \signal_send_0/tx_uart30\, Y => 
        \signal_send_0/parity_check_3_i_m\);
    
    \single_recive_0/data_recive[6]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[6]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[6]\);
    
    \data_send_buffer_RNO_2[4]\ : AO1A
      port map(A => N_36, B => \data_all[4]_net_1\, C => 
        \data_send_buffer_4_1_13[4]\, Y => 
        data_send_buffer_4_1_16_out);
    
    \data_send_buffer_RNO_14[0]\ : AO1
      port map(A => \data_all[80]_net_1\, B => N_1579, C => N_610, 
        Y => \data_send_buffer_4_1_5[0]\);
    
    \cnt_recive_RNIQ5DK1[22]\ : OR3A
      port map(A => un5_idle_recive_4, B => 
        \cnt_recive[22]_net_1\, C => \cnt_recive[21]_net_1\, Y
         => \data_all_4_i_o2_0_i_o2_0_12_4[111]\);
    
    \data_all_RNO[28]\ : NOR3
      port map(A => N_461, B => N_398, C => N_460, Y => 
        \data_all_4[28]\);
    
    \data_all_RNO[53]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[53]\, B => N_1846, S => 
        N_392_i_0_o4_N_5_mux, Y => N_198);
    
    \data_all[4]\ : DFN1E0C0
      port map(D => N_341, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[4]_net_1\);
    
    \data_all[117]\ : DFN1E0C0
      port map(D => N_1605, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[117]_net_1\);
    
    \data_all[48]\ : DFN1E0C0
      port map(D => N_255, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[48]_net_1\);
    
    \data_all_RNO_0[25]\ : NOR2
      port map(A => \data_all[25]_net_1\, B => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1493);
    
    \data_all_RNO_0[103]\ : OA1A
      port map(A => N_385_i_0_o4_out, B => \data_all[103]_net_1\, 
        C => \data_all_4_i_i_0_0[103]\, Y => 
        \data_all_4_i_i_0_1[103]\);
    
    \cnt_send_RNIF2GK5[16]\ : NOR2B
      port map(A => cnt_send_c15, B => \cnt_send[16]_net_1\, Y
         => cnt_send_c16);
    
    \data_all[37]\ : DFN1E0C0
      port map(D => N_277, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[37]_net_1\);
    
    \single_recive_0/cnt_RNI071I[9]\ : NOR2A
      port map(A => \single_recive_0/cnt[5]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/un3_cnt_5\);
    
    \signal_send_0/cnt_RNISOCR4[1]\ : NOR3C
      port map(A => \signal_send_0/tx_uart27_2\, B => 
        \signal_send_0/tx_uart27_1\, C => 
        \signal_send_0/tx_uart27_9\, Y => 
        \signal_send_0/tx_uart27\);
    
    \data_all[145]\ : DFN1E0C0
      port map(D => N_322, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[145]_net_1\);
    
    \data_all[107]\ : DFN1E0C0
      port map(D => N_139, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[107]_net_1\);
    
    \cnt_recive_RNI9FLS5_0[3]\ : AND3C
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_all_4_i_o2_i_o4_0[39]\, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_i_a2tt_34_m3_0_a2_1);
    
    \single_recive_0/data_recive_RNI0LNTC[4]\ : NOR2
      port map(A => \single_recive_0/N_1662\, B => N_398, Y => 
        N_169);
    
    \data_send_buffer_RNO[0]\ : OR3
      port map(A => \data_send_buffer_4_1_15[0]\, B => 
        \data_send_buffer_4_1_14[0]\, C => 
        \data_send_buffer_4_1_16[0]\, Y => 
        \data_send_buffer_4[0]\);
    
    \signal_send_0/cnt_RNIFSVP[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart27_4\);
    
    \data_all_RNO_1[146]\ : XNOR2
      port map(A => \data_recive_buffer[2]\, B => 
        N_391_i_0_o2_N_5_mux, Y => \data_all_RNO_1[146]_net_1\);
    
    \signal_send_0/cnt_RNISOCR4[11]\ : NOR3C
      port map(A => \signal_send_0/tx_uart34_4_0\, B => 
        \signal_send_0/tx_uart34_3\, C => 
        \signal_send_0/tx_uart34_5\, Y => 
        \signal_send_0/tx_uart34\);
    
    \data_all_RNO[20]\ : MX2
      port map(A => N_1845, B => \data_all_4_i_i_a4_0[20]\, S => 
        N_443, Y => N_1595);
    
    \cnt_send_RNI8H6G1[1]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_37_0_a4_out, B => 
        N_398, Y => \data_send_buffer_4_1_a2_33_0_a4_1[7]\);
    
    \single_recive_0/un7_cnt_1_I_31\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[6]\, B => 
        \single_recive_0/cnt[9]_net_1\, C => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/N_2\);
    
    \signal_send_0/cnt_end_RNO[2]\ : AX1C
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end[1]_net_1\, C => 
        \signal_send_0/cnt_end[2]_net_1\, Y => 
        \signal_send_0/cnt_end_n2\);
    
    \cnt_recive_RNIOCST[4]\ : OR2A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => data_all_4_i_o2_0_i_o4_out);
    
    \cnt_recive_end_RNO_0[8]\ : AX1C
      port map(A => receive_end2lto7, B => cnt_recive_end_c6, C
         => receive_end2lto8, Y => cnt_recive_end_n8_tz);
    
    \data_send_buffer_RNO_28[3]\ : NOR3C
      port map(A => N_1865, B => \data_all[3]_net_1\, C => 
        \data_send_buffer_4_1_0_2_s_a0_1[3]\, Y => 
        \data_send_buffer_RNO_28[3]_net_1\);
    
    \single_recive_0/cnt_RNI3D1R[1]\ : NOR3
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_6_2\);
    
    \single_recive_0/cnt_delay_n0\ : NOR2
      port map(A => \cnt_delay[0]_net_1\, B => N_398, Y => N_1465);
    
    \data_all_RNO_1[25]\ : NOR2A
      port map(A => data_all_2_i_o2_i_o4_28_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_1494);
    
    \cnt_send_RNI89991[1]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        C => \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_32_0_a4_out);
    
    \signal_send_0/end_flag_RNI8ESUC\ : NOR3B
      port map(A => \signal_send_0/un12_cnt_delay_5\, B => 
        \signal_send_0/un12_cnt_delay_4_net_1\, C => 
        un5_idle_recive, Y => \signal_send_0/un12_cnt_delay\);
    
    \cnt_send_0_RNI687C2_0[1]\ : NOR2B
      port map(A => N_1841, B => 
        data_send_buffer_4_1_a2_20_0_a4_out, Y => N_1568);
    
    \cnt_recive[30]\ : DFN1E0C0
      port map(D => cnt_recive_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[30]_net_1\);
    
    \cnt_recive[19]\ : DFN1E0C0
      port map(D => cnt_recive_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[19]_net_1\);
    
    send_end_RNI8FSH2 : NOR2A
      port map(A => data_send_buffer_4_1_a2_39_0_a4_7_m2_e_3, B
         => N_398, Y => N_1585);
    
    \cnt_recive_RNI2FAF1[2]\ : OR2B
      port map(A => N_655_2, B => \cnt_recive[2]_net_1\, Y => 
        N_847_2_i);
    
    \signal_send_0/cnt[4]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[4]_net_1\);
    
    \signal_send_0/cnt_end_RNO[8]\ : XOR2
      port map(A => \signal_send_0/cnt_end_c7\, B => 
        \signal_send_0/cnt_end[8]_net_1\, Y => 
        \signal_send_0/cnt_end_n8\);
    
    receive_end_RNO_0 : AOI1
      port map(A => receive_end2lt9, B => receive_end2lto9, C => 
        N_398, Y => receive_end_1_sqmuxa);
    
    \data_all_RNO[3]\ : NOR3
      port map(A => N_1533, B => N_398, C => N_1534, Y => N_343);
    
    \data_all[119]\ : DFN1E0C0
      port map(D => N_280, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[119]_net_1\);
    
    \data_all_RNO_0[7]\ : NOR2A
      port map(A => \data_all[7]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[7]\);
    
    \cnt_recive_RNI7HGN3[10]\ : NOR2B
      port map(A => cnt_recive_c17_m6_0_a2_4_6, B => 
        cnt_recive_c17_m6_0_a2_4_5, Y => cnt_recive_c17_m6_0_a2_4);
    
    \cnt_send[13]\ : DFN1E1C0
      port map(D => cnt_send_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[13]_net_1\);
    
    \signal_send_0/tx_uart\ : DFN1E0P0
      port map(D => \signal_send_0/tx_uart_11\, CLK => sys_clk_c, 
        PRE => sys_rest_c, E => \signal_send_0/tx_uart_11_sqmuxa\, 
        Q => tx_uart_c);
    
    send_end_RNO_16 : XOR2
      port map(A => \cnt_send[21]_net_1\, B => 
        \cnt_recive[21]_net_1\, Y => un12_cnt_send_21);
    
    \data_all_RNO_0[36]\ : NOR3A
      port map(A => \data_all[36]_net_1\, B => 
        data_all_4_i_i_a2tt_34_N_7_mux, C => N_398, Y => N_1696);
    
    \data_all_RNO[127]\ : AO1
      port map(A => N_1844, B => data_all_4_i_o2_i_o4_127_N_5_mux, 
        C => N_860, Y => N_288);
    
    \data_send_buffer_RNO_15[2]\ : NOR2B
      port map(A => \data_all[2]_net_1\, B => N_1571, Y => N_571);
    
    \cnt_recive_RNI2FAF1_0[2]\ : NOR2A
      port map(A => N_655_2, B => \cnt_recive[2]_net_1\, Y => 
        N_815_2);
    
    \data_all[109]\ : DFN1E0C0
      port map(D => N_1601, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[109]_net_1\);
    
    \signal_send_0/cnt[2]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[2]_net_1\);
    
    \cnt_send[11]\ : DFN1E1C0
      port map(D => cnt_send_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[11]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_24\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[3]\, Y => 
        \signal_send_0/DWACT_FINC_E[4]\);
    
    \data_all_RNO[140]\ : NOR3B
      port map(A => \data_all_4_i_i_0_1[140]\, B => 
        \data_all_4_i_i_2[140]\, C => \data_all_RNO_2[140]_net_1\, 
        Y => N_302);
    
    \cnt_recive_RNO_1[30]\ : NOR2A
      port map(A => \cnt_recive[30]_net_1\, B => N_398, Y => 
        N_1043);
    
    \single_recive_0/cnt_delay_n7\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c6_net_1\, B => 
        \cnt_delay[7]_net_1\, C => N_398, Y => cnt_delay_n7);
    
    \signal_send_0/cnt_RNIE8VJ1[1]\ : NOR3B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/tx_uart32_1\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart37_5\);
    
    \cnt_send_RNO_2[28]\ : NOR2A
      port map(A => cnt_send_c2, B => N_398, Y => cnt_send_95_8);
    
    \data_send_buffer_RNO_7[5]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        N_1842, C => \data_all[69]_net_1\, Y => N_1834);
    
    \data_send_buffer_RNO_13[4]\ : NOR2B
      port map(A => \data_all[52]_net_1\, B => N_1574, Y => N_520);
    
    \cnt_send_RNO_1[30]\ : NOR2A
      port map(A => \cnt_send[30]_net_1\, B => N_398, Y => N_981);
    
    \cnt_recive_end_RNO[3]\ : XA1
      port map(A => cnt_recive_end_c2, B => receive_end2lto3, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n3);
    
    \data_send_buffer_4_1_a2_3_0[1]\ : NOR2
      port map(A => I_17_1, B => I_20_1, Y => 
        \data_send_buffer_4_1_a2_3[1]\);
    
    \cnt_recive_RNO[21]\ : XA1B
      port map(A => cnt_recive_c20, B => \cnt_recive[21]_net_1\, 
        C => N_398, Y => cnt_recive_n21);
    
    \cnt_send_RNO_5[28]\ : NOR2B
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => cnt_send_95_1);
    
    \data_all_RNO_0[153]\ : AO1D
      port map(A => \data_all[153]_net_1\, B => 
        data_all_4_i_o2_i_o4_159_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[153]\);
    
    \signal_send_0/idle_send\ : DFN1E0C0
      port map(D => \signal_send_0/un1_tx_uart42\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/tx_uart_11_sqmuxa\, Q => 
        \signal_send_0/idle_send_net_1\);
    
    \data_all_RNO[25]\ : NOR3
      port map(A => N_1493, B => N_398, C => N_1494, Y => N_299);
    
    \data_send_buffer_RNO_35[3]\ : NOR2A
      port map(A => \data_all[131]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_0_2_s_a1_0[3]\);
    
    \data_all_RNO_1[42]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_47_N_5_mux, B => 
        \data_recive_buffer[2]\, Y => N_868);
    
    \data_all[113]\ : DFN1E0C0
      port map(D => N_127, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[113]_net_1\);
    
    \cnt_recive[18]\ : DFN1E0C0
      port map(D => cnt_recive_n18, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[18]_net_1\);
    
    \cnt_send_RNO[22]\ : XA1B
      port map(A => cnt_send_c21, B => \cnt_send[22]_net_1\, C
         => N_398, Y => cnt_send_n22);
    
    \tx_uart_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => tx_uart_c, E => \VCC\, DOUT => 
        \tx_uart_pad/U0/NET1\, EOUT => \tx_uart_pad/U0/NET2\);
    
    \data_send_buffer_RNO_31[2]\ : NOR3B
      port map(A => \cnt_send[3]_net_1\, B => 
        \data_send_buffer_4_1_a2_16_0[2]\, C => 
        \cnt_send[2]_net_1\, Y => 
        \data_send_buffer_4_1_a2_16_1[2]\);
    
    \data_all_RNO_0[111]\ : NOR3A
      port map(A => \data_all[111]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_111_N_5_mux, Y => N_1746);
    
    \cnt_send_RNI9HTJ[25]\ : NOR2
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[6]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_19_2);
    
    \data_send_buffer_RNO_2[2]\ : OR3
      port map(A => \data_send_buffer_RNO_9[2]_net_1\, B => N_556, 
        C => \data_send_buffer_4_1_13[2]\, Y => 
        \data_send_buffer_4_1_17[2]\);
    
    \data_all[122]\ : DFN1E0C0
      port map(D => N_109, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[122]_net_1\);
    
    \signal_send_0/cnt_end_RNI6GT42[6]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c5\, B => 
        \signal_send_0/cnt_end[6]_net_1\, Y => 
        \signal_send_0/cnt_end_c6\);
    
    send_end_RNO_32 : XOR2
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_recive[26]_net_1\, Y => N_591_i);
    
    \data_all[103]\ : DFN1E0C0
      port map(D => N_262, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[103]_net_1\);
    
    \data_all_RNO_0[43]\ : NOR2
      port map(A => \data_all[43]_net_1\, B => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_865);
    
    \data_all_RNO[56]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_456, C => 
        \data_all_4_i_0[56]\, Y => N_239);
    
    \cnt_delay[2]\ : DFN1E1C0
      port map(D => cnt_delay_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[2]_net_1\);
    
    \data_all_RNO_0[14]\ : NOR2A
      port map(A => \data_all[14]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[14]\);
    
    send_end_RNO_3 : OR3
      port map(A => send_end_0_sqmuxa_i_11, B => 
        send_end_0_sqmuxa_i_10, C => send_end_0_sqmuxa_i_20, Y
         => send_end_0_sqmuxa_i_25);
    
    \data_all_RNO_0[99]\ : OA1C
      port map(A => N_385_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[3]\, C => N_398, Y => 
        data_all_4_i_i_99_m5_0);
    
    \data_all_RNO[133]\ : AO1A
      port map(A => N_1620, B => N_1846, C => N_1759, Y => N_296);
    
    \data_all_RNO_1[133]\ : NOR2A
      port map(A => \data_all[133]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_133_m2_0);
    
    \data_all_RNO_0[17]\ : NOR2A
      port map(A => \data_all[17]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[17]\);
    
    \cnt_send_RNIBG146[19]\ : NOR2B
      port map(A => cnt_send_c18, B => \cnt_send[19]_net_1\, Y
         => cnt_send_c19);
    
    \data_send_buffer_RNO_20[2]\ : NOR2B
      port map(A => \data_all[50]_net_1\, B => N_1574, Y => N_562);
    
    \data_all_RNO[78]\ : NOR2A
      port map(A => \data_all_2[78]\, B => N_398, Y => 
        \data_all_4[78]\);
    
    idle_recive_down_RNIIQRK : NOR2A
      port map(A => idle_recive_down_i_0, B => N_398, Y => 
        \idle_recive_down_RNIIQRK\);
    
    \cnt_recive[0]\ : DFN1E0C0
      port map(D => N_458, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[0]_net_1\);
    
    \cnt_recive_end[2]\ : DFN1C0
      port map(D => cnt_recive_end_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto2);
    
    \data_send_buffer_RNO_1[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_6[5]\, B => N_1834, C
         => N_1823, Y => \data_send_buffer_4_1_0_15[5]\);
    
    \signal_send_0/cnt_RNI5VDP[10]\ : NOR2
      port map(A => \signal_send_0/cnt[11]_net_1\, B => 
        \signal_send_0/cnt[10]_net_1\, Y => 
        \signal_send_0/tx_uart27_6\);
    
    \data_send_buffer_RNO[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_16[5]\, B => 
        \data_send_buffer_4_1_0_15[5]\, C => 
        \data_send_buffer_4_1_0_17[5]\, Y => 
        \data_send_buffer_4[5]\);
    
    \signal_send_0/cnt_RNIEVMJ1[11]\ : NOR3B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/tx_uart30_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart35_3\);
    
    \signal_send_0/cnt_RNI0HMJ1[11]\ : NOR3A
      port map(A => \signal_send_0/un1_cnt_1\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart34_5\);
    
    send_end_RNO_15 : XOR2
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_recive[22]_net_1\, Y => N_595_i);
    
    \cnt_send_RNIDOGR_0[1]\ : NOR2A
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => data_send_buffer_4_1_a2_39_0_a4_7_m2_e_1);
    
    \cnt_recive_RNO[15]\ : XA1B
      port map(A => cnt_recive_c14, B => \cnt_recive[15]_net_1\, 
        C => N_398, Y => cnt_recive_n15);
    
    \data_all_RNO_1[3]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[3]\, Y => N_1534);
    
    \cnt_send_RNINR1F2[4]\ : NOR3C
      port map(A => N_1850, B => 
        \data_send_buffer_4_1_a2_24_0_a4_s_0[7]\, C => N_1838, Y
         => N_984);
    
    \data_all_RNO_0[38]\ : NOR3A
      port map(A => data_all_4_i_a2_0_38_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => N_1476);
    
    \cnt_recive_end[5]\ : DFN1C0
      port map(D => cnt_recive_end_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[5]_net_1\);
    
    \data_all_RNO[63]\ : MX2
      port map(A => N_1844, B => \data_all_4_i_i_a4_0[63]\, S => 
        N_456, Y => N_208);
    
    send_end_RNO_27 : XOR2
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => N_450_i);
    
    \data_send_buffer_RNO_6[7]\ : AO1
      port map(A => data_send_buffer_4_1_a2_17_out, B => N_1842, 
        C => \data_send_buffer_4_1_2_0[7]\, Y => 
        \data_send_buffer_4_1_6[7]\);
    
    \cnt_recive_RNO[18]\ : XA1B
      port map(A => cnt_recive_c17, B => \cnt_recive[18]_net_1\, 
        C => N_398, Y => cnt_recive_n18);
    
    \data_send_buffer_RNO_7[0]\ : NOR3C
      port map(A => N_1841, B => N_1843, C => \data_all[8]_net_1\, 
        Y => N_609);
    
    \data_send_buffer[6]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[6]_net_1\);
    
    \signal_send_0/cnt_RNIOHPM9[11]\ : OR2
      port map(A => \signal_send_0/tx_uart37\, B => 
        \signal_send_0/tx_uart32\, Y => 
        \signal_send_0/un1_tx_uart27_1_0\);
    
    \signal_send_0/cnt_RNIBOVP_0[6]\ : NOR2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart36_3\);
    
    \cnt_send_RNO_4[28]\ : NOR3C
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_send[27]_net_1\, C => cnt_send_95_1, Y => 
        cnt_send_95_3);
    
    \signal_send_0/cnt_RNISVMP[10]\ : NOR2
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, Y => 
        \signal_send_0/un1_cnt_6\);
    
    \data_all_RNO[70]\ : MX2
      port map(A => N_1859, B => \data_all_4_i_i_a4_0[70]\, S => 
        N_459, Y => N_218);
    
    \data_send_buffer_RNO_18[4]\ : NOR2B
      port map(A => \data_all[124]_net_1\, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, Y => 
        \data_send_buffer_4_1_13_a1_0[4]\);
    
    \cnt_flag[1]\ : DFN1C0
      port map(D => \cnt_flag_5[1]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_flag[1]_net_1\);
    
    \data_send_buffer_RNO_13[1]\ : NOR2B
      port map(A => \data_all[9]_net_1\, B => N_1843, Y => 
        \data_send_buffer_4_1_a2_15_0[1]\);
    
    \cnt_send_RNINR1F2_0[1]\ : NOR2B
      port map(A => N_1841, B => 
        data_send_buffer_4_1_a2_37_0_a4_out, Y => N_1583);
    
    \cnt_send_0_RNINLE61_0[1]\ : NOR3A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_34_0_a4_out);
    
    \data_all[86]\ : DFN1E0C0
      port map(D => N_238, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[86]_net_1\);
    
    \data_all[83]\ : DFN1E0C0
      port map(D => N_232, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[83]_net_1\);
    
    \data_all[34]\ : DFN1E0C0
      port map(D => N_176, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[34]_net_1\);
    
    \cnt_send_RNIO3HR[5]\ : NOR2B
      port map(A => \cnt_send[5]_net_1\, B => \cnt_send[7]_net_1\, 
        Y => cnt_send_c8_m3_0_a2_1);
    
    \cnt_send_RNO[2]\ : XA1B
      port map(A => cnt_send_c1, B => \cnt_send[2]_net_1\, C => 
        N_398, Y => cnt_send_n2);
    
    \signal_send_0/cnt_RNIOHPM9[10]\ : OR2
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/tx_uart34\, Y => 
        \signal_send_0/un1_tx_uart27_2\);
    
    \cnt_recive[21]\ : DFN1E0C0
      port map(D => cnt_recive_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[21]_net_1\);
    
    receive_end_RNO_3 : AO1
      port map(A => receive_end2lto2, B => receive_end2lto3, C
         => \cnt_recive_end[4]_net_1\, Y => receive_end2lto6_1);
    
    \cnt_recive_end_RNO_0[2]\ : AX1C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_n2_tz);
    
    \single_recive_0/cnt[3]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[3]_net_1\);
    
    \data_all[11]\ : DFN1E0C0
      port map(D => N_327, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[11]_net_1\);
    
    \single_recive_0/cnt_RNITLDR[9]\ : OA1C
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/N_50\);
    
    \data_all_RNO_0[66]\ : NOR3A
      port map(A => data_all_4_i_a2_0_66_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => N_813);
    
    \data_all_RNO_0[3]\ : NOR2
      port map(A => \data_all[3]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1533);
    
    \single_recive_0/cnt_delay_n2\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c1_net_1\, B => 
        \cnt_delay[2]_net_1\, C => N_398, Y => cnt_delay_n2);
    
    \cnt_recive_end_RNO[0]\ : NOR2A
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        \cnt_recive_end[0]_net_1\, Y => cnt_recive_end_n0);
    
    \data_send_buffer_RNO_17[2]\ : AO1
      port map(A => \data_all[58]_net_1\, B => N_1570, C => N_559, 
        Y => \data_send_buffer_4_1_3[2]\);
    
    \data_all_RNO[80]\ : AO1
      port map(A => N_1053, B => data_all_4_i_i_o2_80_N_5_mux, C
         => N_1722, Y => N_222);
    
    \data_all_4_i_i[69]\ : AO1A
      port map(A => N_459, B => N_1846, C => N_1716, Y => N_216);
    
    \data_all[10]\ : DFN1E0C0
      port map(D => N_329, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[10]_net_1\);
    
    \data_all[38]\ : DFN1E0C0
      port map(D => N_275, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[38]_net_1\);
    
    \data_all[118]\ : DFN1E0C0
      port map(D => N_1606, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[118]_net_1\);
    
    \cnt_send_RNI8FSJ[16]\ : NOR2
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[5]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_6);
    
    \single_recive_0/un7_cnt_1_I_30\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[5]\, Y => 
        \single_recive_0/DWACT_FINC_E[6]\);
    
    \data_send_buffer_RNO_28[5]\ : NOR2B
      port map(A => \data_all[5]_net_1\, B => N_1571, Y => N_1837);
    
    receive_end : DFN1E0C0
      port map(D => \AFLSDF_INV_0\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => receive_end_1_sqmuxa, Q => \receive_end\);
    
    \data_all[108]\ : DFN1E0C0
      port map(D => N_1600, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[108]_net_1\);
    
    \cnt_send_RNINR1F2[1]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => \data_send_buffer_4_1_a2_22_0_a4_0[7]\, C => N_398, Y
         => N_1570);
    
    \data_all[46]\ : DFN1E0C0
      port map(D => N_259, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[46]_net_1\);
    
    \data_all[43]\ : DFN1E0C0
      port map(D => N_265, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[43]_net_1\);
    
    \data_all[5]\ : DFN1E0C0
      port map(D => N_339, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[5]_net_1\);
    
    \signal_send_0/cnt[10]\ : DFN1C0
      port map(D => \signal_send_0/I_28_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[10]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_31\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[6]\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[10]_net_1\, Y => \signal_send_0/N_2\);
    
    \data_send_buffer_RNO_12[6]\ : MX2
      port map(A => N_551_3, B => N_567_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_711_3);
    
    \single_recive_0/data_recive_RNO[1]\ : AO1A
      port map(A => \single_recive_0/N_51\, B => 
        \data_recive_buffer[1]\, C => 
        \single_recive_0/rx_uart_m_0\, Y => 
        \single_recive_0/data_recive_11[1]\);
    
    \data_all_RNO[75]\ : NOR3
      port map(A => N_788, B => N_398, C => N_789, Y => N_201);
    
    \data_all_RNO[67]\ : NOR3
      port map(A => N_811, B => N_398, C => N_810, Y => N_217);
    
    \cnt_recive_RNI3GFV9[22]\ : NOR3C
      port map(A => \cnt_recive[21]_net_1\, B => cnt_recive_c20, 
        C => \cnt_recive[22]_net_1\, Y => cnt_recive_c22);
    
    \data_send_buffer_RNO_12[0]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[16]_net_1\, C => N_398, Y => N_605);
    
    \data_all_RNO_2[135]\ : NOR3A
      port map(A => \data_all_RNO_3[135]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => N_398, Y => 
        data_all_4_i_i_135_N_7_mux);
    
    \data_all_RNO_4[103]\ : NOR3A
      port map(A => \data_all_4_i_i_a0_0[103]\, B => 
        N_385_i_0_o4_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        \data_all_4_i_i_a0_2[103]\);
    
    \cnt_send_RNO[18]\ : XA1B
      port map(A => cnt_send_c17, B => \cnt_send[18]_net_1\, C
         => N_398, Y => cnt_send_n18);
    
    \data_all_RNO[104]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[104]\, Y
         => N_145);
    
    \data_all[72]\ : DFN1E0C0
      port map(D => N_207, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[72]_net_1\);
    
    \data_all_RNO[138]\ : OA1C
      port map(A => N_449_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[138]\, Y
         => N_77);
    
    \data_send_buffer_RNO_21[3]\ : NOR2B
      port map(A => \data_all[51]_net_1\, B => N_1574, Y => 
        N_1805);
    
    \data_all_RNO_0[134]\ : OA1A
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \cnt_recive_0[1]_net_1\, C => data_all_4_i_i_a4_134_m2_0, 
        Y => N_1761);
    
    \data_send_buffer_RNO_14[7]\ : NOR3C
      port map(A => \data_all[71]_net_1\, B => 
        data_send_buffer_4_1_a2_21_0_a4_out, C => N_1842, Y => 
        N_479);
    
    \cnt_send_RNIGBTA1[11]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_0_20_2, B => 
        send_end_0_sqmuxa_i_a2_0_20_1, C => 
        send_end_0_sqmuxa_i_a2_0_20_7, Y => 
        send_end_0_sqmuxa_i_a2_0_20_11);
    
    \cnt_send[25]\ : DFN1E1C0
      port map(D => cnt_send_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[25]_net_1\);
    
    \data_send_buffer_RNO_20[4]\ : NOR2B
      port map(A => \data_all[12]_net_1\, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, Y => 
        data_send_buffer_4_1_3tt_4_m3_0_a2_0);
    
    \cnt_recive_RNI9FLS5[1]\ : NOR3A
      port map(A => N_397_i_0_o4_m2_e_0, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_397_i_0_o4_m2_e_2);
    
    \signal_send_0/parity_check_RNO_4\ : OR3
      port map(A => \signal_send_0/parity_check_8_i_m\, B => 
        \signal_send_0/parity_check_5_i_m\, C => 
        \signal_send_0/parity_check_10_iv_0\, Y => 
        \signal_send_0/parity_check_10_iv_4\);
    
    \data_send_buffer_RNO_25[4]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[20]_net_1\, C => N_398, Y => N_521);
    
    \cnt_recive_0_RNIJ75U_1[1]\ : OR3A
      port map(A => \cnt_recive_0[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        \data_all_4_i_i_o2_0[16]\);
    
    \data_all[120]\ : DFN1E0C0
      port map(D => N_113, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[120]_net_1\);
    
    \data_all_RNO_0[132]\ : NOR2A
      port map(A => \data_all[132]_net_1\, B => N_398, Y => 
        d_N_3_mux_4);
    
    \data_send_buffer_RNO_4[2]\ : OR3
      port map(A => N_571, B => N_567, C => 
        \data_send_buffer_4_1_3[2]\, Y => 
        \data_send_buffer_4_1_8[2]\);
    
    \data_send_buffer_RNO_3[4]\ : NOR2B
      port map(A => \data_all[44]_net_1\, B => N_1848, Y => 
        \data_send_buffer_4_1_a2_13_0[4]\);
    
    \data_all_4_i_i_a4[69]\ : AND2
      port map(A => N_1051, B => \data_all[69]_net_1\, Y => 
        N_1716);
    
    \data_all_RNO[85]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[85]\, B => N_1846, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_236);
    
    \data_all_RNO_3[145]\ : XOR2
      port map(A => \data_recive_buffer[1]\, B => 
        \data_all[145]_net_1\, Y => \data_all_RNO_3[145]_net_1\);
    
    \data_all_RNO[99]\ : OA1
      port map(A => \data_all[99]_net_1\, B => 
        N_385_i_0_o4_N_5_mux, C => data_all_4_i_i_99_m5_0, Y => 
        N_1597);
    
    \cnt_send_RNO[10]\ : XA1B
      port map(A => cnt_send_c9, B => \cnt_send[10]_net_1\, C => 
        N_398, Y => cnt_send_n10);
    
    \data_send_buffer_RNO_1[1]\ : OR3
      port map(A => \data_send_buffer_4_1_5[1]\, B => 
        \data_send_buffer_4_1_4[1]\, C => 
        \data_send_buffer_4_1_9[1]\, Y => 
        \data_send_buffer_4_1_13[1]\);
    
    \data_send_buffer_RNO_0[4]\ : AO1
      port map(A => \data_send_buffer_4_1_a2_13_0[4]\, B => 
        N_1858, C => N_518, Y => \data_send_buffer_4_1_15[4]\);
    
    \data_all_RNO[126]\ : AO1
      port map(A => N_1711_1, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_858, Y => N_286);
    
    \data_all_RNO[66]\ : NOR3
      port map(A => N_813, B => N_398, C => N_812, Y => N_219);
    
    \data_send_buffer_RNO_26[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        data_send_buffer_4_1_a2_23_0_a2_out, C => 
        data_send_buffer_4_1_a2_17_2_m2_0_a2_0, Y => N_570);
    
    \data_send_buffer_RNO_13[7]\ : NOR2B
      port map(A => \data_all[103]_net_1\, B => N_1573, Y => 
        N_478);
    
    \data_send_buffer_RNO_4[6]\ : MX2
      port map(A => N_807_3, B => N_871_3, S => 
        \cnt_send[3]_net_1\, Y => N_967_4);
    
    \data_send_buffer_RNO_7[7]\ : OR3
      port map(A => N_469, B => N_468, C => N_462, Y => 
        \data_send_buffer_4_1_5[7]\);
    
    \data_all_RNO_1[38]\ : NOR2A
      port map(A => N_1633, B => \data_all[38]_net_1\, Y => N_875);
    
    \data_all[114]\ : DFN1E0C0
      port map(D => N_125, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[114]_net_1\);
    
    \cnt_recive_0_RNIRFEVB_1[1]\ : NOR2A
      port map(A => data_all_4_i_i_o2_80_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        data_all_4_i_i_o2_80_N_5_mux);
    
    \signal_send_0/un7_cnt_1_I_21\ : AND2
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[3]\);
    
    \cnt_recive[25]\ : DFN1E0C0
      port map(D => cnt_recive_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[25]_net_1\);
    
    \signal_send_0/cnt_end_RNID67H1[4]\ : NOR3C
      port map(A => \signal_send_0/cnt_end[3]_net_1\, B => 
        \signal_send_0/cnt_end_c2\, C => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/cnt_end_c4\);
    
    \cnt_send_RNIDRO71[12]\ : NOR3C
      port map(A => \cnt_send[8]_net_1\, B => 
        \cnt_send[12]_net_1\, C => cnt_send_c11_m6_0_a2_1, Y => 
        cnt_send_c13_m6_0_a2_4_5);
    
    \data_all_RNO_0[68]\ : NOR2B
      port map(A => \data_all[68]_net_1\, B => N_1051, Y => 
        N_1714);
    
    \data_all_RNO_0[126]\ : NOR3A
      port map(A => \data_all[126]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_858);
    
    \data_all_RNO_0[117]\ : NOR2A
      port map(A => \data_all[117]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[117]\);
    
    \cnt_recive_RNIL9ST[0]\ : NOR2B
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => cnt_recive_c1);
    
    \signal_send_0/cnt_RNI5IVP[2]\ : NOR2
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart35_4\);
    
    \cnt_send_RNIQT116[4]\ : NOR3B
      port map(A => send_end_0_sqmuxa_i_a2_0_19, B => 
        send_end_0_sqmuxa_i_a2_0_20, C => \cnt_send[4]_net_1\, Y
         => data_send_buffer_4_1_a2_40_i_o4_0_7_m1_e_1);
    
    \data_send_buffer_RNO_16[6]\ : MX2
      port map(A => \data_all[6]_net_1\, B => 
        \data_all[14]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_487_3);
    
    \data_all[104]\ : DFN1E0C0
      port map(D => N_145, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[104]_net_1\);
    
    \cnt_recive_RNO[17]\ : XA1B
      port map(A => cnt_recive_c16, B => \cnt_recive[17]_net_1\, 
        C => N_398, Y => cnt_recive_n17);
    
    \signal_send_0/end_flag_RNIHJ44\ : NOR3C
      port map(A => \signal_send_0/un12_cnt_delay_1_net_1\, B => 
        \signal_send_0/un12_cnt_delay_0\, C => 
        \signal_send_0/un12_cnt_delay_3_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_5\);
    
    \single_recive_0/cnt_RNIQEAD3[7]\ : OR2
      port map(A => \single_recive_0/N_34\, B => 
        \single_recive_0/N_68\, Y => \single_recive_0/N_57_1\);
    
    \cnt_recive_RNIRE4Q[13]\ : NOR2B
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[13]_net_1\, Y => cnt_recive_c17_m6_0_a2_4_2);
    
    \signal_send_0/cnt_RNILOMP[10]\ : NOR2B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart32_0\);
    
    \signal_send_0/cnt_RNIHUVP[7]\ : NOR2B
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/tx_uart34_4\);
    
    \data_all[79]\ : DFN1E0C0
      port map(D => N_195, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[79]_net_1\);
    
    \cnt_recive_RNIQ5DK1_0[22]\ : NOR3A
      port map(A => un5_idle_recive_4, B => 
        \cnt_recive[22]_net_1\, C => \cnt_recive[21]_net_1\, Y
         => un5_idle_recive_6_0);
    
    \data_all_RNO_0[74]\ : NOR2
      port map(A => \data_all[74]_net_1\, B => 
        \un46_data_all[80]\, Y => N_790);
    
    \cnt_send_RNIGRGR_0[4]\ : NOR2
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \data_send_buffer_4_1_a2_23_0_a2_0[7]\);
    
    \single_recive_0/data_recive_RNIOSHMC[4]\ : MX2C
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[12]_net_1\, S => N_1636, Y => 
        \single_recive_0/N_645\);
    
    \signal_send_0/un7_cnt_1_I_19\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/cnt[6]_net_1\, Y => \signal_send_0/N_6\);
    
    send_end_RNO_36 : XOR2
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => N_593_i);
    
    \data_send_buffer_RNO_15[1]\ : AO1A
      port map(A => data_send_buffer_4_1_a2_40_i_o4_0_7_N_4, B
         => \data_send_buffer_4_1_a2_4[1]\, C => 
        data_send_buffer_4_1_16_s_1_N_7, Y => 
        \data_send_buffer_4_1_3[1]\);
    
    \cnt_recive_RNI1M5VB[0]\ : NOR2A
      port map(A => N_391_i_0_o2_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        N_391_i_0_o2_N_5_mux);
    
    \data_send_buffer_RNO_9[2]\ : NOR3C
      port map(A => N_1848, B => \data_all[42]_net_1\, C => 
        N_1858, Y => \data_send_buffer_RNO_9[2]_net_1\);
    
    \data_all[22]\ : DFN1E0C0
      port map(D => N_164, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[22]_net_1\);
    
    \single_recive_0/cnt_RNINT0I_0[0]\ : NOR2A
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_10_1\);
    
    \signal_send_0/cnt_RNISOCR4_0[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart28_4\, B => 
        \signal_send_0/tx_uart28_3\, C => 
        \signal_send_0/tx_uart27_9\, Y => 
        \signal_send_0/tx_uart28\);
    
    \data_all_RNO_0[77]\ : NOR2
      port map(A => \data_all[77]_net_1\, B => 
        \un46_data_all[80]\, Y => N_784);
    
    \single_recive_0/idle_recive\ : DFN1C0
      port map(D => \single_recive_0/recive_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \single_recive_0/idle_recive_net_1\);
    
    \data_all_RNO_0[95]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[95]_net_1\, S => N_1618, Y => N_1663);
    
    \data_all_RNO_2[67]\ : NOR3
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_recive_buffer[3]\, C => N_381_i_0_o4_out, Y => 
        data_all_4_i_a2_0_67_m2_e_1);
    
    \data_all[131]\ : DFN1E0C0
      port map(D => N_91, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[131]_net_1\);
    
    \data_all_RNO[117]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[117]\, B => N_1846, S
         => N_387_i_0_o4_N_5_mux, Y => N_1605);
    
    send_end_RNO_0 : OR3
      port map(A => send_end_0_sqmuxa_i_26, B => 
        send_end_0_sqmuxa_i_25, C => send_end_0_sqmuxa_i_27, Y
         => send_end_0_sqmuxa_i_29);
    
    \cnt_recive[7]\ : DFN1E0C0
      port map(D => cnt_recive_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[7]_net_1\);
    
    \data_all[62]\ : DFN1E0C0
      port map(D => N_206, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[62]_net_1\);
    
    \single_recive_0/idle_recive_RNIGKHR\ : OR3A
      port map(A => \idle_recive_fall\, B => 
        \single_recive_0/idle_recive_net_1\, C => N_398, Y => 
        idle_recive_down_3);
    
    \cnt_send_0_RNI687C2[1]\ : NOR3B
      port map(A => N_1850, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_398, Y
         => N_1575);
    
    send_end_RNO_21 : XO1
      port map(A => \cnt_recive[27]_net_1\, B => 
        \cnt_send[27]_net_1\, C => un12_cnt_send_19, Y => 
        send_end_0_sqmuxa_i_2);
    
    \single_recive_0/cnt_RNIU3UC3[6]\ : AO1
      port map(A => \single_recive_0/un1_data_recive19_0_a2_9_2\, 
        B => \single_recive_0/un1_cnt_0_a2_2\, C => 
        \single_recive_0/N_66\, Y => \single_recive_0/N_29\);
    
    \cnt_send_RNIHSGR[3]\ : NOR2B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_1851);
    
    \cnt_recive_RNI4NQJ3[19]\ : NOR3C
      port map(A => cnt_recive_c19_m6_0_a2_3_3, B => 
        cnt_recive_c8_m6_0_a2_1, C => cnt_recive_c19_m6_0_a2_3_4, 
        Y => cnt_recive_c19_m6_0_a2_3);
    
    \signal_send_0/cnt_end_RNI47PE2[2]\ : NOR3C
      port map(A => \signal_send_0/end_flag_0_sqmuxa_1\, B => 
        \signal_send_0/end_flag_0_sqmuxa_0\, C => 
        \signal_send_0/end_flag_0_sqmuxa_5\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_7\);
    
    \cnt_recive_end[9]\ : DFN1C0
      port map(D => cnt_recive_end_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto9);
    
    \data_all_RNO[154]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[154]\, Y
         => N_45);
    
    \cnt_recive_0_RNIO30E5_1[1]\ : OR3
      port map(A => data_all_4_i_o2_0_i_o4_out, B => 
        N_383_i_0_o4_0, C => \data_all_4_i_o2_0_i_o2_0_0_1[111]\, 
        Y => N_383_i_0_o4_2);
    
    \data_send_buffer_RNO_33[2]\ : NOR2A
      port map(A => \data_all[34]_net_1\, B => N_398, Y => 
        data_send_buffer_4_1_a2_17_2_m2_0_a2_0);
    
    \cnt_recive_RNIQ19K1[11]\ : OR3A
      port map(A => un5_idle_recive_8, B => 
        \cnt_recive[11]_net_1\, C => \cnt_recive[12]_net_1\, Y
         => \data_all_4_i_o2_0_i_o2_0_12_6[111]\);
    
    \sys_rest_pad/U0/U0\ : IOPAD_IN
      port map(PAD => sys_rest, Y => \sys_rest_pad/U0/NET1\);
    
    \single_recive_0/cnt_RNIS1UC3[0]\ : OR2B
      port map(A => \single_recive_0/un1_cnt_0_a2_6\, B => 
        \single_recive_0/un1_cnt_0_a2_5\, Y => 
        \single_recive_0/un1_cnt\);
    
    \signal_send_0/cnt_RNIRUMP[11]\ : NOR2A
      port map(A => \signal_send_0/cnt[11]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/un1_cnt_0\);
    
    \data_send_buffer_RNO_16[3]\ : NOR2B
      port map(A => \data_all[27]_net_1\, B => N_1575, Y => 
        N_1802);
    
    send_end_RNO_28 : XOR2
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_recive[16]_net_1\, Y => un12_cnt_send_16);
    
    \data_all_RNO[43]\ : NOR3
      port map(A => N_865, B => N_398, C => N_866, Y => N_265);
    
    \cnt_recive_RNISVMA2[3]\ : OR3A
      port map(A => \cnt_recive[3]_net_1\, B => 
        data_all_4_i_o2_0_i_o4_out, C => N_362, Y => 
        \data_all_4_i_o2_i_o4_1[95]\);
    
    \data_all_RNO_0[80]\ : NOR3A
      port map(A => \data_all[80]_net_1\, B => N_398, C => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_1722);
    
    \single_recive_0/cnt_RNIV51I[8]\ : NOR2B
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/data_recive26_2\);
    
    \data_send_buffer_RNO_19[3]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        \data_all[115]_net_1\, C => N_1842, Y => N_1803);
    
    \data_all_RNO_0[56]\ : AO1A
      port map(A => \data_all[56]_net_1\, B => N_456, C => N_398, 
        Y => \data_all_4_i_0[56]\);
    
    \cnt_recive[12]\ : DFN1E0C0
      port map(D => cnt_recive_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[12]_net_1\);
    
    \signal_send_0/cnt_RNIKA6IE[2]\ : OR3
      port map(A => \signal_send_0/tx_uart29\, B => 
        \signal_send_0/tx_uart31\, C => \signal_send_0/tx_uart30\, 
        Y => \signal_send_0/un1_tx_uart27_5\);
    
    \data_all_RNO[58]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_456, C => 
        \data_all_4_i_0[58]\, Y => N_235);
    
    \data_all[29]\ : DFN1E0C0
      port map(D => N_293, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[29]_net_1\);
    
    \data_all_RNO_0[9]\ : AO1A
      port map(A => \data_all[9]_net_1\, B => N_1636, C => N_398, 
        Y => \data_all_4_i_0[9]\);
    
    \cnt_recive_RNO[26]\ : XA1B
      port map(A => cnt_recive_c25, B => \cnt_recive[26]_net_1\, 
        C => N_398, Y => cnt_recive_n26);
    
    \data_all[127]\ : DFN1E0C0
      port map(D => N_288, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[127]_net_1\);
    
    \cnt_send_RNICD8N1[18]\ : NOR2B
      port map(A => cnt_send_c24_m6_0_a2_4_6, B => 
        cnt_send_c24_m6_0_a2_4_5, Y => cnt_send_c24_m6_0_a2_4);
    
    \single_recive_0/cnt_flag_5[0]\ : NOR3A
      port map(A => 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\, B => 
        N_398, C => cnt_flag_0_sqmuxa, Y => \cnt_flag_5[0]\);
    
    \signal_send_0/end_flag\ : DFN1E0C0
      port map(D => \signal_send_0/end_flag_1_sqmuxa\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/end_flag_2_sqmuxa\, Q => 
        \signal_send_0/end_flag_net_1\);
    
    \data_all[91]\ : DFN1E0C0
      port map(D => N_171, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[91]_net_1\);
    
    \data_all_RNO_1[72]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[0]\, Y => N_795);
    
    \cnt_recive_end[3]\ : DFN1C0
      port map(D => cnt_recive_end_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto3);
    
    \single_recive_0/data_recive_RNI0DQMC[4]\ : MX2C
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[92]_net_1\, S => N_1618, Y => 
        \single_recive_0/N_1662\);
    
    \data_send_buffer_RNO_8[7]\ : OR3
      port map(A => \data_send_buffer_4_1_2[7]\, B => 
        \data_send_buffer_4_1_0[7]\, C => N_463, Y => 
        \data_send_buffer_4_1_8[7]\);
    
    \cnt_send_RNIAVCI[24]\ : NOR3C
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_send[24]_net_1\, C => \cnt_send[17]_net_1\, Y => 
        cnt_send_c24_m6_0_a2_4_4);
    
    \data_all[8]\ : DFN1E0C0
      port map(D => N_333, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[8]_net_1\);
    
    \data_all[90]\ : DFN1E0C0
      port map(D => N_173, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[90]_net_1\);
    
    \data_all[69]\ : DFN1E0C0
      port map(D => N_216, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[69]_net_1\);
    
    \data_send_buffer_RNO_1[0]\ : OR3
      port map(A => N_595, B => N_609, C => N_598, Y => 
        \data_send_buffer_4_1_14[0]\);
    
    \data_all_RNO_0[24]\ : NOR2
      port map(A => \data_all[24]_net_1\, B => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_902);
    
    \signal_send_0/end_flag_RNO\ : AOI1
      port map(A => \signal_send_0/end_flag_0_sqmuxa_7\, B => 
        \signal_send_0/end_flag_0_sqmuxa_6\, C => 
        \signal_send_0/un2_vld_send_down\, Y => 
        \signal_send_0/end_flag_1_sqmuxa\);
    
    \signal_send_0/cnt_RNISMVJ1[6]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart32_5\, Y => 
        \signal_send_0/tx_uart37_6\);
    
    send_end_RNO_35 : XOR2
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => N_594_i);
    
    \data_all_RNO_3[103]\ : OA1C
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_all[103]_net_1\, C => N_398, Y => 
        \data_all_4_i_i_0_0[103]\);
    
    \data_all_RNO_0[146]\ : NOR2A
      port map(A => \data_all[146]_net_1\, B => N_398, Y => 
        d_N_3_mux_2);
    
    \data_all_RNO[129]\ : OA1C
      port map(A => N_1620, B => \data_all[129]_net_1\, C => 
        \data_all_4_i_0[129]\, Y => N_95);
    
    \data_send_buffer_RNO_15[3]\ : OR3
      port map(A => \data_send_buffer_RNO_28[3]_net_1\, B => 
        \data_send_buffer_RNO_29[3]_net_1\, C => N_1811, Y => 
        \data_send_buffer_4_1_0_1[3]\);
    
    \data_all_RNO[101]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[101]\, B => N_1846, S
         => N_385_i_0_o4_N_5_mux, Y => N_1599);
    
    \signal_send_0/cnt_end_RNO[5]\ : XOR2
      port map(A => \signal_send_0/cnt_end_c4\, B => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/cnt_end_n5\);
    
    \data_all_RNO_0[27]\ : MX2
      port map(A => \data_all[27]_net_1\, B => 
        \data_recive_buffer[3]\, S => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1657);
    
    \cnt_send_RNO[11]\ : XA1B
      port map(A => cnt_send_c10, B => \cnt_send[11]_net_1\, C
         => N_398, Y => cnt_send_n11);
    
    \cnt_send_0_RNI7HV12_0[4]\ : NOR3B
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => N_1840, C
         => \cnt_send_0[4]_net_1\, Y => N_1855);
    
    \cnt_send[24]\ : DFN1E1C0
      port map(D => cnt_send_n24, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[24]_net_1\);
    
    \signal_send_0/cnt[0]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[0]_net_1\);
    
    \data_all[0]\ : DFN1E0C0
      port map(D => N_349, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[0]_net_1\);
    
    \signal_send_0/idle_send_RNIB0BF\ : NOR2A
      port map(A => \signal_send_0/idle_send_net_1\, B => N_398, 
        Y => idle_send_fall_2);
    
    \data_send_buffer_RNO_11[2]\ : AO1
      port map(A => \data_all[106]_net_1\, B => N_1568, C => 
        N_565, Y => \data_send_buffer_4_1_13[2]\);
    
    \data_send_buffer_RNO_9[3]\ : OR3
      port map(A => N_1669, B => N_1804, C => N_1812, Y => 
        \data_send_buffer_4_1_0_9[3]\);
    
    \cnt_recive_end[1]\ : DFN1C0
      port map(D => cnt_recive_end_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[1]_net_1\);
    
    \signal_send_0/parity_check_RNO_7\ : XOR2
      port map(A => \data_send_buffer[6]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_7\);
    
    \data_all[6]\ : DFN1E0C0
      port map(D => N_134, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[6]_net_1\);
    
    \cnt_send_RNINAEF1[1]\ : NOR3B
      port map(A => \data_send_buffer_4_1_a2_23_0_a2_0[7]\, B => 
        \cnt_send[1]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_28_0_a4_7_m2_e_1);
    
    \cnt_recive_RNICR3EC[4]\ : NOR2A
      port map(A => data_all_2_i_o2_i_o4_28_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        data_all_2_i_o2_i_o4_28_N_5_mux);
    
    \data_all_RNO_1[79]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[7]\, Y => N_783);
    
    \cnt_send_RNID0E21[1]\ : XA1B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        C => N_398, Y => cnt_send_n1);
    
    \single_recive_0/data_recive_RNI8LJGC[1]\ : NOR2
      port map(A => N_1618, B => \data_recive_buffer[1]\, Y => 
        \single_recive_0/N_763\);
    
    \data_all_RNO_1[24]\ : NOR2A
      port map(A => data_all_2_i_o2_i_o4_28_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_1495);
    
    \cnt_recive[3]\ : DFN1E0C0
      port map(D => cnt_recive_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[3]_net_1\);
    
    \data_all[129]\ : DFN1E0C0
      port map(D => N_95, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[129]_net_1\);
    
    \cnt_send[18]\ : DFN1E1C0
      port map(D => cnt_send_n18, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[18]_net_1\);
    
    \data_all_RNO[9]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1636, C => 
        \data_all_4_i_0[9]\, Y => N_331);
    
    \signal_send_0/cnt_RNI7KVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart29_2\);
    
    \data_all[51]\ : DFN1E0C0
      port map(D => N_194, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[51]_net_1\);
    
    \cnt_recive_RNI6GPR1[8]\ : NOR3C
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_recive[8]_net_1\, C => cnt_recive_c8_m6_0_a2_1, Y
         => cnt_recive_c10_m6_0_a2_5);
    
    \data_all_RNO[47]\ : NOR2
      port map(A => N_1656, B => N_398, Y => N_257);
    
    \cnt_send_RNI93L94[9]\ : NOR2B
      port map(A => cnt_send_c8, B => \cnt_send[9]_net_1\, Y => 
        cnt_send_c9);
    
    \cnt_recive_RNICR3EC[2]\ : OR3A
      port map(A => un46_data_all_0_a2_1_o2_0_80_N_5_mux, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        N_1636);
    
    \data_send_buffer_RNO_24[2]\ : NOR2B
      port map(A => \data_all[138]_net_1\, B => N_1585, Y => 
        N_554);
    
    \data_all_RNO[143]\ : AO1
      port map(A => N_449_i_0_o4_N_5_mux, B => N_1844, C => 
        N_1771, Y => N_314);
    
    \data_all[36]\ : DFN1E0C0
      port map(D => N_182, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[36]_net_1\);
    
    \data_all[33]\ : DFN1E0C0
      port map(D => N_285, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[33]_net_1\);
    
    \data_send_buffer_RNO_14[6]\ : MX2
      port map(A => \data_all[134]_net_1\, B => 
        \data_all[142]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1647);
    
    \data_all_RNO_0[30]\ : MX2B
      port map(A => \data_all[30]_net_1\, B => N_1635, S => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1654);
    
    \single_recive_0/cnt_RNIQ01I_2[2]\ : NOR2
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_0_2\);
    
    \cnt_recive_end_RNO[7]\ : XA1
      port map(A => cnt_recive_end_c6, B => receive_end2lto7, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n7);
    
    \data_all_RNO_1[134]\ : NOR2A
      port map(A => \data_all[134]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_134_m2_0);
    
    \cnt_send_RNO[7]\ : XA1B
      port map(A => cnt_send_c6, B => \cnt_send[7]_net_1\, C => 
        N_398, Y => cnt_send_n7);
    
    send_end_RNIC31LC : OA1C
      port map(A => data_all_4_i_i_a2tt_68_m3_0_a2_1, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, C => N_398, Y => 
        N_1051);
    
    \data_all[50]\ : DFN1E0C0
      port map(D => N_251, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[50]_net_1\);
    
    \cnt_recive_RNO[30]\ : AX1C
      port map(A => cnt_recive_c28, B => cnt_recive_161_0, C => 
        N_1043, Y => cnt_recive_n30);
    
    \signal_send_0/cnt_RNO[11]\ : XA1
      port map(A => \signal_send_0/N_2\, B => 
        \signal_send_0/cnt[11]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => 
        \signal_send_0/cnt_4[11]\);
    
    \cnt_recive_RNIAMDK1[27]\ : NOR3A
      port map(A => un5_idle_recive_2, B => 
        \cnt_recive[28]_net_1\, C => \cnt_recive[27]_net_1\, Y
         => un5_idle_recive_5);
    
    \cnt_recive[1]\ : DFN1E0C0
      port map(D => N_19, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[1]_net_1\);
    
    \cnt_send_RNIMJLK[0]\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => N_398, Y => N_1466);
    
    \rx_uart_pad/U0/U0\ : IOPAD_IN
      port map(PAD => rx_uart, Y => \rx_uart_pad/U0/NET1\);
    
    \cnt_send_0_RNINMNF2[0]\ : OR3
      port map(A => I_12_1, B => I_14_1, C => 
        \cnt_send_0[0]_net_1\, Y => 
        \data_send_buffer_4_1_a2_40_i_o4_1[7]\);
    
    \signal_send_0/cnt_RNIFSVP_0[5]\ : NOR2A
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/un1_cnt_1_0\);
    
    idle_send_down_RNIU78E : OR2
      port map(A => \idle_send_down\, B => N_398, Y => cnt_sende);
    
    \data_all_RNO_0[58]\ : AO1A
      port map(A => \data_all[58]_net_1\, B => N_456, C => N_398, 
        Y => \data_all_4_i_0[58]\);
    
    \single_recive_0/cnt_RNIQ01I_0[2]\ : NOR2A
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_4_0\);
    
    \data_all_RNO_0[110]\ : AO1D
      port map(A => \data_all[110]_net_1\, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[110]\);
    
    \signal_send_0/cnt_end_RNIQAMJ[9]\ : NOR2B
      port map(A => \signal_send_0/cnt_end[9]_net_1\, B => 
        \signal_send_0/cnt_end[3]_net_1\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_0\);
    
    \data_all_RNO[55]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[55]\, B => N_1844, S => 
        N_392_i_0_o4_N_5_mux, Y => N_200);
    
    \single_recive_0/cnt[6]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[6]_net_1\);
    
    \data_send_buffer_RNO_25[0]\ : NOR2B
      port map(A => \data_all[128]_net_1\, B => N_1581, Y => 
        N_597);
    
    \data_all[132]\ : DFN1E0C0
      port map(D => N_292, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[132]_net_1\);
    
    \data_all_RNO[46]\ : NOR2A
      port map(A => N_1653, B => N_398, Y => N_259);
    
    \data_all[123]\ : DFN1E0C0
      port map(D => N_107, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[123]_net_1\);
    
    \data_send_buffer_RNO_22[5]\ : NOR2B
      port map(A => \data_all[61]_net_1\, B => N_1570, Y => 
        N_1820);
    
    \single_recive_0/data_recive_RNO_0[5]\ : NOR3C
      port map(A => \single_recive_0/N_64_1\, B => 
        \single_recive_0/un1_data_recive19_0_a2_8_3_0\, C => 
        rx_uart_c, Y => \single_recive_0/rx_uart_m_4\);
    
    \data_send_buffer_RNO_16[4]\ : AO1
      port map(A => \data_all[4]_net_1\, B => N_1571, C => 
        \data_send_buffer_4_1_7[4]\, Y => 
        \data_send_buffer_4_1_6[4]\);
    
    \data_all_RNO_1[94]\ : NOR2A
      port map(A => N_1635, B => N_1618, Y => N_753);
    
    \single_recive_0/cnt[11]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[11]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[11]_net_1\);
    
    send_end_RNO : NOR3
      port map(A => send_end_0_sqmuxa_i_29, B => N_398, C => 
        N_1797, Y => N_413);
    
    \cnt_send_0_RNIFIO51_0[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => N_398, Y => N_1841);
    
    \signal_send_0/cnt_RNISOCR4_0[11]\ : NOR3C
      port map(A => \signal_send_0/tx_uart32_5_0\, B => 
        \signal_send_0/tx_uart32_4\, C => 
        \signal_send_0/tx_uart32_6_0\, Y => 
        \signal_send_0/tx_uart32\);
    
    \signal_send_0/cnt_flag_0_sqmuxa_0\ : NOR2A
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        Y => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\);
    
    \data_send_buffer_RNO_0[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_8[3]\, B => 
        \data_send_buffer_4_1_0_7[3]\, C => 
        \data_send_buffer_4_1_0_12[3]\, Y => 
        \data_send_buffer_4_1_0_16[3]\);
    
    \data_all_RNO[11]\ : NOR2A
      port map(A => N_644, B => N_398, Y => N_327);
    
    \data_send_buffer_RNO_24[3]\ : NOR2B
      port map(A => \data_all[83]_net_1\, B => N_1579, Y => 
        N_1804);
    
    \data_all_RNO_1[66]\ : NOR2A
      port map(A => N_459, B => \data_all[66]_net_1\, Y => N_812);
    
    \signal_send_0/parity_check_RNO_13\ : XA1A
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, C => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/parity_check_2_i_m\);
    
    \signal_send_0/cnt_RNIEVMJ1_0[11]\ : NOR3A
      port map(A => \signal_send_0/tx_uart32_5\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart32_6_0\);
    
    \data_send_buffer_RNO_27[5]\ : NOR3B
      port map(A => \data_all[45]_net_1\, B => N_1848, C => 
        \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_0_a4_12_5_m1_e_1);
    
    \data_all_RNO_0[82]\ : NOR2A
      port map(A => \data_all[82]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[82]\);
    
    \cnt_recive_0[1]\ : DFN1E0C0
      port map(D => N_19, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive_0[1]_net_1\);
    
    send_end_RNO_17 : XO1
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_send[25]_net_1\, C => N_591_i, Y => 
        send_end_0_sqmuxa_i_6);
    
    \data_all_RNO[151]\ : MX2B
      port map(A => d_N_3_mux_5, B => \data_all_RNO_1[151]_net_1\, 
        S => data_all_4_i_i_151_N_5_mux, Y => N_1610);
    
    \signal_send_0/cnt[7]\ : DFN1C0
      port map(D => \signal_send_0/I_20_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[7]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_26\ : AX1C
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/DWACT_FINC_E[4]\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/I_26\);
    
    \data_send_buffer[4]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[4]_net_1\);
    
    send_end_RNIC31LC_0 : NOR2
      port map(A => data_all_4_i_o2_i_o4_159_N_5_mux, B => N_398, 
        Y => N_1047);
    
    \single_recive_0/cnt_RNO[6]\ : XA1
      port map(A => \single_recive_0/N_7\, B => 
        \single_recive_0/cnt[6]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[6]\);
    
    \signal_send_0/cnt_end[7]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n7\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[7]_net_1\);
    
    \data_all_RNO_0[106]\ : AO1D
      port map(A => \data_all[106]_net_1\, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[106]\);
    
    \cnt_recive_RNICR3EC_0[1]\ : OR2A
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \cnt_recive[1]_net_1\, Y => N_1620);
    
    \data_send_buffer_RNO_24[4]\ : NOR3B
      port map(A => \data_all[148]_net_1\, B => N_1863, C => 
        \cnt_send_0[0]_net_1\, Y => N_511);
    
    \data_all_RNO_0[46]\ : MX2B
      port map(A => \data_all[46]_net_1\, B => N_847_2_i, S => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_1653);
    
    \single_recive_0/un7_cnt_1_I_16\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[1]\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_7\);
    
    \cnt_send_RNIJLII2[5]\ : NOR2B
      port map(A => cnt_send_c4, B => \cnt_send[5]_net_1\, Y => 
        cnt_send_c5);
    
    \data_all_RNO[68]\ : AO1A
      port map(A => N_459, B => N_1845, C => N_1714, Y => N_212);
    
    \cnt_recive_RNINBST_0[1]\ : OR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_362);
    
    \data_send_buffer_RNO_26[1]\ : NOR3B
      port map(A => \cnt_send[3]_net_1\, B => 
        \data_send_buffer_4_1_14_s_0_tz_tz_tz[1]\, C => 
        \cnt_send[2]_net_1\, Y => 
        \data_send_buffer_4_1_14_s_1_0[1]\);
    
    \single_recive_0/cnt_RNITD2D1[8]\ : NOR3B
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/un1_data_recive19_0_a2_6_2\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/N_54\);
    
    \data_send_buffer_RNO_24[1]\ : NOR2B
      port map(A => \data_all[49]_net_1\, B => N_1574, Y => N_584);
    
    \data_all_RNO[116]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[116]\, B => N_1845, S
         => N_387_i_0_o4_N_5_mux, Y => N_1604);
    
    \single_recive_0/un7_cnt_1_I_22\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[3]\, Y => 
        \single_recive_0/N_5\);
    
    \data_send_buffer_RNO_20[1]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => \data_send_buffer_4_1_14_s_1_0[1]\, C => N_398, Y => 
        \data_send_buffer_4_1_14_s_0[1]\);
    
    \data_send_buffer_RNO_19[6]\ : MX2
      port map(A => \data_all[54]_net_1\, B => 
        \data_all[62]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1650);
    
    \signal_send_0/cnt_RNIBOVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart32_1\);
    
    \data_all_RNO[29]\ : NOR2A
      port map(A => N_1658, B => N_398, Y => N_293);
    
    \single_recive_0/data_recive_RNIT2D9[2]\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => N_398, Y => 
        N_1877);
    
    \single_recive_0/cnt_delay_37_0\ : NOR2A
      port map(A => \cnt_delay[7]_net_1\, B => N_398, Y => 
        \single_recive_0/cnt_delay_37_0_net_1\);
    
    \signal_send_0/cnt_end[5]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n5\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[5]_net_1\);
    
    \cnt_recive[8]\ : DFN1E0C0
      port map(D => cnt_recive_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[8]_net_1\);
    
    \data_send_buffer_RNO_6[1]\ : OA1
      port map(A => data_send_buffer_4_1_14_1_m1_e_1, B => 
        \data_send_buffer_4_1_a2_15_0[1]\, C => N_1841, Y => 
        \data_send_buffer_4_1_5[1]\);
    
    \data_send_buffer_RNO_1[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_6[3]\, B => N_1806, C
         => N_1799, Y => \data_send_buffer_4_1_0_15[3]\);
    
    \cnt_send_0_RNIN1ER7[4]\ : NOR3C
      port map(A => cnt_send_c28_m6_0_a2_6, B => 
        cnt_send_c13_m6_0_a2_4, C => cnt_send_c3, Y => 
        cnt_send_c28);
    
    \data_all_RNO[148]\ : MX2
      port map(A => d_N_3_mux, B => \data_all_RNO_1[148]_net_1\, 
        S => data_all_4_i_i_148_N_7_mux, Y => N_1608);
    
    \single_recive_0/un7_cnt_1_I_7\ : AX1C
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/I_7\);
    
    \single_recive_0/un7_cnt_1_I_12\ : AX1C
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/DWACT_FINC_E[0]\, C => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/I_12\);
    
    \single_recive_0/idle_recive_RNIDMUJD\ : NOR2A
      port map(A => \single_recive_0/cnt_recive_end_0_sqmuxa_1\, 
        B => un5_idle_recive, Y => cnt_recive_end_0_sqmuxa);
    
    \data_send_buffer_RNO_29[7]\ : NOR3C
      port map(A => N_1843, B => \data_send_buffer_4_1_a2_1_1[7]\, 
        C => N_1838, Y => N_464);
    
    \data_all_RNO[60]\ : AO1A
      port map(A => N_456, B => N_1845, C => N_1706, Y => N_202);
    
    \data_send_buffer_RNO_26[7]\ : NOR3C
      port map(A => N_1843, B => \data_all[15]_net_1\, C => 
        N_1841, Y => N_477);
    
    \data_all_RNO_0[131]\ : AO1
      port map(A => data_all_4_i_a2_0_131_m1_e_0, B => 
        N_391_i_0_o2_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[131]\);
    
    \cnt_send_RNO_1[28]\ : NOR3C
      port map(A => cnt_send_95_4, B => cnt_send_95_3, C => 
        cnt_send_c24_m6_0_a2_4, Y => cnt_send_95_6);
    
    \cnt_recive[17]\ : DFN1E0C0
      port map(D => cnt_recive_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[17]_net_1\);
    
    \cnt_recive_0_RNIO30E5_2[1]\ : NOR3A
      port map(A => N_387_i_0_o4_m2_e_0, B => 
        data_all_4_i_o2_0_i_o4_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        data_all_4_i_o2_i_o4_127_m2_e_2);
    
    \data_all[15]\ : DFN1E0C0
      port map(D => N_319, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[15]_net_1\);
    
    \data_send_buffer_RNO_10[0]\ : NOR3C
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, C => 
        \data_all[112]_net_1\, Y => N_602);
    
    \data_all_RNO_0[32]\ : AO1A
      port map(A => \data_all[32]_net_1\, B => N_1633, C => N_398, 
        Y => \data_all_4_i_0[32]\);
    
    \cnt_send_RNIDLIO[22]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_20_4, B => 
        \cnt_send[23]_net_1\, C => \cnt_send[22]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_9);
    
    \data_send_buffer_RNO_8[0]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        N_1841, C => \data_all[120]_net_1\, Y => N_598);
    
    \data_all_RNO_0[60]\ : NOR3B
      port map(A => N_456, B => \data_all[60]_net_1\, C => N_398, 
        Y => N_1706);
    
    \single_recive_0/data_recive_RNI17D9[6]\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => N_398, Y => 
        N_1859);
    
    \signal_send_0/cnt_RNIERVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart33_1\);
    
    \cnt_send_RNIOR8C[19]\ : NOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[19]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_4);
    
    \cnt_recive_end_RNIAQCU[4]\ : NOR3C
      port map(A => receive_end2lto3, B => cnt_recive_end_c2, C
         => \cnt_recive_end[4]_net_1\, Y => cnt_recive_end_c4);
    
    \single_recive_0/cnt[4]\ : DFN1C0
      port map(D => \single_recive_0/I_12\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[4]_net_1\);
    
    \data_all[128]\ : DFN1E0C0
      port map(D => N_97, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[128]_net_1\);
    
    \cnt_recive_RNI5KQC1[4]\ : NOR3B
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        data_all_4_i_o2_i_o4_159_m2_e_1);
    
    \data_send_buffer_RNO_17[0]\ : OR3A
      port map(A => data_send_buffer_4_1_10_0_N_6_mux, B => N_604, 
        C => N_597, Y => \data_send_buffer_4_1_6[0]\);
    
    \cnt_send_RNIAESR3[4]\ : NOR3C
      port map(A => cnt_send_c8_m3_0_a2_3, B => N_1851, C => 
        cnt_send_c1, Y => cnt_send_c8);
    
    \data_send_buffer_RNO_20[7]\ : NOR2B
      port map(A => \data_all[63]_net_1\, B => N_1570, Y => N_468);
    
    \cnt_send_RNO[6]\ : XA1B
      port map(A => cnt_send_c5, B => \cnt_send[6]_net_1\, C => 
        N_398, Y => cnt_send_n6);
    
    \data_all[151]\ : DFN1E0C0
      port map(D => N_1610, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[151]_net_1\);
    
    \single_recive_0/un7_cnt_1_I_23\ : XOR2
      port map(A => \single_recive_0/N_5\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/I_23\);
    
    \data_all_RNO_0[156]\ : NOR2B
      port map(A => \data_all[156]_net_1\, B => N_1047, Y => 
        N_1791);
    
    \cnt_recive_RNO[24]\ : XA1B
      port map(A => cnt_recive_c23, B => \cnt_recive[24]_net_1\, 
        C => N_398, Y => cnt_recive_n24);
    
    \single_recive_0/data_recive_RNIB3EH[6]\ : OR2B
      port map(A => \data_recive_buffer[6]\, B => 
        \cnt_recive[0]_net_1\, Y => N_1615);
    
    \signal_send_0/cnt_RNIHUVP_0[7]\ : NOR2A
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/tx_uart30_1\);
    
    \single_recive_0/cnt[7]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[7]_net_1\);
    
    \data_all_RNO_0[11]\ : MX2
      port map(A => \data_recive_buffer[3]\, B => 
        \data_all[11]_net_1\, S => N_1636, Y => N_644);
    
    \cnt_send_RNIUK1N1[3]\ : NOR2B
      port map(A => cnt_send_c1, B => N_1851, Y => cnt_send_c3);
    
    \cnt_recive_RNI4JQC1[3]\ : OR2
      port map(A => \cnt_recive[3]_net_1\, B => N_364, Y => 
        \data_all_4_i_o2_i_o4_0[39]\);
    
    \data_all_RNO_0[39]\ : AO1A
      port map(A => \data_all[39]_net_1\, B => N_1633, C => N_398, 
        Y => \data_all_4_i_0[39]\);
    
    \cnt_send_RNO[23]\ : XA1B
      port map(A => cnt_send_c22, B => \cnt_send[23]_net_1\, C
         => N_398, Y => cnt_send_n23);
    
    \data_all_RNO_0[0]\ : NOR2
      port map(A => \data_all[0]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1539);
    
    \cnt_recive_RNII54OA[25]\ : NOR2B
      port map(A => cnt_recive_c24, B => \cnt_recive[25]_net_1\, 
        Y => cnt_recive_c25);
    
    idle_send_fall : DFN1C0
      port map(D => idle_send_fall_2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_fall\);
    
    \single_recive_0/un7_cnt_1_I_13\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/N_8\);
    
    \data_all_RNO_1[75]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[3]\, Y => N_789);
    
    \data_all_RNO_0[48]\ : AO1D
      port map(A => \data_all[48]_net_1\, B => 
        N_392_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[48]\);
    
    \signal_send_0/parity_check_RNO_2\ : AO1A
      port map(A => \signal_send_0/parity_check_7\, B => 
        \signal_send_0/tx_uart34\, C => 
        \signal_send_0/parity_check_6_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_2\);
    
    \signal_send_0/cnt_delaylde\ : AO1
      port map(A => \signal_send_0/un12_receive_end\, B => 
        \receive_end\, C => N_398, Y => cnt_delaye);
    
    \cnt_recive_RNO_0[17]\ : NOR2B
      port map(A => cnt_recive_c15, B => \cnt_recive[16]_net_1\, 
        Y => cnt_recive_c16);
    
    \cnt_recive_RNO_0[24]\ : NOR2B
      port map(A => cnt_recive_c22, B => \cnt_recive[23]_net_1\, 
        Y => cnt_recive_c23);
    
    \cnt_send[7]\ : DFN1E1C0
      port map(D => cnt_send_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[7]_net_1\);
    
    \cnt_recive_RNO[29]\ : XA1B
      port map(A => cnt_recive_c28, B => \cnt_recive[29]_net_1\, 
        C => N_398, Y => cnt_recive_n29);
    
    \single_recive_0/data_recive_RNO_2[6]\ : OA1A
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/N_43\);
    
    \data_all_RNO_0[125]\ : NOR3A
      port map(A => \data_all[125]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_856);
    
    \signal_send_0/vld_send_down\ : DFN1C0
      port map(D => \signal_send_0/vld_send_down_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/vld_send_down_net_1\);
    
    \signal_send_0/un7_cnt_1_I_6\ : NOR2B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => \signal_send_0/N_11\);
    
    \data_all_RNO[65]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_459, C => 
        \data_all_4_i_0[65]\, Y => N_221);
    
    \cnt_send_RNI89991_2[1]\ : NOR3A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        C => \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_21_0_a4_out);
    
    \data_all[130]\ : DFN1E0C0
      port map(D => N_93, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[130]_net_1\);
    
    \data_all_RNO[14]\ : MX2
      port map(A => N_1770_1, B => \data_all_4_i_i_a4_0[14]\, S
         => N_1636, Y => N_1593);
    
    \cnt_recive_end_RNO[1]\ : XA1
      port map(A => \cnt_recive_end[1]_net_1\, B => 
        \cnt_recive_end[0]_net_1\, C => cnt_recive_end_0_sqmuxa, 
        Y => cnt_recive_end_n1);
    
    \data_send_buffer_RNO_17[4]\ : OR3
      port map(A => N_517, B => N_516, C => N_513, Y => 
        \data_send_buffer_4_1_10_0[4]\);
    
    \signal_send_0/cnt_RNI3GVP[1]\ : NOR2B
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/un1_cnt_1\);
    
    \data_send_buffer_RNO_21[7]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => N_1863, C => 
        \data_all[159]_net_1\, Y => N_462);
    
    \single_recive_0/data_recive_RNO[5]\ : AO1A
      port map(A => \single_recive_0/N_64\, B => 
        \data_recive_buffer[5]\, C => 
        \single_recive_0/rx_uart_m_4\, Y => 
        \single_recive_0/data_recive_11[5]\);
    
    \signal_send_0/cnt_end[2]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n2\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[2]_net_1\);
    
    send_end_RNO_41 : XOR2
      port map(A => \cnt_send[5]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => un12_cnt_send_5);
    
    \data_send_buffer_RNO_32[2]\ : NOR2B
      port map(A => \data_all[130]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => 
        \data_send_buffer_4_1_a2_2_0[2]\);
    
    \data_send_buffer_RNO_31[4]\ : NOR3B
      port map(A => \cnt_send[3]_net_1\, B => 
        \data_all[76]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        data_send_buffer_4_1_7tt_4_N_3_mux);
    
    \data_all_RNO_1[135]\ : XNOR2
      port map(A => \data_recive_buffer[7]\, B => 
        N_391_i_0_o2_N_5_mux, Y => \data_all_RNO_1[135]_net_1\);
    
    \cnt_recive_RNIETQC1[3]\ : NOR2B
      port map(A => \cnt_recive[3]_net_1\, B => 
        cnt_recive_c8_m6_0_a2_0, Y => cnt_recive_c19_m6_0_a2_3_4);
    
    \data_all_RNO_0[113]\ : AO1D
      port map(A => \data_all[113]_net_1\, B => 
        N_387_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[113]\);
    
    \signal_send_0/cnt[3]\ : DFN1C0
      port map(D => \signal_send_0/I_9_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[3]_net_1\);
    
    \data_send_buffer_RNO_17[6]\ : MX2
      port map(A => \data_all[22]_net_1\, B => 
        \data_all[30]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1652);
    
    \data_send_buffer_RNO_13[2]\ : AO1
      port map(A => \data_send_buffer_4_1_a2_0[2]\, B => N_1863, 
        C => N_570, Y => \data_send_buffer_4_1_0[2]\);
    
    \signal_send_0/cnt_end_RNISCMJ[6]\ : NOR2
      port map(A => \signal_send_0/cnt_end[6]_net_1\, B => 
        \signal_send_0/cnt_end[8]_net_1\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_3\);
    
    \cnt_send_RNI56991[2]\ : NOR2B
      port map(A => cnt_send_c1, B => \cnt_send[2]_net_1\, Y => 
        cnt_send_c2);
    
    \cnt_recive_RNO_0[20]\ : AX1C
      port map(A => cnt_recive_c2, B => cnt_recive_c19_m6_0_a2_0, 
        C => \cnt_recive[20]_net_1\, Y => cnt_recive_n20_tz);
    
    \single_recive_0/data_recive_RNO[3]\ : AO1A
      port map(A => \single_recive_0/N_54\, B => 
        \data_recive_buffer[3]\, C => 
        \single_recive_0/rx_uart_m_2\, Y => 
        \single_recive_0/data_recive_11[3]\);
    
    \data_send_buffer_RNO_4[7]\ : OR3
      port map(A => N_471, B => N_478, C => N_479, Y => 
        \data_send_buffer_4_1_7[7]\);
    
    \data_all[124]\ : DFN1E0C0
      port map(D => N_105, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[124]_net_1\);
    
    \cnt_delay[3]\ : DFN1E1C0
      port map(D => cnt_delay_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[3]_net_1\);
    
    \signal_send_0/tx_uart_RNO_4\ : NOR2B
      port map(A => \data_send_buffer[6]_net_1\, B => 
        \signal_send_0/tx_uart34\, Y => 
        \signal_send_0/data_send_m[6]\);
    
    \data_send_buffer_RNO_1[2]\ : OR3
      port map(A => N_553, B => \data_send_buffer_4_1_7[2]\, C
         => N_557, Y => \data_send_buffer_4_1_15[2]\);
    
    \data_all_RNO_1[151]\ : XNOR2
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \data_all[151]_net_1\, Y => \data_all_RNO_1[151]_net_1\);
    
    \data_all_RNO[119]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[119]\, B => N_1844, S
         => N_387_i_0_o4_N_5_mux, Y => N_280);
    
    \cnt_recive[13]\ : DFN1E0C0
      port map(D => cnt_recive_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[13]_net_1\);
    
    \signal_send_0/un12_cnt_delay_1\ : NOR2B
      port map(A => \cnt_delay[2]_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_1_0_net_1\);
    
    send_end_RNO_11 : XO1
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => send_end_0_sqmuxa_i_12, Y => 
        send_end_0_sqmuxa_i_20);
    
    \data_send_buffer_RNO_21[0]\ : NOR3C
      port map(A => \data_all[104]_net_1\, B => 
        data_send_buffer_4_1_a2_20_0_a4_out, C => N_1841, Y => 
        N_606);
    
    send_end_RNO_9 : XO1
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_send[7]_net_1\, C => un12_cnt_send_15, Y => 
        send_end_0_sqmuxa_i_11);
    
    un20_data_send_buffer_1_I_15 : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\);
    
    \data_all[2]\ : DFN1E0C0
      port map(D => N_345, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[2]_net_1\);
    
    \cnt_delay[1]\ : DFN1E1C0
      port map(D => cnt_delay_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[1]_net_1\);
    
    \data_send_buffer_RNO_9[6]\ : MX2
      port map(A => N_1647, B => N_631_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_775_3);
    
    \single_recive_0/rx_down_RNO\ : NOR2A
      port map(A => \single_recive_0/rx_fall_net_1\, B => 
        rx_uart_c, Y => \single_recive_0/rx_down_1\);
    
    \data_all_RNO_2[38]\ : NOR3
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_recive_buffer[6]\, C => 
        \data_all_4_i_o2_i_o4_0[39]\, Y => 
        data_all_4_i_a2_0_38_m2_e_1);
    
    \signal_send_0/idle_send_RNIGUCO\ : NOR3A
      port map(A => \idle_send_fall\, B => 
        \signal_send_0/idle_send_net_1\, C => N_398, Y => 
        idle_send_down_3);
    
    \data_send_buffer_RNO_13[0]\ : AO1
      port map(A => \data_all[136]_net_1\, B => N_1585, C => 
        N_594, Y => \data_send_buffer_4_1_0[0]\);
    
    \single_recive_0/data_recive_RNI2DCEO[2]\ : OA1C
      port map(A => N_392_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, C => 
        \single_recive_0/data_all_4_i_0[50]_net_1\, Y => N_251);
    
    \cnt_send_RNICPQ42[4]\ : NOR3C
      port map(A => cnt_send_c8_m3_0_a2_1, B => 
        cnt_send_c8_m3_0_a2_0, C => \cnt_send[4]_net_1\, Y => 
        cnt_send_c8_m3_0_a2_3);
    
    \sys_rest_pad/U0/U1\ : CLKIO
      port map(A => \sys_rest_pad/U0/NET1\, Y => sys_rest_c);
    
    \single_recive_0/cnt[1]\ : DFN1C0
      port map(D => \single_recive_0/I_5\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[1]_net_1\);
    
    \signal_send_0/parity_check_RNO\ : NOR3
      port map(A => \signal_send_0/parity_check_10_iv_3\, B => 
        \signal_send_0/parity_check_10_iv_2\, C => 
        \signal_send_0/parity_check_10_iv_4\, Y => 
        \signal_send_0/parity_check_10_iv\);
    
    \cnt_recive[5]\ : DFN1E0C0
      port map(D => cnt_recive_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[5]_net_1\);
    
    \data_all_RNO[79]\ : NOR3
      port map(A => N_782, B => N_398, C => N_783, Y => N_195);
    
    \single_recive_0/cnt_RNIQ01I_1[2]\ : NOR2A
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_3_0\);
    
    send_end_RNO_18 : XOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_recive[20]_net_1\, Y => un12_cnt_send_20);
    
    \signal_send_0/un7_cnt_1_I_22\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[2]\, C => 
        \signal_send_0/DWACT_FINC_E[3]\, Y => \signal_send_0/N_5\);
    
    \data_all_RNO[5]\ : NOR3
      port map(A => N_1529, B => N_398, C => N_1530, Y => N_339);
    
    \data_all_RNO[31]\ : NOR2
      port map(A => N_1659, B => N_398, Y => N_289);
    
    \data_send_buffer_RNO_23[3]\ : NOR3B
      port map(A => \data_all[3]_net_1\, B => N_1668_2, C => 
        N_398, Y => N_1669);
    
    \cnt_send_RNIGA2D[28]\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => N_398, Y => N_1838);
    
    \data_all_RNO_0[94]\ : NOR2A
      port map(A => N_1618, B => \data_all[94]_net_1\, Y => N_752);
    
    \cnt_recive[4]\ : DFN1E0C0
      port map(D => cnt_recive_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[4]_net_1\);
    
    \cnt_recive_0_RNIH55U[1]\ : NOR3
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => \cnt_recive_0[1]_net_1\, Y
         => un5_idle_recive_15);
    
    \signal_send_0/un7_cnt_1_I_16\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/DWACT_FINC_E[1]\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => \signal_send_0/N_7\);
    
    \data_all_RNO_0[62]\ : NOR3B
      port map(A => N_456, B => \data_all[62]_net_1\, C => N_398, 
        Y => N_1710);
    
    \cnt_recive_RNIB8BB7[19]\ : NOR2B
      port map(A => cnt_recive_c19_m6_0_a2_3, B => 
        cnt_recive_c17_m6_0_a2_4, Y => cnt_recive_c19_m6_0_a2_0);
    
    \data_send_buffer_RNO_19[0]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[152]_net_1\, C => N_1863, Y => N_594);
    
    \data_all_RNO_0[97]\ : AO1D
      port map(A => \data_all[97]_net_1\, B => 
        N_385_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[97]\);
    
    \data_send_buffer_RNO_18[1]\ : NOR2B
      port map(A => \data_all[145]_net_1\, B => N_984, Y => N_575);
    
    \cnt_send[9]\ : DFN1E1C0
      port map(D => cnt_send_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[9]_net_1\);
    
    \cnt_recive_RNIL3391[19]\ : NOR3C
      port map(A => \cnt_recive[18]_net_1\, B => 
        \cnt_recive[19]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        cnt_recive_c19_m6_0_a2_3_3);
    
    \cnt_recive_RNICR3EC_0[4]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        data_all_4_i_o2_i_o4_159_N_5_mux);
    
    \data_all_RNO[48]\ : OA1C
      port map(A => N_392_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[48]\, Y => 
        N_255);
    
    \data_all_RNO_0[85]\ : NOR2A
      port map(A => \data_all[85]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[85]\);
    
    \cnt_recive_RNO_0[30]\ : NOR2A
      port map(A => \cnt_recive[29]_net_1\, B => N_398, Y => 
        cnt_recive_161_0);
    
    \cnt_recive_RNI4JQC1_0[1]\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => N_434, Y => 
        N_381_i_0_o4_out);
    
    \cnt_recive_end_RNO[6]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n6_tz, Y => cnt_recive_end_n6);
    
    \cnt_recive_RNIVK6Q_0[24]\ : NOR2
      port map(A => \cnt_recive[23]_net_1\, B => 
        \cnt_recive[24]_net_1\, Y => un5_idle_recive_4);
    
    \data_all_RNO_0[145]\ : NOR2A
      port map(A => \data_all[145]_net_1\, B => N_398, Y => 
        d_N_3_mux_0);
    
    \signal_send_0/vld_send_down_RNO\ : NOR2B
      port map(A => \signal_send_0/vld_send_fall_i_0\, B => 
        \vld_send\, Y => \signal_send_0/vld_send_down_1\);
    
    \single_recive_0/rx_down\ : DFN1C0
      port map(D => \single_recive_0/rx_down_1\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/rx_down_net_1\);
    
    \signal_send_0/cnt_end_RNO[3]\ : XOR2
      port map(A => \signal_send_0/cnt_end_c2\, B => 
        \signal_send_0/cnt_end[3]_net_1\, Y => 
        \signal_send_0/cnt_end_n3\);
    
    \data_all[152]\ : DFN1E0C0
      port map(D => N_49, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[152]_net_1\);
    
    \cnt_send[15]\ : DFN1E1C0
      port map(D => cnt_send_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[15]_net_1\);
    
    \data_all[137]\ : DFN1E0C0
      port map(D => N_79, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[137]_net_1\);
    
    \signal_send_0/cnt_RNIUOVJ1[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/tx_uart30_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart30_3\);
    
    \cnt_send_RNO[14]\ : XA1B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, C
         => N_398, Y => cnt_send_n14);
    
    \signal_send_0/cnt_RNICPVP[4]\ : NOR2B
      port map(A => \signal_send_0/cnt[4]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/un1_cnt_2\);
    
    send_end_RNO_37 : XOR2
      port map(A => \cnt_send[30]_net_1\, B => 
        \cnt_recive[30]_net_1\, Y => un12_cnt_send_30);
    
    \data_all[95]\ : DFN1E0C0
      port map(D => N_163, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[95]_net_1\);
    
    \cnt_send_RNI89J03[15]\ : NOR3C
      port map(A => cnt_send_c18_m6_0_a2_5, B => 
        cnt_send_c18_m6_0_a2_4, C => cnt_send_c1, Y => 
        cnt_send_c18_m6_0_a2_7);
    
    \signal_send_0/parity_check\ : DFN1E0P0
      port map(D => \signal_send_0/parity_check_10_iv\, CLK => 
        sys_clk_c, PRE => sys_rest_c, E => 
        \signal_send_0/parity_check_0_sqmuxa\, Q => 
        \signal_send_0/parity_check_net_1\);
    
    \data_send_buffer_RNO_8[1]\ : AO1
      port map(A => \data_all[129]_net_1\, B => N_1581, C => 
        \data_send_buffer_4_1_3[1]\, Y => 
        \data_send_buffer_4_1_9[1]\);
    
    \data_all_RNO_0[137]\ : AO1D
      port map(A => \data_all[137]_net_1\, B => 
        N_449_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[137]\);
    
    \signal_send_0/parity_check_RNO_12\ : XOR2
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_4\);
    
    \data_send_buffer_RNO_5[5]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        N_1841, C => \data_all[125]_net_1\, Y => N_1818);
    
    un1_cnt_flag_1_I_10 : AX1C
      port map(A => \cnt_flag[0]_net_1\, B => un3_end_flag, C => 
        \cnt_flag[1]_net_1\, Y => \un1_cnt_flag_1[2]\);
    
    \data_all_RNO[40]\ : NOR3
      port map(A => N_871, B => N_398, C => N_872, Y => N_271);
    
    \data_all_RNO[124]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[124]\, Y
         => N_105);
    
    \cnt_send_0_RNINR1F2_0[4]\ : NOR2B
      port map(A => \data_send_buffer_4_1_a2_33_0_a4_1[7]\, B => 
        data_send_buffer_4_1_a2_23_0_a2_out, Y => N_1579);
    
    \signal_send_0/cnt_end_RNIKMOE2[7]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c6\, B => 
        \signal_send_0/cnt_end[7]_net_1\, Y => 
        \signal_send_0/cnt_end_c7\);
    
    \single_recive_0/cnt_RNIC1DI[9]\ : NOR2
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/un1_cnt_6\);
    
    \single_recive_0/cnt_RNI7VP8J[11]\ : OR3
      port map(A => \single_recive_0/N_47\, B => 
        \single_recive_0/N_48\, C => 
        \single_recive_0/un1_data_recive19_0_1\, Y => 
        \single_recive_0/un1_data_recive19\);
    
    \cnt_recive_RNILHP41[0]\ : XA1B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => N_398, Y => N_19);
    
    \data_send_buffer_RNO_3[1]\ : AO1
      port map(A => \data_all[97]_net_1\, B => N_1573, C => N_585, 
        Y => \data_send_buffer_4_1_7[1]\);
    
    \data_all_RNO_0[6]\ : NOR2A
      port map(A => \data_all[6]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[6]\);
    
    \data_all_RNO[137]\ : OA1C
      port map(A => N_449_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[137]\, Y
         => N_79);
    
    \signal_send_0/cnt_RNIHBVJ1[3]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/un1_cnt_2\, Y => 
        \signal_send_0/tx_uart28_4\);
    
    \cnt_recive_RNO[6]\ : XA1B
      port map(A => cnt_recive_c5, B => \cnt_recive[6]_net_1\, C
         => N_398, Y => cnt_recive_n6);
    
    \data_all_RNO[105]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[105]\, Y
         => N_143);
    
    \cnt_send_RNO[27]\ : XA1B
      port map(A => cnt_send_c26, B => \cnt_send[27]_net_1\, C
         => N_398, Y => cnt_send_n27);
    
    \cnt_recive_0_RNIHP0BA[1]\ : NOR2B
      port map(A => cnt_recive_c24_m6_0_a2_7, B => 
        cnt_recive_c17_m6_0_a2_4, Y => cnt_recive_c24);
    
    \signal_send_0/un7_cnt_1_I_9\ : XOR2
      port map(A => \signal_send_0/N_10\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => \signal_send_0/I_9_0\);
    
    \single_recive_0/cnt_RNIS21I[4]\ : NOR2A
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_10_0\);
    
    \data_send_buffer_RNO_2[1]\ : AO1
      port map(A => \data_all[105]_net_1\, B => N_1568, C => 
        \data_send_buffer_4_1_12[1]\, Y => 
        \data_send_buffer_4_1_15[1]\);
    
    \data_send_buffer_RNO_29[2]\ : NOR2B
      port map(A => \data_all[26]_net_1\, B => N_1575, Y => N_559);
    
    \data_all[139]\ : DFN1E0C0
      port map(D => N_75, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[139]_net_1\);
    
    \single_recive_0/cnt[9]\ : DFN1C0
      port map(D => \single_recive_0/I_26\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[9]_net_1\);
    
    \cnt_recive_RNIFL272[5]\ : NOR3A
      port map(A => un5_idle_recive_4_0, B => 
        \cnt_recive[5]_net_1\, C => \cnt_recive[6]_net_1\, Y => 
        un5_idle_recive_12_0);
    
    \data_all_RNO_0[71]\ : NOR2B
      port map(A => \data_all[71]_net_1\, B => N_1051, Y => 
        N_1720);
    
    \signal_send_0/cnt[9]\ : DFN1C0
      port map(D => \signal_send_0/I_26_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[9]_net_1\);
    
    \single_recive_0/cnt_RNIUE2D1[0]\ : NOR3B
      port map(A => \single_recive_0/N_64_1\, B => 
        \single_recive_0/un1_data_recive19_0_a2_8_3_0\, C => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/N_64\);
    
    un1_cnt_flag_1_I_8 : XOR2
      port map(A => \cnt_flag[0]_net_1\, B => un3_end_flag, Y => 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\);
    
    \data_all[55]\ : DFN1E0C0
      port map(D => N_200, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[55]_net_1\);
    
    \data_all_RNO_0[35]\ : NOR3A
      port map(A => \data_all[35]_net_1\, B => 
        data_all_4_i_i_a2tt_34_N_7_mux, C => N_398, Y => N_1694);
    
    idle_send_down_RNIU78E_0 : OR2
      port map(A => \idle_send_down\, B => N_398, Y => 
        cnt_sende_0);
    
    \signal_send_0/cnt_end_RNIPA2R1[5]\ : NOR2B
      port map(A => \signal_send_0/cnt_end_c4\, B => 
        \signal_send_0/cnt_end[5]_net_1\, Y => 
        \signal_send_0/cnt_end_c5\);
    
    send_end_RNO_24 : XOR2
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_recive[15]_net_1\, Y => un12_cnt_send_15);
    
    \data_all_RNO[45]\ : NOR2A
      port map(A => N_1655, B => N_398, Y => N_261);
    
    \cnt_recive[20]\ : DFN1E0C0
      port map(D => cnt_recive_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[20]_net_1\);
    
    \data_send_buffer_RNO_18[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        \data_all[114]_net_1\, C => N_1842, Y => N_560);
    
    \cnt_send_RNIJ5AT2[12]\ : NOR2B
      port map(A => cnt_send_c13_m6_0_a2_4_6, B => 
        cnt_send_c13_m6_0_a2_4_5, Y => cnt_send_c13_m6_0_a2_4);
    
    \data_send_buffer_RNO_21[5]\ : NOR2B
      port map(A => \data_all[29]_net_1\, B => N_1575, Y => 
        N_1822);
    
    \cnt_recive_RNI4SQ83[22]\ : OR3
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_1[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_0[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_12_4[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]\);
    
    \data_send_buffer_RNO_21[6]\ : MX2
      port map(A => \data_all[86]_net_1\, B => 
        \data_all[94]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_567_3);
    
    \data_all_RNO[102]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[102]\, B => N_1859, S
         => N_385_i_0_o4_N_5_mux, Y => N_258);
    
    \cnt_recive_RNIDFUH3[5]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_11_1[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11_0[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\);
    
    \single_recive_0/data_recive_RNIT4LMC[4]\ : MX2C
      port map(A => \data_all[44]_net_1\, B => 
        \data_recive_buffer[4]\, S => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => 
        \single_recive_0/N_615\);
    
    \data_all[71]\ : DFN1E0C0
      port map(D => N_220, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[71]_net_1\);
    
    \data_all[133]\ : DFN1E0C0
      port map(D => N_296, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[133]_net_1\);
    
    \cnt_recive_end[4]\ : DFN1C0
      port map(D => cnt_recive_end_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[4]_net_1\);
    
    \cnt_recive_RNO[0]\ : NOR2
      port map(A => \cnt_recive[0]_net_1\, B => N_398, Y => N_458);
    
    \single_recive_0/data_recive[7]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[7]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[7]\);
    
    \data_all[70]\ : DFN1E0C0
      port map(D => N_218, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[70]_net_1\);
    
    \data_all_RNO_0[4]\ : NOR2
      port map(A => \data_all[4]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1531);
    
    \signal_send_0/parity_check_RNO_3\ : OR3
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/tx_uart37\, C => \signal_send_0/tx_uart27\, 
        Y => \signal_send_0/un1_tx_uart27_1_1\);
    
    \data_all_RNO_0[105]\ : AO1D
      port map(A => \data_all[105]_net_1\, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[105]\);
    
    \data_all_RNO[34]\ : AO1A
      port map(A => N_1633, B => N_1877, C => N_1692, Y => N_176);
    
    \signal_send_0/send\ : DFN1E1C0
      port map(D => \signal_send_0/un2_vld_send_down\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \signal_send_0/un2_cnt\, Q => \signal_send_0/send_net_1\);
    
    \signal_send_0/cnt_RNINHVJ1[8]\ : NOR3B
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/tx_uart31_3\, C => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart31_6\);
    
    \data_send_buffer_RNO_10[6]\ : MX2
      port map(A => N_487_3, B => N_1652, S => 
        \cnt_send_0[1]_net_1\, Y => N_647_3);
    
    \cnt_send_0_RNIFARU[4]\ : NOR3A
      port map(A => \cnt_send[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1);
    
    \data_send_buffer_RNO_12[1]\ : NOR3B
      port map(A => \data_all[41]_net_1\, B => N_1848, C => 
        \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_14_1_m1_e_1);
    
    \data_all_RNO[22]\ : MX2
      port map(A => N_1859, B => \data_all_4_i_i_a4_0[22]\, S => 
        N_443, Y => N_164);
    
    \cnt_recive_RNICR3EC_3[1]\ : NOR2A
      port map(A => N_397_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        N_397_i_0_o4_N_5_mux);
    
    \cnt_recive_RNIM8C01[1]\ : NOR2
      port map(A => N_1615, B => \cnt_recive[1]_net_1\, Y => 
        N_655_2);
    
    \cnt_send_0_RNINLE61_2[1]\ : NOR3
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => N_1843);
    
    \data_all_RNO_0[52]\ : NOR2A
      port map(A => \data_all[52]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[52]\);
    
    \cnt_send_RNIRETT5[15]\ : NOR2B
      port map(A => cnt_send_c18_m6_0_a2_7, B => 
        cnt_send_c13_m6_0_a2_4, Y => cnt_send_c18);
    
    \data_all[17]\ : DFN1E0C0
      port map(D => N_150, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[17]_net_1\);
    
    \data_send_buffer_RNO_14[5]\ : NOR3B
      port map(A => \data_all[5]_net_1\, B => N_1668_2, C => 
        N_398, Y => N_1668);
    
    \data_all_RNO_0[128]\ : AO1
      port map(A => data_all_4_i_a2_0_128_m1_e_0, B => 
        N_391_i_0_o2_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[128]\);
    
    \cnt_recive_RNIDR291[15]\ : NOR3
      port map(A => \cnt_recive[15]_net_1\, B => 
        \cnt_recive[16]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        un5_idle_recive_8_0);
    
    \single_recive_0/cnt[8]\ : DFN1C0
      port map(D => \single_recive_0/I_23\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[8]_net_1\);
    
    \signal_send_0/un12_receive_endlto5\ : OAI1
      port map(A => \cnt_delay[4]_net_1\, B => 
        \signal_send_0/un12_cnt_delay_1_0_net_1\, C => 
        \cnt_delay[5]_net_1\, Y => 
        \signal_send_0/un12_receive_endlt7\);
    
    \data_all_RNO_0[21]\ : NOR2A
      port map(A => \data_all[21]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[21]\);
    
    \data_all_RNO[155]\ : AO1
      port map(A => N_1856, B => data_all_4_i_o2_i_o4_159_N_5_mux, 
        C => N_1789, Y => N_1611);
    
    \cnt_send[14]\ : DFN1E1C0
      port map(D => cnt_send_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[14]_net_1\);
    
    \single_recive_0/cnt[10]\ : DFN1C0
      port map(D => \single_recive_0/I_28\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[10]_net_1\);
    
    \single_recive_0/data_recive_RNIDGQBP[0]\ : NOR3
      port map(A => \single_recive_0/N_764\, B => N_398, C => 
        \single_recive_0/N_765\, Y => N_177);
    
    \data_send_buffer_RNO_17[7]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        \data_all[39]_net_1\, Y => data_send_buffer_4_1_a2_17_out);
    
    \single_recive_0/cnt_RNI5CPR[11]\ : NOR3B
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[10]_net_1\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_0_3\);
    
    \data_send_buffer_RNO_27[1]\ : NOR3A
      port map(A => \data_all[1]_net_1\, B => I_12_1, C => 
        \cnt_send[0]_net_1\, Y => \data_send_buffer_4_1_a2_1[1]\);
    
    \data_send_buffer_RNO_9[1]\ : OR3
      port map(A => \data_send_buffer_4_1_2[1]\, B => N_583, C
         => N_575, Y => \data_send_buffer_4_1_12[1]\);
    
    \data_send_buffer[3]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[3]_net_1\);
    
    \signal_send_0/cnt_RNISOCR4_1[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart35_4_0\, B => 
        \signal_send_0/tx_uart35_3\, C => 
        \signal_send_0/tx_uart35_5\, Y => 
        \signal_send_0/tx_uart35\);
    
    \data_all_RNO[13]\ : NOR2A
      port map(A => N_646, B => N_398, Y => N_323);
    
    \single_recive_0/cnt_delay_n4\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c3_net_1\, B => 
        \cnt_delay[4]_net_1\, C => N_398, Y => cnt_delay_n4);
    
    \data_send_buffer_RNO_0[7]\ : OR3
      port map(A => N_1469, B => \data_send_buffer_4_1_7[7]\, C
         => \data_send_buffer_4_1_11[7]\, Y => 
        \data_send_buffer_4_1_15[7]\);
    
    \cnt_recive_RNI1MST[8]\ : NOR2B
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => cnt_recive_c8_m6_0_a2_0);
    
    \data_all_RNO_0[40]\ : NOR2
      port map(A => \data_all[40]_net_1\, B => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_871);
    
    \data_all[141]\ : DFN1E0C0
      port map(D => N_306, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[141]_net_1\);
    
    \data_all[150]\ : DFN1E0C0
      port map(D => N_336, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[150]_net_1\);
    
    \cnt_recive_RNICR3EC_2[3]\ : NOR2A
      port map(A => data_all_4_i_i_a2tt_34_m3_0_a2_1, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => 
        data_all_4_i_i_a2tt_34_N_7_mux);
    
    \data_all[21]\ : DFN1E0C0
      port map(D => N_1596, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[21]_net_1\);
    
    \single_recive_0/data_all_4_i_0[57]\ : AO1A
      port map(A => \data_all[57]_net_1\, B => N_456, C => N_398, 
        Y => \single_recive_0/data_all_4_i_0[57]_net_1\);
    
    \single_recive_0/cnt_RNIPF0Q4[11]\ : NOR3C
      port map(A => \single_recive_0/un1_data_recive19_0_a2_1_2\, 
        B => \single_recive_0/un1_data_recive19_0_a2_1_1\, C => 
        \single_recive_0/N_27\, Y => \single_recive_0/N_47\);
    
    \data_all[116]\ : DFN1E0C0
      port map(D => N_1604, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[116]_net_1\);
    
    \cnt_recive_RNINBST[1]\ : OR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => N_364);
    
    \single_recive_0/cnt_RNI84E41[11]\ : NOR3B
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/un1_data_recive19_0_a2_2_1\, C => 
        \single_recive_0/cnt[11]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_2_2\);
    
    \data_send_buffer_RNO_4[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_1[3]\, B => N_1802, C
         => N_1815, Y => \data_send_buffer_4_1_0_7[3]\);
    
    \cnt_recive_end_RNI3J7I[1]\ : NOR3C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_c2);
    
    \cnt_recive[9]\ : DFN1E0C0
      port map(D => cnt_recive_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[9]_net_1\);
    
    \data_send_buffer_RNO_21[1]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[153]_net_1\, C => N_1863, Y => N_574);
    
    \data_send_buffer_RNO_17[3]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        \data_all[35]_net_1\, C => N_1842, Y => N_1815);
    
    \data_all_RNO_0[59]\ : AO1A
      port map(A => \data_all[59]_net_1\, B => N_456, C => N_398, 
        Y => \data_all_4_i_0[59]\);
    
    \cnt_send_RNO[19]\ : XA1B
      port map(A => cnt_send_c18, B => \cnt_send[19]_net_1\, C
         => N_398, Y => cnt_send_n19);
    
    \data_send_buffer_RNO_23[5]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => N_1863, C => 
        \data_all[157]_net_1\, Y => N_1821);
    
    \data_all[82]\ : DFN1E0C0
      port map(D => N_228, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[82]_net_1\);
    
    \data_all[20]\ : DFN1E0C0
      port map(D => N_1595, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[20]_net_1\);
    
    \data_all_RNO[6]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[6]\, B => N_1859, S => 
        N_397_i_0_o4_N_5_mux, Y => N_134);
    
    \data_all_RNO[59]\ : OA1B
      port map(A => \data_recive_buffer[3]\, B => N_456, C => 
        \data_all_4_i_0[59]\, Y => N_233);
    
    send_end_RNO_31 : OR3
      port map(A => un12_cnt_send_9, B => un12_cnt_send_5, C => 
        N_589_i, Y => send_end_0_sqmuxa_i_18);
    
    \data_all_RNO[121]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[121]\, Y
         => N_111);
    
    data_all_4_i_o2_i_o4_111_m2_e_1_RNIBU4EA : AND3B
      port map(A => \data_all_4_i_o2_0_i_o2_0_11[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, C => 
        \data_all_4_i_o2_i_o4_111_m2_e_1\, Y => 
        data_all_4_i_o2_i_o4_111_N_5_mux);
    
    \data_all[106]\ : DFN1E0C0
      port map(D => N_141, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[106]_net_1\);
    
    \data_all[61]\ : DFN1E0C0
      port map(D => N_204, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[61]_net_1\);
    
    \cnt_recive_RNI618M1[21]\ : NOR3C
      port map(A => cnt_recive_c24_m6_0_a2_0, B => 
        \cnt_recive[21]_net_1\, C => \cnt_recive[0]_net_1\, Y => 
        cnt_recive_c24_m6_0_a2_4);
    
    \data_send_buffer_RNO_15[5]\ : NOR2B
      port map(A => \data_all[53]_net_1\, B => N_1574, Y => 
        N_1825);
    
    \signal_send_0/cnt_end[8]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n8\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[8]_net_1\);
    
    \data_all_RNO_0[130]\ : NOR3A
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \cnt_recive_0[1]_net_1\, C => \data_recive_buffer[2]\, Y
         => N_681);
    
    \data_all_RNO[152]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[152]\, Y
         => N_49);
    
    \data_send_buffer_RNO_30[3]\ : NOR2B
      port map(A => \data_all[139]_net_1\, B => N_1585, Y => 
        N_1811);
    
    \data_all[60]\ : DFN1E0C0
      port map(D => N_202, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[60]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_18\ : AND3
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[2]\);
    
    \data_all_RNO_0[155]\ : NOR2B
      port map(A => \data_all[155]_net_1\, B => N_1047, Y => 
        N_1789);
    
    \signal_send_0/cnt_RNILSDJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart36_1\, C => 
        \signal_send_0/cnt[11]_net_1\, Y => 
        \signal_send_0/tx_uart36_4\);
    
    send_end_RNO_8 : OR3
      port map(A => send_end_0_sqmuxa_i_2, B => 
        send_end_0_sqmuxa_i_1, C => N_587_i, Y => 
        send_end_0_sqmuxa_i_21);
    
    \cnt_send_RNI89991_1[1]\ : NOR3B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[1]_net_1\, 
        C => \cnt_send[3]_net_1\, Y => 
        \data_send_buffer_4_1_a2_22_0_a4_0[7]\);
    
    \cnt_recive_RNISVMA2[4]\ : NOR3C
      port map(A => \cnt_recive[3]_net_1\, B => cnt_recive_c2, C
         => \cnt_recive[4]_net_1\, Y => cnt_recive_c4);
    
    \data_send_buffer_RNO_29[1]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        \data_all[33]_net_1\, Y => 
        \data_send_buffer_RNO_29[1]_net_1\);
    
    \signal_send_0/cnt_RNO[6]\ : XA1
      port map(A => \signal_send_0/N_7\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[6]\);
    
    send_end_RNO_38 : XOR2
      port map(A => \cnt_send[6]_net_1\, B => 
        \cnt_recive[6]_net_1\, Y => un12_cnt_send_6);
    
    \cnt_recive_RNI786E3[11]\ : NOR3C
      port map(A => un5_idle_recive_12, B => un5_idle_recive_11, 
        C => un5_idle_recive_10_0, Y => un5_idle_recive_16);
    
    \cnt_send[26]\ : DFN1E1C0
      port map(D => cnt_send_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[26]_net_1\);
    
    \data_all_RNO_0[65]\ : AO1A
      port map(A => \data_all[65]_net_1\, B => N_459, C => N_398, 
        Y => \data_all_4_i_0[65]\);
    
    \data_all_RNO[100]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[100]\, B => N_1845, S
         => N_385_i_0_o4_N_5_mux, Y => N_1598);
    
    \signal_send_0/un7_cnt_1_I_13\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[0]\, B => 
        \signal_send_0/cnt[3]_net_1\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => \signal_send_0/N_8\);
    
    \data_all[138]\ : DFN1E0C0
      port map(D => N_77, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[138]_net_1\);
    
    \cnt_recive_RNO[13]\ : XA1B
      port map(A => cnt_recive_c12, B => \cnt_recive[13]_net_1\, 
        C => N_398, Y => cnt_recive_n13);
    
    \data_send_buffer_RNO_20[5]\ : AO1
      port map(A => data_send_buffer_4_1_0_a4_12_5_m1_e_1, B => 
        N_1841, C => N_1837, Y => \data_send_buffer_4_1_0_5[5]\);
    
    \data_send_buffer_RNO_12[2]\ : AO1
      port map(A => \data_send_buffer_4_1_a2_2_1[2]\, B => N_1838, 
        C => N_554, Y => \data_send_buffer_4_1_1[2]\);
    
    \data_send_buffer_RNO_11[4]\ : NOR2B
      port map(A => \data_all[140]_net_1\, B => N_1585, Y => 
        N_512);
    
    \data_all[42]\ : DFN1E0C0
      port map(D => N_267, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[42]_net_1\);
    
    \cnt_send_RNO[25]\ : NOR2A
      port map(A => cnt_send_n25_tz, B => N_398, Y => 
        cnt_send_n25);
    
    \cnt_send[30]\ : DFN1E1C0
      port map(D => cnt_send_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[30]_net_1\);
    
    send_end_RNO_6 : OR3
      port map(A => N_595_i, B => un12_cnt_send_21, C => 
        send_end_0_sqmuxa_i_6, Y => send_end_0_sqmuxa_i_15);
    
    \cnt_recive_RNIRJJ83[6]\ : NOR2B
      port map(A => cnt_recive_c5, B => \cnt_recive[6]_net_1\, Y
         => cnt_recive_c6);
    
    \data_send_buffer_RNO_8[5]\ : NOR3C
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, C => 
        \data_all[117]_net_1\, Y => N_1823);
    
    \data_all_RNO_3[151]\ : XNOR2
      port map(A => \data_all[151]_net_1\, B => 
        \data_recive_buffer[7]\, Y => \data_all_RNO_3[151]_net_1\);
    
    \cnt_recive_0_RNIRFEVB_4[1]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_127_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        data_all_4_i_o2_i_o4_127_N_5_mux);
    
    \cnt_recive_RNO_0[8]\ : NOR2B
      port map(A => cnt_recive_c6, B => \cnt_recive[7]_net_1\, Y
         => cnt_recive_c7);
    
    \signal_send_0/cnt_RNI4EPV11[10]\ : OR3
      port map(A => \signal_send_0/un1_tx_uart27_2\, B => 
        \signal_send_0/un1_tx_uart27_1_0\, C => 
        \signal_send_0/un1_tx_uart27_5\, Y => 
        \signal_send_0/un1_tx_uart27_8\);
    
    \data_all_RNO_1[130]\ : NOR2A
      port map(A => N_1620, B => \data_all[130]_net_1\, Y => 
        N_680);
    
    \data_all[89]\ : DFN1E0C0
      port map(D => N_175, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[89]_net_1\);
    
    \data_all_RNO[17]\ : MX2
      port map(A => N_1052, B => \data_all_4_i_i_a4_0[17]\, S => 
        N_443, Y => N_150);
    
    \data_send_buffer_RNO_7[6]\ : MX2
      port map(A => N_647_3, B => N_679_3, S => 
        \cnt_send[2]_net_1\, Y => N_807_3);
    
    \cnt_send_RNO_0[30]\ : NOR2A
      port map(A => \cnt_send[29]_net_1\, B => N_398, Y => 
        cnt_send_99_0);
    
    \cnt_send_RNIF70Q[13]\ : NOR3C
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[13]_net_1\, C => \cnt_send[7]_net_1\, Y => 
        cnt_send_c13_m6_0_a2_4_4);
    
    \single_recive_0/data_all_4_i_0[123]\ : AO1D
      port map(A => \data_all[123]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \single_recive_0/data_all_4_i_0[123]_net_1\);
    
    \signal_send_0/end_flag_RNIU4ODD\ : NOR2B
      port map(A => \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, B
         => un3_end_flag, Y => cnt_flag_0_sqmuxa);
    
    \data_send_buffer_RNO_8[4]\ : OR3
      port map(A => \data_send_buffer_4_1_7_0[4]\, B => 
        \data_send_buffer_4_1_6[4]\, C => 
        \data_send_buffer_4_1_10_0[4]\, Y => 
        \data_send_buffer_4_1_13[4]\);
    
    \single_recive_0/un7_cnt_1_I_27\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[4]\, B => 
        \single_recive_0/cnt[8]_net_1\, C => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/N_3\);
    
    \cnt_send_RNI6UKU[18]\ : NOR3C
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[18]_net_1\, C => cnt_send_c24_m6_0_a2_4_4, Y
         => cnt_send_c24_m6_0_a2_4_6);
    
    \data_send_buffer_RNO_7[2]\ : OR3
      port map(A => N_569, B => N_562, C => N_561, Y => 
        \data_send_buffer_4_1_7[2]\);
    
    \data_all_RNO_0[148]\ : NOR2A
      port map(A => \data_all[148]_net_1\, B => N_398, Y => 
        d_N_3_mux);
    
    \data_all[3]\ : DFN1E0C0
      port map(D => N_343, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[3]_net_1\);
    
    \signal_send_0/end_flag_RNIUCLKD\ : OA1C
      port map(A => un3_end_flag, B => 
        \signal_send_0/cnt_flag_0_sqmuxa_0_net_1\, C => N_398, Y
         => vld_send_0_sqmuxa);
    
    \cnt_recive_RNO[4]\ : NOR2A
      port map(A => cnt_recive_n4_tz, B => N_398, Y => 
        cnt_recive_n4);
    
    \data_all_RNO[136]\ : OA1C
      port map(A => N_449_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[136]\, Y
         => N_81);
    
    \signal_send_0/cnt_RNIRLVJ1[2]\ : NOR3C
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[9]_net_1\, C => 
        \signal_send_0/tx_uart31_1\, Y => 
        \signal_send_0/tx_uart31_5\);
    
    \data_all_RNO_0[13]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[13]_net_1\, S => N_1636, Y => N_646);
    
    \data_send_buffer[0]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[0]_net_1\);
    
    \data_all_RNO_0[8]\ : AO1A
      port map(A => \data_all[8]_net_1\, B => N_1636, C => N_398, 
        Y => \data_all_4_i_0[8]\);
    
    \cnt_send_RNI24CE5[15]\ : NOR2B
      port map(A => cnt_send_c14, B => \cnt_send[15]_net_1\, Y
         => cnt_send_c15);
    
    \cnt_recive_RNI5BLS5[12]\ : NOR2B
      port map(A => cnt_recive_c11, B => \cnt_recive[12]_net_1\, 
        Y => cnt_recive_c12);
    
    \data_send_buffer_RNO_7[1]\ : AO1
      port map(A => \data_all[57]_net_1\, B => N_1570, C => N_581, 
        Y => \data_send_buffer_4_1_4[1]\);
    
    \data_send_buffer_RNO_5[3]\ : AO1
      port map(A => data_send_buffer_4_1_0_a4_11_out, B => N_1841, 
        C => N_1803, Y => \data_send_buffer_4_1_0_12[3]\);
    
    \data_all_RNO_0[5]\ : NOR2
      port map(A => \data_all[5]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1529);
    
    \single_recive_0/un7_cnt_1_I_24\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/DWACT_FINC_E[3]\, Y => 
        \single_recive_0/DWACT_FINC_E[4]\);
    
    \single_recive_0/cnt_delay_n3\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c2_net_1\, B => 
        \cnt_delay[3]_net_1\, C => N_398, Y => cnt_delay_n3);
    
    \data_all_RNO_1[74]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[2]\, Y => N_791);
    
    \signal_send_0/cnt_end[3]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n3\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[3]_net_1\);
    
    \cnt_recive_RNIBP291[14]\ : NOR3C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => \cnt_recive[7]_net_1\, Y => 
        cnt_recive_c14_m6_0_a2_4);
    
    \data_all_RNO[72]\ : NOR3
      port map(A => N_794, B => N_398, C => N_795, Y => N_207);
    
    \data_all[157]\ : DFN1E0C0
      port map(D => N_1613, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[157]_net_1\);
    
    \cnt_recive_RNI5P4Q[17]\ : NOR2
      port map(A => \cnt_recive[17]_net_1\, B => 
        \cnt_recive[18]_net_1\, Y => un5_idle_recive_7);
    
    \single_recive_0/data_recive_RNO_0[0]\ : NOR2B
      port map(A => \single_recive_0/un1_cnt_6\, B => rx_uart_c, 
        Y => \single_recive_0/rx_uart_m\);
    
    \data_all[49]\ : DFN1E0C0
      port map(D => N_253, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[49]_net_1\);
    
    \cnt_recive_RNO_0[22]\ : AX1C
      port map(A => \cnt_recive[21]_net_1\, B => cnt_recive_c20, 
        C => \cnt_recive[22]_net_1\, Y => cnt_recive_n22_tz);
    
    \cnt_recive[11]\ : DFN1E0C0
      port map(D => cnt_recive_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[11]_net_1\);
    
    \data_all_RNO_2[146]\ : NOR3B
      port map(A => \data_all_RNO_3[146]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => N_398, Y => 
        data_all_4_i_i_146_N_7_mux);
    
    \data_all_RNO[16]\ : MX2
      port map(A => N_1053, B => \data_all_4_i_i_a4_0[16]\, S => 
        N_443, Y => N_146);
    
    \data_all_RNO_1[77]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[5]\, Y => N_785);
    
    \data_send_buffer_RNO_16[5]\ : NOR2B
      port map(A => \data_all[141]_net_1\, B => N_1585, Y => 
        N_1831);
    
    \signal_send_0/cnt_RNISMVJ1_0[6]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart34_4_0\);
    
    \data_send_buffer_RNO_15[7]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        \data_all[119]_net_1\, Y => data_send_buffer_4_1_a2_7_out);
    
    \single_recive_0/un7_cnt_1_I_29\ : AND3
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, C => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[5]\);
    
    \data_all[134]\ : DFN1E0C0
      port map(D => N_298, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[134]_net_1\);
    
    \data_send_buffer_RNO_12[7]\ : NOR3C
      port map(A => \data_all[87]_net_1\, B => 
        data_send_buffer_4_1_a2_23_0_a2_out, C => 
        \data_send_buffer_4_1_a2_33_0_a4_1[7]\, Y => N_471);
    
    \data_all_RNO[114]\ : OA1C
      port map(A => N_387_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[114]\, Y
         => N_125);
    
    \cnt_send_0_RNI7HV12[4]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => N_1840, C
         => \cnt_send_0[4]_net_1\, Y => 
        data_send_buffer_4_1_a2_35_0_a4_out);
    
    \data_send_buffer_RNO_3[5]\ : OR3
      port map(A => N_1836, B => \data_send_buffer_4_1_0_1[5]\, C
         => N_1668, Y => \data_send_buffer_4_1_0_9[5]\);
    
    \data_all_RNO_0[42]\ : NOR2
      port map(A => \data_all[42]_net_1\, B => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_867);
    
    \cnt_recive_RNO[10]\ : XA1B
      port map(A => cnt_recive_c9, B => \cnt_recive[10]_net_1\, C
         => N_398, Y => cnt_recive_n10);
    
    idle_recive_down_RNIIQRK_0 : CLKINT
      port map(A => \idle_recive_down_RNIIQRK\, Y => 
        cnt_recive_1_sqmuxa);
    
    \data_all_RNO[82]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[82]\, B => N_1877, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_228);
    
    \data_all_RNO[1]\ : NOR3
      port map(A => N_1537, B => N_398, C => N_1538, Y => N_347);
    
    \cnt_send_RNIKVGR[5]\ : NOR2B
      port map(A => \cnt_send[5]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => cnt_send_c11_m6_0_a2_3);
    
    \single_recive_0/un7_cnt_1_I_19\ : AND3
      port map(A => \single_recive_0/DWACT_FINC_E[0]\, B => 
        \single_recive_0/DWACT_FINC_E[2]\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/N_6\);
    
    \data_all_RNO[150]\ : AO1A
      port map(A => N_441, B => N_1859, C => N_1785, Y => N_336);
    
    \data_all[142]\ : DFN1E0C0
      port map(D => N_310, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[142]_net_1\);
    
    \data_send_buffer_RNO_12[3]\ : NOR2B
      port map(A => \data_all[99]_net_1\, B => N_1573, Y => 
        N_1813);
    
    \cnt_recive_0_RNIJ75U_3[1]\ : NOR3B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => \cnt_recive[3]_net_1\, Y
         => N_392_i_0_o4_m2_e_0);
    
    \cnt_send[4]\ : DFN1E1C0
      port map(D => cnt_send_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[4]_net_1\);
    
    \data_all[14]\ : DFN1E0C0
      port map(D => N_1593, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[14]_net_1\);
    
    \signal_send_0/cnt_end[4]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n4\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[4]_net_1\);
    
    \data_all[97]\ : DFN1E0C0
      port map(D => N_159, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[97]_net_1\);
    
    \cnt_send_0[4]\ : DFN1E1C0
      port map(D => cnt_send_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send_0[4]_net_1\);
    
    \cnt_recive_RNIBD732[10]\ : NOR3C
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_recive[10]_net_1\, C => cnt_recive_c17_m6_0_a2_4_4, 
        Y => cnt_recive_c17_m6_0_a2_4_6);
    
    \single_recive_0/cnt_RNIUIRV1[2]\ : NOR3C
      port map(A => \single_recive_0/un1_data_recive19_0_a2_0_2\, 
        B => \single_recive_0/un1_data_recive19_0_a2_0_1\, C => 
        \single_recive_0/un1_data_recive19_0_a2_0_3\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_0_5\);
    
    \cnt_send_0_RNI687C2[4]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a2_out, B => 
        data_send_buffer_4_1_a2_20_0_a4_out, C => N_398, Y => 
        N_1573);
    
    \single_recive_0/cnt_delay_c2\ : NOR2B
      port map(A => \single_recive_0/cnt_delay_c1_net_1\, B => 
        \cnt_delay[2]_net_1\, Y => 
        \single_recive_0/cnt_delay_c2_net_1\);
    
    \signal_send_0/cnt_RNIGAVJ1[6]\ : NOR3C
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, C => 
        \signal_send_0/tx_uart35_4\, Y => 
        \signal_send_0/tx_uart35_4_0\);
    
    \data_all[159]\ : DFN1E0C0
      port map(D => N_1614, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[159]_net_1\);
    
    \cnt_send[29]\ : DFN1E1C0
      port map(D => cnt_send_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[29]_net_1\);
    
    \signal_send_0/vld_send_down_RNIL7KK\ : NOR2A
      port map(A => \signal_send_0/vld_send_down_net_1\, B => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/un2_vld_send_down\);
    
    \data_all_RNO_0[129]\ : AO1
      port map(A => data_all_4_i_a2_0_129_m1_e_0, B => 
        N_391_i_0_o2_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[129]\);
    
    \data_all_RNO_0[49]\ : AO1D
      port map(A => \data_all[49]_net_1\, B => 
        N_392_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[49]\);
    
    \signal_send_0/cnt_end_RNIO0HT[2]\ : NOR3C
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/cnt_end[1]_net_1\, C => 
        \signal_send_0/cnt_end[2]_net_1\, Y => 
        \signal_send_0/cnt_end_c2\);
    
    \data_send_buffer[5]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[5]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[5]_net_1\);
    
    \data_all[18]\ : DFN1E0C0
      port map(D => N_154, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[18]_net_1\);
    
    \cnt_recive_RNIMG971[1]\ : NOR3A
      port map(A => \cnt_recive[1]_net_1\, B => N_1615, C => 
        N_398, Y => N_1711_1);
    
    \signal_send_0/un7_cnt_1_I_8\ : AND3
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => \signal_send_0/N_10\);
    
    \cnt_recive_0_RNIKHBF7[1]\ : NOR2B
      port map(A => cnt_recive_c17_m6_0_a2_4, B => cnt_recive_c8, 
        Y => cnt_recive_c17);
    
    \signal_send_0/cnt_RNO[8]\ : XA1
      port map(A => \signal_send_0/N_5\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[8]\);
    
    \data_all_RNO[147]\ : AO1A
      port map(A => N_441, B => N_1856, C => N_1779, Y => N_1607);
    
    \signal_send_0/cnt_end[0]\ : DFN1C0
      port map(D => \signal_send_0/cnt_end_RNO[0]_net_1\, CLK => 
        sys_clk_c, CLR => sys_rest_c, Q => 
        \signal_send_0/cnt_end[0]_net_1\);
    
    \cnt_send_RNIS5BG6[21]\ : NOR3C
      port map(A => \cnt_send[20]_net_1\, B => cnt_send_c19, C
         => \cnt_send[21]_net_1\, Y => cnt_send_c21);
    
    \signal_send_0/cnt_RNIHUVP_1[7]\ : NOR2
      port map(A => \signal_send_0/cnt[7]_net_1\, B => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/tx_uart32_5\);
    
    \cnt_send_RNI712J4[2]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_5, B => 
        cnt_send_c11_m6_0_a2_6, C => cnt_send_c2, Y => 
        cnt_send_c11);
    
    \cnt_recive_RNI0L5Q[19]\ : NOR2
      port map(A => \cnt_recive[19]_net_1\, B => 
        \cnt_recive[20]_net_1\, Y => un5_idle_recive_6);
    
    \single_recive_0/data_recive_RNIV4D9[4]\ : NOR2A
      port map(A => \data_recive_buffer[4]\, B => N_398, Y => 
        N_1845);
    
    \data_all_RNO_0[108]\ : NOR3A
      port map(A => \data_all[108]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_111_N_5_mux, Y => N_1742);
    
    \data_send_buffer_RNO_28[7]\ : NOR3C
      port map(A => N_1840, B => 
        data_send_buffer_4_1_a2_23_0_a4_s_out, C => 
        \data_all[23]_net_1\, Y => data_send_buffer_4_1_a2_10_out);
    
    \cnt_recive[15]\ : DFN1E0C0
      port map(D => cnt_recive_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[15]_net_1\);
    
    \cnt_recive_RNI8V859[20]\ : NOR3C
      port map(A => cnt_recive_c2, B => cnt_recive_c19_m6_0_a2_0, 
        C => \cnt_recive[20]_net_1\, Y => cnt_recive_c20);
    
    \data_all_RNO_0[55]\ : NOR2A
      port map(A => \data_all[55]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[55]\);
    
    \data_all[153]\ : DFN1E0C0
      port map(D => N_47, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[153]_net_1\);
    
    \data_all_RNO_0[133]\ : OA1A
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \cnt_recive_0[1]_net_1\, C => data_all_4_i_i_a4_133_m2_0, 
        Y => N_1759);
    
    \data_all[57]\ : DFN1E0C0
      port map(D => N_237, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[57]_net_1\);
    
    \single_recive_0/data_recive_RNI7KJGC[0]\ : NOR2
      port map(A => N_1618, B => \data_recive_buffer[0]\, Y => 
        \single_recive_0/N_765\);
    
    \signal_send_0/cnt_end_RNO[1]\ : XOR2
      port map(A => \signal_send_0/cnt_end[1]_net_1\, B => 
        \signal_send_0/cnt_end[0]_net_1\, Y => 
        \signal_send_0/cnt_end_n1\);
    
    \data_send_buffer_RNO_19[4]\ : NOR2B
      port map(A => \data_all[92]_net_1\, B => 
        data_send_buffer_4_1_a2_37_0_a4_out, Y => 
        \data_send_buffer_4_1_13_a0_0[4]\);
    
    \data_all_RNO_0[84]\ : NOR2A
      port map(A => \data_all[84]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[84]\);
    
    \data_all_RNO[139]\ : OA1C
      port map(A => N_449_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[3]\, C => \data_all_4_i_0[139]\, Y
         => N_75);
    
    \data_all_RNO[33]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1633, C => 
        \data_all_4_i_0[33]\, Y => N_285);
    
    \data_all[115]\ : DFN1E0C0
      port map(D => N_1603, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[115]_net_1\);
    
    \cnt_send_RNIBA425[4]\ : NOR3C
      port map(A => \cnt_send[4]_net_1\, B => 
        cnt_send_c13_m6_0_a2_4, C => cnt_send_c3, Y => 
        cnt_send_c13);
    
    \cnt_recive_0_RNID0RN3[1]\ : NOR2B
      port map(A => cnt_recive_c8_m6_0_a2_6, B => 
        cnt_recive_c8_m6_0_a2_5, Y => cnt_recive_c8);
    
    \cnt_send_RNO[16]\ : XA1B
      port map(A => cnt_send_c15, B => \cnt_send[16]_net_1\, C
         => N_398, Y => cnt_send_n16);
    
    \cnt_recive_RNICR3EC[3]\ : OR2
      port map(A => \data_all_4_i_o2_i_o4_1[95]\, B => N_426, Y
         => N_1618);
    
    \data_all_RNO_0[87]\ : NOR2A
      port map(A => \data_all[87]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[87]\);
    
    \sys_clk_pad/U0/U1\ : CLKIO
      port map(A => \sys_clk_pad/U0/NET1\, Y => sys_clk_c);
    
    \data_all[105]\ : DFN1E0C0
      port map(D => N_143, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[105]_net_1\);
    
    \signal_send_0/cnt_RNIICVJ1[1]\ : NOR3A
      port map(A => \signal_send_0/tx_uart27_4\, B => 
        \signal_send_0/cnt[0]_net_1\, C => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart27_1\);
    
    \cnt_send[27]\ : DFN1E1C0
      port map(D => cnt_send_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[27]_net_1\);
    
    \data_send_buffer_RNO_24[0]\ : NOR2B
      port map(A => \data_all[48]_net_1\, B => N_1574, Y => N_604);
    
    \data_all_RNO_3[140]\ : OA1B
      port map(A => \cnt_recive[0]_net_1\, B => 
        \data_all[140]_net_1\, C => N_398, Y => 
        \data_all_4_i_i_0_0[140]\);
    
    \signal_send_0/cnt_end_RNO[4]\ : AX1C
      port map(A => \signal_send_0/cnt_end[3]_net_1\, B => 
        \signal_send_0/cnt_end_c2\, C => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/cnt_end_n4\);
    
    \signal_send_0/tx_uart_RNO_8\ : NOR2B
      port map(A => \signal_send_0/tx_uart36\, B => 
        \signal_send_0/parity_check_net_1\, Y => 
        \signal_send_0/parity_check_m\);
    
    \single_recive_0/cnt_RNIR8241[4]\ : NOR2B
      port map(A => \single_recive_0/N_65_3\, B => 
        \single_recive_0/N_47_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_1_2\);
    
    \signal_send_0/cnt_RNIP9MJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart33_2\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart33_4\);
    
    \data_send_buffer_RNO_4[0]\ : OR3
      port map(A => N_605, B => \data_send_buffer_4_1_0[0]\, C
         => \data_send_buffer_4_1_5[0]\, Y => 
        \data_send_buffer_4_1_8[0]\);
    
    \cnt_recive[26]\ : DFN1E0C0
      port map(D => cnt_recive_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[26]_net_1\);
    
    \signal_send_0/cnt_RNIICVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_4\, Y => 
        \signal_send_0/tx_uart27_2\);
    
    \data_all_RNO_0[116]\ : NOR2A
      port map(A => \data_all[116]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[116]\);
    
    \single_recive_0/cnt_delay_n1\ : XA1B
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => N_398, Y => cnt_delay_n1);
    
    send_end_RNO_14 : XO1
      port map(A => \cnt_recive_0[1]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => send_end_0_sqmuxa_i_18, Y => 
        send_end_0_sqmuxa_i_24);
    
    \data_all[32]\ : DFN1E0C0
      port map(D => N_287, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[32]_net_1\);
    
    \cnt_recive_RNIU9ND5[0]\ : NOR3
      port map(A => N_433, B => \cnt_recive[0]_net_1\, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_391_i_0_o2_m2_e_1);
    
    \single_recive_0/cnt_RNO[7]\ : XA1
      port map(A => \single_recive_0/N_6\, B => 
        \single_recive_0/cnt[7]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[7]\);
    
    \signal_send_0/cnt_RNIMGVJ1[2]\ : NOR2B
      port map(A => \signal_send_0/tx_uart35_4\, B => 
        \signal_send_0/tx_uart34_4\, Y => 
        \signal_send_0/tx_uart36_6\);
    
    \signal_send_0/cnt_RNI0HMJ1[4]\ : NOR3B
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/tx_uart32_0\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart34_3\);
    
    \data_send_buffer_RNO_12[4]\ : OAI1
      port map(A => \data_send_buffer_RNO_21[4]_net_1\, B => 
        data_send_buffer_4_1_10tt_4_N_3_mux, C => N_1842, Y => 
        data_send_buffer_4_1_10_4_N_6_mux);
    
    \data_all_RNO_0[149]\ : AND3B
      port map(A => N_398, B => \cnt_recive_RNICR3EC_1[1]_net_1\, 
        C => \data_all[149]_net_1\, Y => N_1783);
    
    \cnt_send_RNO_3[28]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_send[15]_net_1\, C => \cnt_send_0[4]_net_1\, Y => 
        cnt_send_95_4);
    
    \cnt_recive_RNO[3]\ : XA1B
      port map(A => cnt_recive_c2, B => \cnt_recive[3]_net_1\, C
         => N_398, Y => cnt_recive_n3);
    
    \cnt_delay[8]\ : DFN1E1C0
      port map(D => cnt_delay_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[8]_net_1\);
    
    \data_all_RNO_2[144]\ : NOR3B
      port map(A => \data_all_RNO_3[144]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => N_398, Y => 
        data_all_4_i_i_144_N_7_mux);
    
    \cnt_recive_RNO[12]\ : XA1B
      port map(A => cnt_recive_c11, B => \cnt_recive[12]_net_1\, 
        C => N_398, Y => cnt_recive_n12);
    
    \cnt_send[0]\ : DFN1E1C0
      port map(D => N_1466, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[0]_net_1\);
    
    \cnt_recive_0_RNIA8GJ6[1]\ : NOR3C
      port map(A => cnt_recive_c24_m6_0_a2_5, B => 
        cnt_recive_c24_m6_0_a2_4, C => cnt_recive_c19_m6_0_a2_3, 
        Y => cnt_recive_c24_m6_0_a2_7);
    
    \cnt_delay[5]\ : DFN1E1C0
      port map(D => cnt_delay_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[5]_net_1\);
    
    \cnt_send_RNIJGTG8[28]\ : OA1B
      port map(A => \cnt_send[28]_net_1\, B => N_1855, C => 
        N_1646, Y => N_1668_2);
    
    \data_all_RNO_0[73]\ : NOR2
      port map(A => \data_all[73]_net_1\, B => 
        \un46_data_all[80]\, Y => N_792);
    
    \data_all_RNO_0[158]\ : AO1D
      port map(A => \data_all[158]_net_1\, B => 
        data_all_4_i_o2_i_o4_159_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[158]\);
    
    \data_all_RNO[111]\ : AO1
      port map(A => N_1844, B => data_all_4_i_o2_i_o4_111_N_5_mux, 
        C => N_1746, Y => N_1602);
    
    \signal_send_0/cnt_end_RNIN7MJ[2]\ : NOR2A
      port map(A => \signal_send_0/cnt_end[7]_net_1\, B => 
        \signal_send_0/cnt_end[2]_net_1\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_1\);
    
    \cnt_send[2]\ : DFN1E1C0
      port map(D => cnt_send_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[2]_net_1\);
    
    \single_recive_0/cnt_RNO[3]\ : XA1
      port map(A => \single_recive_0/N_10\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[3]\);
    
    \signal_send_0/cnt_RNIERVP[7]\ : NOR2A
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, Y => 
        \signal_send_0/tx_uart31_1\);
    
    \data_all_RNO_0[34]\ : NOR3A
      port map(A => \data_all[34]_net_1\, B => 
        data_all_4_i_i_a2tt_34_N_7_mux, C => N_398, Y => N_1692);
    
    \cnt_send_RNO_0[25]\ : AX1C
      port map(A => cnt_send_c13, B => cnt_send_c24_m6_0_a2_out, 
        C => \cnt_send[25]_net_1\, Y => cnt_send_n25_tz);
    
    \data_all_RNO[37]\ : OA1C
      port map(A => N_1633, B => \data_all[37]_net_1\, C => 
        \data_all_4_i_0[37]\, Y => N_277);
    
    \data_all[9]\ : DFN1E0C0
      port map(D => N_331, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[9]_net_1\);
    
    receive_end_RNO_1 : AO1
      port map(A => receive_end2lt7, B => receive_end2lto7, C => 
        receive_end2lto8, Y => receive_end2lt9);
    
    \data_all_RNO_2[148]\ : NOR3B
      port map(A => \cnt_recive_0[1]_net_1\, B => 
        \data_all_RNO_3[148]_net_1\, C => N_398, Y => 
        data_all_4_i_i_148_N_7_mux);
    
    \data_all_RNO_0[91]\ : MX2
      port map(A => \data_recive_buffer[3]\, B => 
        \data_all[91]_net_1\, S => N_1618, Y => N_1661);
    
    \signal_send_0/un7_cnt_1_I_29\ : AND3
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[7]_net_1\, C => 
        \signal_send_0/cnt[8]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[5]\);
    
    \single_recive_0/data_recive[4]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[4]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[4]\);
    
    \data_send_buffer_RNO_13[6]\ : MX2
      port map(A => N_1649, B => N_1648, S => 
        \cnt_send_0[1]_net_1\, Y => N_743_3);
    
    \data_send_buffer_RNO_25[2]\ : NOR2B
      port map(A => \data_all[154]_net_1\, B => 
        \cnt_send[0]_net_1\, Y => \data_send_buffer_4_1_a2_0[2]\);
    
    \data_all_RNO_0[37]\ : AO1A
      port map(A => \data_all_4_i_o2_0_i_o2_0_0_0[111]\, B => 
        data_all_4_i_a2_0_37_m2_e_2, C => N_398, Y => 
        \data_all_4_i_0[37]\);
    
    \cnt_send_RNIDLTJ[9]\ : NOR2
      port map(A => \cnt_send[9]_net_1\, B => 
        \cnt_send[26]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_19_1);
    
    send_end_RNO_23 : XOR2
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_send[0]_net_1\, Y => N_587_i);
    
    \data_all_RNO_1[41]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_47_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_870);
    
    \data_all[140]\ : DFN1E0C0
      port map(D => N_302, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[140]_net_1\);
    
    \cnt_send[1]\ : DFN1E1C0
      port map(D => cnt_send_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[1]_net_1\);
    
    \signal_send_0/cnt_RNIE8VJ1_1[1]\ : NOR2B
      port map(A => \signal_send_0/tx_uart27_3\, B => 
        \signal_send_0/un1_cnt_1\, Y => 
        \signal_send_0/tx_uart30_5\);
    
    \data_all[75]\ : DFN1E0C0
      port map(D => N_201, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[75]_net_1\);
    
    \cnt_recive_RNICR3EC_2[1]\ : OR3
      port map(A => data_all_4_i_o2_i_o2_out, B => N_426, C => 
        N_381_i_0_o4_out, Y => N_459);
    
    \data_send_buffer_RNO[2]\ : OR3
      port map(A => \data_send_buffer_4_1_16[2]\, B => 
        \data_send_buffer_4_1_15[2]\, C => 
        \data_send_buffer_4_1_17[2]\, Y => 
        \data_send_buffer_4[2]\);
    
    \single_recive_0/cnt_RNINT0I[0]\ : NOR2A
      port map(A => \single_recive_0/cnt[5]_net_1\, B => 
        \single_recive_0/cnt[0]_net_1\, Y => 
        \single_recive_0/un1_cnt_0_a2_2\);
    
    \cnt_recive_RNI3P6Q[25]\ : NOR2
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_recive[25]_net_1\, Y => un5_idle_recive_2);
    
    \signal_send_0/cnt_RNIUEMJ1[10]\ : NOR3B
      port map(A => \signal_send_0/cnt[10]_net_1\, B => 
        \signal_send_0/tx_uart27_3\, C => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/tx_uart35_5\);
    
    \data_send_buffer_RNO_23[4]\ : NOR3C
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \data_all[156]_net_1\, C => N_1863, Y => N_510);
    
    \data_send_buffer_RNO[6]\ : NOR2A
      port map(A => N_861, B => N_398, Y => 
        \data_send_buffer_4[6]\);
    
    \signal_send_0/cnt_RNISOCR4[4]\ : NOR2B
      port map(A => \signal_send_0/tx_uart29_7\, B => 
        \signal_send_0/tx_uart29_6\, Y => 
        \signal_send_0/tx_uart29\);
    
    \data_send_buffer_RNO_1[7]\ : OR3
      port map(A => \data_send_buffer_4_1_6[7]\, B => 
        \data_send_buffer_4_1_5[7]\, C => 
        \data_send_buffer_4_1_8[7]\, Y => 
        \data_send_buffer_4_1_14[7]\);
    
    \data_all[39]\ : DFN1E0C0
      port map(D => N_273, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[39]_net_1\);
    
    \data_all[158]\ : DFN1E0C0
      port map(D => N_37, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[158]_net_1\);
    
    \single_recive_0/cnt_RNI62E41[3]\ : AO1A
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/cnt[3]_net_1\, C => 
        \single_recive_0/un3_cnt_5\, Y => 
        \single_recive_0/data_recive_11_0_o2_0[7]\);
    
    \cnt_send[5]\ : DFN1E1C0
      port map(D => cnt_send_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[5]_net_1\);
    
    \cnt_recive_RNO[25]\ : XA1B
      port map(A => cnt_recive_c24, B => \cnt_recive[25]_net_1\, 
        C => N_398, Y => cnt_recive_n25);
    
    \single_recive_0/cnt[5]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[5]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[5]_net_1\);
    
    \data_send_buffer_RNO_30[4]\ : AOI1
      port map(A => N_1851, B => \data_all[108]_net_1\, C => 
        data_send_buffer_4_1_7tt_4_N_3_mux, Y => 
        \data_send_buffer_RNO_30[4]_net_1\);
    
    \data_all_RNO[36]\ : AO1A
      port map(A => N_1633, B => N_1845, C => N_1696, Y => N_182);
    
    \cnt_send_RNO[28]\ : AX1
      port map(A => N_398, B => \cnt_send[28]_net_1\, C => N_976, 
        Y => cnt_send_n28);
    
    \data_send_buffer_RNO_10[3]\ : NOR2B
      port map(A => \data_all[107]_net_1\, B => N_1568, Y => 
        N_1808);
    
    \data_all[94]\ : DFN1E0C0
      port map(D => N_165, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[94]_net_1\);
    
    \signal_send_0/parity_check_RNO_0\ : OA1A
      port map(A => \signal_send_0/un1_tx_uart27\, B => 
        \signal_send_0/un1_tx_uart27_1_1\, C => 
        \signal_send_0/send_net_1\, Y => 
        \signal_send_0/parity_check_0_sqmuxa\);
    
    \data_all_RNO[52]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[52]\, B => N_1845, S => 
        N_392_i_0_o4_N_5_mux, Y => N_196);
    
    \signal_send_0/cnt[6]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[6]_net_1\);
    
    \cnt_recive_RNO[28]\ : XA1B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        C => N_398, Y => cnt_recive_n28);
    
    send_end_RNI8T558 : NOR3A
      port map(A => N_1865, B => N_398, C => N_1888, Y => N_1571);
    
    \data_send_buffer_RNO_19[5]\ : NOR2B
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_34_0_a4_out, Y => N_1580);
    
    \data_all_RNO_5[103]\ : NOR2
      port map(A => \data_recive_buffer[7]\, B => 
        data_all_4_i_o2_i_o2_out, Y => \data_all_4_i_i_a0_0[103]\);
    
    \cnt_recive_RNI7MQC1[4]\ : OR3A
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        N_433);
    
    \single_recive_0/cnt_RNITVEM1[1]\ : NOR3C
      port map(A => \single_recive_0/un1_data_recive19_0_a2_1\, B
         => \single_recive_0/un1_data_recive19_0_a2_0\, C => 
        \single_recive_0/N_64_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_3\);
    
    \data_all[98]\ : DFN1E0C0
      port map(D => N_157, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[98]_net_1\);
    
    \single_recive_0/cnt_delay_38\ : NOR2A
      port map(A => \cnt_delay[8]_net_1\, B => N_398, Y => 
        \single_recive_0/N_919\);
    
    \data_send_buffer_RNO_18[0]\ : NOR3C
      port map(A => N_1848, B => \data_all[40]_net_1\, C => 
        N_1858, Y => N_608);
    
    \cnt_recive_RNIMT8K1[11]\ : NOR3A
      port map(A => un5_idle_recive_9, B => 
        \cnt_recive[11]_net_1\, C => \cnt_recive[12]_net_1\, Y
         => un5_idle_recive_10_0);
    
    \cnt_send_RNO_0[8]\ : NOR2B
      port map(A => cnt_send_c6, B => \cnt_send[7]_net_1\, Y => 
        cnt_send_c7);
    
    \cnt_send_RNO[20]\ : XA1B
      port map(A => cnt_send_c19, B => \cnt_send[20]_net_1\, C
         => N_398, Y => cnt_send_n20);
    
    \cnt_recive[24]\ : DFN1E0C0
      port map(D => cnt_recive_n24, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[24]_net_1\);
    
    \data_all[7]\ : DFN1E0C0
      port map(D => N_138, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[7]_net_1\);
    
    \cnt_send_RNIDOGR_1[1]\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => send_end_0_sqmuxa_i_a2_m3_e_1);
    
    \cnt_send[20]\ : DFN1E1C0
      port map(D => cnt_send_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[20]_net_1\);
    
    \data_all_RNO[18]\ : MX2
      port map(A => N_1877, B => \data_all_4_i_i_a4_0[18]\, S => 
        N_443, Y => N_154);
    
    \data_all_RNO_0[23]\ : NOR2A
      port map(A => \data_all[23]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[23]\);
    
    \data_all_RNO_0[45]\ : MX2
      port map(A => \data_all[45]_net_1\, B => 
        \data_recive_buffer[5]\, S => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_1655);
    
    \cnt_recive_RNI1GQC1[0]\ : NOR3C
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        cnt_recive_c2);
    
    \cnt_send_RNIF7B03[6]\ : NOR2B
      port map(A => cnt_send_c5, B => \cnt_send[6]_net_1\, Y => 
        cnt_send_c6);
    
    \data_all_RNO[49]\ : OA1C
      port map(A => N_392_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[49]\, Y => 
        N_253);
    
    \data_all[25]\ : DFN1E0C0
      port map(D => N_299, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[25]_net_1\);
    
    \data_all[126]\ : DFN1E0C0
      port map(D => N_286, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[126]_net_1\);
    
    \cnt_recive_RNIOCST_0[4]\ : OR2
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => data_all_4_i_o2_i_o2_out);
    
    \cnt_recive_RNIG1691[30]\ : NOR3
      port map(A => \cnt_recive[29]_net_1\, B => 
        \cnt_recive[30]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        un5_idle_recive_4_0);
    
    \single_recive_0/data_recive_RNIKCBCO[3]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[3]\, C => 
        \single_recive_0/data_all_4_i_0[123]_net_1\, Y => N_107);
    
    \cnt_send_0_RNI67273[4]\ : NOR2B
      port map(A => cnt_send_c28_m6_0_a2_5, B => 
        cnt_send_c24_m6_0_a2_4, Y => cnt_send_c28_m6_0_a2_6);
    
    \data_all_RNO_2[140]\ : NOR3A
      port map(A => \data_all_4_i_i_a0_1[140]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => 
        \data_all_RNO_2[140]_net_1\);
    
    \single_recive_0/cnt_RNI8TCI[11]\ : NOR2A
      port map(A => \single_recive_0/cnt[11]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, Y => 
        \single_recive_0/un1_cnt_0_a2_0\);
    
    \signal_send_0/cnt_end[6]\ : DFN1E0C0
      port map(D => \signal_send_0/cnt_end_n6\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \signal_send_0/idle_send_net_1\, 
        Q => \signal_send_0/cnt_end[6]_net_1\);
    
    \data_all_RNO_0[109]\ : NOR3A
      port map(A => \data_all[109]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_111_N_5_mux, Y => N_1744);
    
    \data_all[54]\ : DFN1E0C0
      port map(D => N_243, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[54]_net_1\);
    
    \cnt_send_RNILCF22[28]\ : NOR3B
      port map(A => N_1840, B => 
        data_send_buffer_4_1_a2_23_0_a4_s_out, C => 
        \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out);
    
    \data_all[65]\ : DFN1E0C0
      port map(D => N_221, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[65]_net_1\);
    
    \cnt_recive_RNICR3EC_0[2]\ : NOR2A
      port map(A => un46_data_all_0_a2_1_o2_0_80_N_5_mux, B => 
        N_434, Y => \un46_data_all[80]\);
    
    \data_all[154]\ : DFN1E0C0
      port map(D => N_45, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[154]_net_1\);
    
    \signal_send_0/parity_check_RNO_9\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[7]_net_1\, C => 
        \signal_send_0/tx_uart35\, Y => 
        \signal_send_0/parity_check_8_i_m\);
    
    \data_all_RNO[146]\ : MX2
      port map(A => d_N_3_mux_2, B => \data_all_RNO_1[146]_net_1\, 
        S => data_all_4_i_i_146_N_7_mux, Y => N_326);
    
    \data_all_RNO[10]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_1636, C => 
        \data_all_4_i_0[10]\, Y => N_329);
    
    \single_recive_0/cnt_RNIV1FM1[0]\ : NOR3C
      port map(A => \single_recive_0/un1_data_recive19_0_a2_10_1\, 
        B => \single_recive_0/un1_data_recive19_0_a2_10_0\, C => 
        \single_recive_0/un1_cnt_6\, Y => \single_recive_0/N_66\);
    
    \data_all_RNO[125]\ : AO1
      port map(A => N_1846, B => data_all_4_i_o2_i_o4_127_N_5_mux, 
        C => N_856, Y => N_284);
    
    \data_all[16]\ : DFN1E0C0
      port map(D => N_146, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[16]_net_1\);
    
    \data_all[13]\ : DFN1E0C0
      port map(D => N_323, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[13]_net_1\);
    
    \cnt_recive_RNO_0[14]\ : NOR2B
      port map(A => cnt_recive_c12, B => \cnt_recive[13]_net_1\, 
        Y => cnt_recive_c13);
    
    \cnt_recive_RNI1MST[7]\ : NOR2B
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_recive[6]_net_1\, Y => cnt_recive_c8_m6_0_a2_1);
    
    \cnt_recive_RNINKK44[10]\ : NOR3C
      port map(A => cnt_recive_c10_m6_0_a2_4, B => 
        cnt_recive_c8_m6_0_a2_2, C => cnt_recive_c10_m6_0_a2_5, Y
         => cnt_recive_c10_m6_0_a2_7);
    
    \data_all[58]\ : DFN1E0C0
      port map(D => N_235, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[58]_net_1\);
    
    \data_send_buffer_RNO_18[3]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        \data_all[75]_net_1\, Y => 
        data_send_buffer_4_1_0_a4_11_out);
    
    \cnt_recive_RNI5R6Q[27]\ : OR2
      port map(A => \cnt_recive[26]_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_0[111]\);
    
    \single_recive_0/data_recive_RNO[6]\ : AO1
      port map(A => \single_recive_0/N_61\, B => 
        \data_recive_buffer[6]\, C => 
        \single_recive_0/rx_uart_m_5\, Y => 
        \single_recive_0/data_recive_11[6]\);
    
    \single_recive_0/data_recive[1]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[1]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[1]\);
    
    \data_send_buffer_RNO_28[4]\ : NOR2B
      port map(A => \data_all[60]_net_1\, B => N_1570, Y => N_516);
    
    \data_all_RNO[103]\ : NOR3B
      port map(A => \data_all_4_i_i_0_1[103]\, B => 
        \data_all_4_i_i_2[103]\, C => \data_all_RNO_2[103]_net_1\, 
        Y => N_262);
    
    \data_send_buffer_RNO_23[1]\ : OA1
      port map(A => data_send_buffer_4_1_16_stt_1_N_5_mux, B => 
        \data_send_buffer_RNO_29[1]_net_1\, C => N_1842, Y => 
        data_send_buffer_4_1_16_s_1_N_7);
    
    \data_all[147]\ : DFN1E0C0
      port map(D => N_1607, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[147]_net_1\);
    
    vld_send : DFN1E0C0
      port map(D => vld_send_0_sqmuxa, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => vld_send_2_sqmuxa, Q => \vld_send\);
    
    \single_recive_0/cnt_delay_n6\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c5_net_1\, B => 
        \cnt_delay[6]_net_1\, C => N_398, Y => cnt_delay_n6);
    
    \single_recive_0/data_recive_RNIU3D9[3]\ : NOR2A
      port map(A => \data_recive_buffer[3]\, B => N_398, Y => 
        N_1856);
    
    \cnt_send_RNIO4Q42[4]\ : NOR2B
      port map(A => cnt_send_c3, B => \cnt_send[4]_net_1\, Y => 
        cnt_send_c4);
    
    \signal_send_0/parity_check_RNO_11\ : AO1A
      port map(A => \signal_send_0/parity_check_4\, B => 
        \signal_send_0/tx_uart31\, C => 
        \signal_send_0/parity_check_2_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_0\);
    
    \cnt_recive_RNIB9LP2[5]\ : NOR2B
      port map(A => cnt_recive_c4, B => \cnt_recive[5]_net_1\, Y
         => cnt_recive_c5);
    
    \data_all_RNO_0[64]\ : AO1A
      port map(A => \data_all[64]_net_1\, B => N_459, C => N_398, 
        Y => \data_all_4_i_0[64]\);
    
    \data_all_RNO_1[37]\ : NOR2A
      port map(A => data_all_4_i_a2_0_37_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_a2_0_37_m2_e_2);
    
    \cnt_recive_RNO_0[10]\ : NOR2B
      port map(A => cnt_recive_c8, B => \cnt_recive[9]_net_1\, Y
         => cnt_recive_c9);
    
    \single_recive_0/cnt_delay_n5\ : XA1B
      port map(A => \single_recive_0/cnt_delay_c4_net_1\, B => 
        \cnt_delay[5]_net_1\, C => N_398, Y => cnt_delay_n5);
    
    \signal_send_0/cnt_RNINHVJ1[2]\ : NOR3B
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/tx_uart33_1\, C => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart33_3_0\);
    
    \data_all_RNO_0[67]\ : NOR3A
      port map(A => data_all_4_i_a2_0_67_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => N_811);
    
    \data_send_buffer_RNO_27[2]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[18]_net_1\, C => N_398, Y => N_563);
    
    \data_all_RNO_0[124]\ : AO1D
      port map(A => \data_all[124]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[124]\);
    
    \single_recive_0/data_recive_RNIFIQBP[1]\ : NOR3
      port map(A => \single_recive_0/N_762\, B => N_398, C => 
        \single_recive_0/N_763\, Y => N_175);
    
    \data_all_RNO[122]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[122]\, Y
         => N_109);
    
    \cnt_send_RNI6DSJ[11]\ : NOR2B
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[8]_net_1\, Y => cnt_send_c11_m6_0_a2_0);
    
    \cnt_send_RNI8UDI[27]\ : NOR3C
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[27]_net_1\, C => \cnt_send[15]_net_1\, Y => 
        cnt_send_c28_m6_0_a2_2);
    
    \cnt_recive_0_RNIRFEVB_0[1]\ : NOR2A
      port map(A => N_385_i_0_o4_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        N_385_i_0_o4_N_5_mux);
    
    \cnt_recive_RNO[9]\ : XA1B
      port map(A => cnt_recive_c8, B => \cnt_recive[9]_net_1\, C
         => N_398, Y => cnt_recive_n9);
    
    \signal_send_0/cnt_RNIQEDD2[11]\ : NOR3C
      port map(A => \signal_send_0/un1_cnt_0\, B => 
        \signal_send_0/un1_cnt_6\, C => \signal_send_0/un1_cnt_1\, 
        Y => \signal_send_0/un1_cnt_4_0\);
    
    \data_send_buffer_RNO_5[0]\ : OR3
      port map(A => \data_send_buffer_4_1_3[0]\, B => 
        \data_send_buffer_4_1_2[0]\, C => 
        \data_send_buffer_4_1_6[0]\, Y => 
        \data_send_buffer_4_1_10_0[0]\);
    
    \cnt_send_RNIOI3O7[4]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => N_1840, C
         => data_send_buffer_4_1_a2_40_i_o4_0_7_m1_e_1, Y => 
        \cnt_send_RNIOI3O7[4]_net_1\);
    
    \signal_send_0/parity_check_RNO_10\ : XA1A
      port map(A => \signal_send_0/parity_check_net_1\, B => 
        \data_send_buffer[4]_net_1\, C => 
        \signal_send_0/tx_uart32\, Y => 
        \signal_send_0/parity_check_5_i_m\);
    
    \data_all_RNO_0[122]\ : AO1D
      port map(A => \data_all[122]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[122]\);
    
    \data_all_RNO[91]\ : NOR2A
      port map(A => N_1661, B => N_398, Y => N_171);
    
    \cnt_recive_0_RNIJ75U_2[1]\ : NOR3C
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => \cnt_recive_0[1]_net_1\, Y
         => N_387_i_0_o4_m2_e_0);
    
    \signal_send_0/un7_cnt_1_I_10\ : AND3
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[0]\);
    
    \data_all_RNO[15]\ : NOR2
      port map(A => N_1664, B => N_398, Y => N_319);
    
    \cnt_recive_RNI9FLS5[0]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => N_449_i_0_o4_0, C
         => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_449_i_0_o4_m2_e_1);
    
    \cnt_recive_RNI3CEH6_0[11]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_8[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\);
    
    \data_all[149]\ : DFN1E0C0
      port map(D => N_1609, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[149]_net_1\);
    
    \data_all_RNO_0[159]\ : NOR2B
      port map(A => \data_all[159]_net_1\, B => N_1047, Y => 
        N_1795);
    
    \cnt_send_RNI9VDI[26]\ : NOR3C
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_send[26]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        cnt_send_c28_m6_0_a2_3);
    
    \cnt_recive_RNIIROR1[1]\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => N_433, Y => 
        N_449_i_0_o4_0);
    
    \single_recive_0/cnt_RNIV1FM1_0[0]\ : NOR3C
      port map(A => \single_recive_0/un1_cnt_0_a2_2\, B => 
        \single_recive_0/N_47_1\, C => 
        \single_recive_0/un1_cnt_6\, Y => 
        \single_recive_0/un1_cnt_0_a2_6\);
    
    \data_send_buffer_RNO_22[6]\ : MX2
      port map(A => \data_all[102]_net_1\, B => 
        \data_all[110]_net_1\, S => \cnt_send[0]_net_1\, Y => 
        N_1649);
    
    \cnt_send_RNINP7C[11]\ : NOR2
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_send[11]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_1);
    
    \data_send_buffer_RNO_22[0]\ : NOR2B
      port map(A => \data_all[24]_net_1\, B => N_1575, Y => N_601);
    
    \cnt_send_RNI4QUDE[28]\ : OR2
      port map(A => N_1646, B => 
        data_send_buffer_4_1_a2_40_i_o4_0_7_N_4, Y => N_36);
    
    \data_all_RNO_2[103]\ : NOR2A
      port map(A => \data_all_4_i_i_a0_2[103]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        \data_all_RNO_2[103]_net_1\);
    
    \cnt_recive_RNO[27]\ : NOR2A
      port map(A => cnt_recive_n27_tz, B => N_398, Y => 
        cnt_recive_n27);
    
    \data_send_buffer[2]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[2]_net_1\);
    
    \cnt_send_RNI37G32[14]\ : NOR3C
      port map(A => cnt_send_c24_m6_0_a2_4, B => 
        \cnt_send[15]_net_1\, C => \cnt_send[14]_net_1\, Y => 
        cnt_send_c24_m6_0_a2_out);
    
    \single_recive_0/recive_RNO\ : AO1C
      port map(A => \single_recive_0/idle_recive_net_1\, B => 
        \single_recive_0/rx_down_net_1\, C => 
        \single_recive_0/un1_cnt\, Y => \single_recive_0/un2_cnt\);
    
    \signal_send_0/cnt_RNIGTVP[5]\ : NOR2B
      port map(A => \signal_send_0/cnt[9]_net_1\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => 
        \signal_send_0/tx_uart36_1\);
    
    \signal_send_0/cnt_RNI8LVP[5]\ : NOR2
      port map(A => \signal_send_0/cnt[5]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => 
        \signal_send_0/tx_uart28_1\);
    
    \cnt_send_0_RNINLE61[1]\ : NOR3B
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        C => \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_20_0_a4_out);
    
    \data_send_buffer_RNO_6[2]\ : NOR2B
      port map(A => \data_all[146]_net_1\, B => N_984, Y => N_553);
    
    \cnt_send_RNO[21]\ : NOR2A
      port map(A => cnt_send_n21_tz, B => N_398, Y => 
        cnt_send_n21);
    
    \cnt_send_0_RNINR1F2[4]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_35_0_a4_out, B => 
        N_1838, Y => N_1581);
    
    \single_recive_0/cnt_RNIT31I[3]\ : NOR2A
      port map(A => \single_recive_0/cnt[8]_net_1\, B => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/N_64_1\);
    
    \signal_send_0/cnt[5]\ : DFN1C0
      port map(D => \signal_send_0/I_14_0\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \signal_send_0/cnt[5]_net_1\);
    
    \cnt_send_RNISAL33[21]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_0_20_10, B => 
        send_end_0_sqmuxa_i_a2_0_20_9, C => 
        send_end_0_sqmuxa_i_a2_0_20_11, Y => 
        send_end_0_sqmuxa_i_a2_0_20);
    
    \data_send_buffer_RNO_24[7]\ : NOR2B
      port map(A => \data_all[151]_net_1\, B => N_984, Y => N_463);
    
    \cnt_recive_0_RNI0GD91[1]\ : NOR3C
      port map(A => \cnt_recive[2]_net_1\, B => 
        cnt_recive_c24_m6_0_a2_1, C => \cnt_recive_0[1]_net_1\, Y
         => cnt_recive_c24_m6_0_a2_5);
    
    \data_all_RNO[62]\ : AO1A
      port map(A => N_456, B => N_1711_1, C => N_1710, Y => N_206);
    
    \cnt_recive_RNIQEST[4]\ : NOR2B
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => cnt_recive_c8_m6_0_a2_2);
    
    \data_all_RNO_0[16]\ : NOR2A
      port map(A => \data_all[16]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[16]\);
    
    \cnt_recive_RNICR3EC[1]\ : OR2B
      port map(A => N_391_i_0_o2_N_5_mux, B => 
        \cnt_recive[1]_net_1\, Y => N_441);
    
    \data_send_buffer_RNO_34[2]\ : NOR2A
      port map(A => \data_all[66]_net_1\, B => 
        \cnt_send[1]_net_1\, Y => 
        \data_send_buffer_4_1_a2_16_0[2]\);
    
    \single_recive_0/cnt_RNI8TCI[5]\ : NOR2A
      port map(A => \single_recive_0/cnt[5]_net_1\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/un3_cnt_3\);
    
    send_end_RNO_34 : XOR2
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_recive[19]_net_1\, Y => un12_cnt_send_19);
    
    \data_send_buffer_RNO_10[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        N_1841, C => \data_all[122]_net_1\, Y => N_556);
    
    \data_all_RNO[153]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[153]\, Y
         => N_47);
    
    \single_recive_0/data_recive_RNO_0[1]\ : NOR3B
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        rx_uart_c, C => \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/rx_uart_m_0\);
    
    \data_all[143]\ : DFN1E0C0
      port map(D => N_314, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[143]_net_1\);
    
    \cnt_send_RNO[9]\ : XA1B
      port map(A => cnt_send_c8, B => \cnt_send[9]_net_1\, C => 
        N_398, Y => cnt_send_n9);
    
    \cnt_recive_end_RNO[9]\ : XA1
      port map(A => cnt_recive_end_19_0, B => receive_end2lto9, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n9);
    
    \data_send_buffer_RNO_23[7]\ : AO1
      port map(A => \data_all[55]_net_1\, B => N_1574, C => N_464, 
        Y => \data_send_buffer_4_1_0[7]\);
    
    \cnt_send[16]\ : DFN1E1C0
      port map(D => cnt_send_n16, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[16]_net_1\);
    
    \single_recive_0/data_recive_RNO[4]\ : AO1
      port map(A => \single_recive_0/un3_cnt_5\, B => rx_uart_c, 
        C => \single_recive_0/data_recive_m[4]\, Y => 
        \single_recive_0/data_recive_11[4]\);
    
    \cnt_recive_RNO[11]\ : XA1B
      port map(A => cnt_recive_c10, B => \cnt_recive[11]_net_1\, 
        C => N_398, Y => cnt_recive_n11);
    
    \data_all_RNO[149]\ : AO1A
      port map(A => N_441, B => N_1846, C => N_1783, Y => N_1609);
    
    \cnt_recive_0_RNIO30E5[1]\ : NOR3A
      port map(A => data_all_4_i_i_o2_80_m2_e_0, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        data_all_4_i_i_o2_80_m2_e_2);
    
    \cnt_recive_RNO[7]\ : XA1B
      port map(A => cnt_recive_c6, B => \cnt_recive[7]_net_1\, C
         => N_398, Y => cnt_recive_n7);
    
    \single_recive_0/cnt_RNI4BPR[11]\ : NOR3A
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[11]_net_1\, C => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_1_1\);
    
    \cnt_recive_RNICUG25[0]\ : NOR2B
      port map(A => cnt_recive_c10_m6_0_a2_7, B => cnt_recive_c1, 
        Y => cnt_recive_c10);
    
    \single_recive_0/cnt_RNI4E1R[1]\ : NOR3B
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, C => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_7_2\);
    
    \single_recive_0/un7_cnt_1_I_28\ : XOR2
      port map(A => \single_recive_0/N_3\, B => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/I_28\);
    
    idle_recive_down : DFN1P0
      port map(D => idle_recive_down_3, CLK => sys_clk_c, PRE => 
        sys_rest_c, Q => idle_recive_down_i_0);
    
    \data_all_RNO[108]\ : AO1
      port map(A => N_1845, B => data_all_4_i_o2_i_o4_111_N_5_mux, 
        C => N_1742, Y => N_1600);
    
    AFLSDF_INV_0 : INV
      port map(A => N_398, Y => \AFLSDF_INV_0\);
    
    \data_all_RNO_2[145]\ : NOR3B
      port map(A => \data_all_RNO_3[145]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => N_398, Y => 
        data_all_4_i_i_145_N_7_mux);
    
    \data_send_buffer_RNO_32[5]\ : NOR3A
      port map(A => \data_all[149]_net_1\, B => 
        \cnt_send[28]_net_1\, C => N_398, Y => 
        data_send_buffer_4_1_0_a4_8_5_m1_e_1);
    
    \data_all_RNO_1[103]\ : AO1D
      port map(A => \data_all_4_i_o2_0_i_o2_0_0_1[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, C => 
        \data_all[103]_net_1\, Y => \data_all_4_i_i_2[103]\);
    
    \cnt_send_RNIM6885[14]\ : NOR2B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, Y
         => cnt_send_c14);
    
    \single_recive_0/data_recive_RNO[2]\ : AO1
      port map(A => \single_recive_0/un3_cnt_3\, B => rx_uart_c, 
        C => \single_recive_0/data_recive_m[2]\, Y => 
        \single_recive_0/data_recive_11[2]\);
    
    \data_all_RNO_0[144]\ : NOR2A
      port map(A => \data_all[144]_net_1\, B => N_398, Y => 
        d_N_3_mux_3);
    
    \single_recive_0/un7_cnt_1_I_18\ : AND3
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[4]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[2]\);
    
    \signal_send_0/cnt_end_RNO[7]\ : XOR2
      port map(A => \signal_send_0/cnt_end_c6\, B => 
        \signal_send_0/cnt_end[7]_net_1\, Y => 
        \signal_send_0/cnt_end_n7\);
    
    \data_send_buffer_RNO_34[3]\ : NOR3C
      port map(A => \data_send_buffer_4_1_0_2_s_a1_0[3]\, B => 
        \cnt_send_0[4]_net_1\, C => send_end_0_sqmuxa_i_a2_m3_e_1, 
        Y => \data_send_buffer_4_1_0_2_s_a1_2[3]\);
    
    \cnt_recive_RNI2CPR1[5]\ : OR3A
      port map(A => un5_idle_recive_12, B => 
        \cnt_recive[5]_net_1\, C => \cnt_recive[6]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_11_1[111]\);
    
    \cnt_delay[7]\ : DFN1E1C0
      port map(D => cnt_delay_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[7]_net_1\);
    
    \signal_send_0/cnt_RNISOCR4[10]\ : NOR3C
      port map(A => \signal_send_0/tx_uart33_4\, B => 
        \signal_send_0/tx_uart33_3_0\, C => 
        \signal_send_0/tx_uart33_5\, Y => 
        \signal_send_0/tx_uart33\);
    
    \data_all_RNO[120]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[120]\, Y
         => N_113);
    
    \data_send_buffer_RNO[7]\ : OR3
      port map(A => \data_send_buffer_4_1_15[7]\, B => 
        \data_send_buffer_4_1_14[7]\, C => 
        \data_send_buffer_4_1_16[7]\, Y => 
        \data_send_buffer_4[7]\);
    
    \data_all_RNO_0[142]\ : NOR3A
      port map(A => \data_all[142]_net_1\, B => N_398, C => 
        N_449_i_0_o4_N_5_mux, Y => N_1769);
    
    \cnt_recive_RNI5KQC1_0[4]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        data_all_2_i_o2_i_o4_28_m2_e_0);
    
    \cnt_recive_RNIGRC3A[5]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => N_426);
    
    \data_all_RNO_0[2]\ : NOR2
      port map(A => \data_all[2]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1535);
    
    \single_recive_0/data_recive_RNIS1D9[1]\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => N_398, Y => 
        N_1052);
    
    \cnt_recive_0_RNI3FIR3[1]\ : NOR3C
      port map(A => un5_idle_recive_8_0, B => un5_idle_recive_7_0, 
        C => un5_idle_recive_15, Y => un5_idle_recive_18);
    
    \data_all_RNO[134]\ : AO1A
      port map(A => N_1620, B => N_1859, C => N_1761, Y => N_298);
    
    \cnt_recive_0_RNIO30E5_3[1]\ : NOR3A
      port map(A => N_387_i_0_o4_m2_e_0, B => 
        data_all_4_i_o2_i_o2_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        N_387_i_0_o4_m2_e_2);
    
    \data_send_buffer_RNO[1]\ : OR3
      port map(A => \data_send_buffer_4_1_14[1]\, B => 
        \data_send_buffer_4_1_13[1]\, C => 
        \data_send_buffer_4_1_15[1]\, Y => 
        \data_send_buffer_4[1]\);
    
    \data_all[96]\ : DFN1E0C0
      port map(D => N_161, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[96]_net_1\);
    
    \data_all[93]\ : DFN1E0C0
      port map(D => N_167, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[93]_net_1\);
    
    \data_send_buffer_RNO[4]\ : OR3
      port map(A => \data_send_buffer_4_1_15[4]\, B => 
        \data_send_buffer_4_1_12[4]\, C => 
        data_send_buffer_4_1_16_out, Y => \data_send_buffer_4[4]\);
    
    \data_all_RNO[38]\ : NOR3
      port map(A => N_1476, B => N_398, C => N_875, Y => N_275);
    
    \cnt_delay[6]\ : DFN1E1C0
      port map(D => cnt_delay_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[6]_net_1\);
    
    un20_data_send_buffer_1_I_12 : XOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => I_12_1);
    
    \single_recive_0/data_recive_RNIO4FTC[4]\ : NOR2
      port map(A => \single_recive_0/N_645\, B => N_398, Y => 
        N_325);
    
    \data_all_RNO_0[115]\ : NOR2A
      port map(A => \data_all[115]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[115]\);
    
    \data_all_RNO_3[135]\ : XOR2
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[135]_net_1\, Y => \data_all_RNO_3[135]_net_1\);
    
    \data_all[125]\ : DFN1E0C0
      port map(D => N_284, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[125]_net_1\);
    
    \single_recive_0/cnt_RNIQR4Q2[2]\ : AO1
      port map(A => \single_recive_0/un1_data_recive19_0_a2_5_1\, 
        B => \single_recive_0/N_69\, C => \single_recive_0/N_54\, 
        Y => \single_recive_0/N_27\);
    
    \data_all_RNO_0[54]\ : AO1D
      port map(A => \data_all[54]_net_1\, B => 
        N_392_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[54]\);
    
    \data_send_buffer_RNO_26[3]\ : NOR2B
      port map(A => \data_all[43]_net_1\, B => N_1848, Y => 
        \data_send_buffer_4_1_0_a4_12_0[3]\);
    
    \data_send_buffer_RNO_18[5]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[21]_net_1\, C => N_398, Y => N_1827);
    
    \data_all_RNO_0[18]\ : NOR2A
      port map(A => \data_all[18]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[18]\);
    
    \cnt_recive_RNI9FLS5[4]\ : NOR3A
      port map(A => data_all_2_i_o2_i_o4_28_m2_e_0, B => N_362, C
         => \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        data_all_2_i_o2_i_o4_28_m2_e_2);
    
    \signal_send_0/vld_send_fall_RNO\ : INV
      port map(A => \vld_send\, Y => \signal_send_0/vld_send_i\);
    
    \data_all[81]\ : DFN1E0C0
      port map(D => N_224, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[81]_net_1\);
    
    \cnt_recive_RNIEI0S[10]\ : NOR2
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[9]_net_1\, Y => un5_idle_recive_11);
    
    \data_all_RNO_1[4]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[4]\, Y => N_1532);
    
    \cnt_send_RNIHSGR_1[3]\ : NOR2
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => N_1840);
    
    \single_recive_0/cnt[0]\ : DFN1C0
      port map(D => \single_recive_0/cnt_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \single_recive_0/cnt[0]_net_1\);
    
    \data_send_buffer_RNO_29[3]\ : NOR3B
      port map(A => \data_send_buffer_4_1_0_2_s_a1_2[3]\, B => 
        N_1840, C => N_398, Y => 
        \data_send_buffer_RNO_29[3]_net_1\);
    
    \cnt_recive_RNIHQOR1[0]\ : NOR3C
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => cnt_recive_c8_m6_0_a2_2, Y
         => cnt_recive_c8_m6_0_a2_5);
    
    \data_all_RNO[94]\ : NOR3
      port map(A => N_752, B => N_398, C => N_753, Y => N_165);
    
    \data_all[80]\ : DFN1E0C0
      port map(D => N_222, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[80]_net_1\);
    
    \data_send_buffer_RNO_30[1]\ : MX2
      port map(A => \data_all[73]_net_1\, B => 
        \data_all[89]_net_1\, S => \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_4_1_14_s_0_tz_tz_tz[1]\);
    
    \cnt_send_RNIGBRU[4]\ : NOR3B
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_a2_24_0_a2_1[7]\);
    
    \cnt_send_RNI89991_0[1]\ : NOR3B
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[1]_net_1\, 
        C => \cnt_send[2]_net_1\, Y => 
        data_send_buffer_4_1_a2_37_0_a4_out);
    
    \data_all[77]\ : DFN1E0C0
      port map(D => N_197, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[77]_net_1\);
    
    \single_recive_0/cnt_RNI181I[7]\ : NOR2B
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/un3_cnt_4_0_a2_0\);
    
    \cnt_send_RNO_0[21]\ : AX1C
      port map(A => \cnt_send[20]_net_1\, B => cnt_send_c19, C
         => \cnt_send[21]_net_1\, Y => cnt_send_n21_tz);
    
    \data_all_RNO[30]\ : NOR2A
      port map(A => N_1654, B => N_398, Y => N_291);
    
    \cnt_recive_RNICR3EC_1[1]\ : NOR2B
      port map(A => \cnt_recive[1]_net_1\, B => 
        N_391_i_0_o2_N_5_mux, Y => 
        \cnt_recive_RNICR3EC_1[1]_net_1\);
    
    \signal_send_0/parity_check_RNO_1\ : AO1A
      port map(A => \signal_send_0/parity_check_1\, B => 
        \signal_send_0/tx_uart28\, C => 
        \signal_send_0/parity_check_3_i_m\, Y => 
        \signal_send_0/parity_check_10_iv_3\);
    
    \cnt_recive[2]\ : DFN1E0C0
      port map(D => cnt_recive_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[2]_net_1\);
    
    \single_recive_0/data_recive[3]\ : DFN1E1C0
      port map(D => \single_recive_0/data_recive_11[3]\, CLK => 
        sys_clk_c, CLR => sys_rest_c, E => 
        \single_recive_0/un1_data_recive19\, Q => 
        \data_recive_buffer[3]\);
    
    \data_all[148]\ : DFN1E0C0
      port map(D => N_1608, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[148]_net_1\);
    
    \data_send_buffer_RNO_11[3]\ : AO1
      port map(A => \data_send_buffer_4_1_0_a4_12_0[3]\, B => 
        N_1858, C => N_1798, Y => \data_send_buffer_4_1_0_14[3]\);
    
    \cnt_send_RNO[12]\ : XA1B
      port map(A => cnt_send_c11, B => \cnt_send[12]_net_1\, C
         => N_398, Y => cnt_send_n12);
    
    \single_recive_0/cnt_RNI84E41[6]\ : NOR3B
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/N_65_3\, C => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_9_2\);
    
    \data_all_RNO[158]\ : AOI1
      port map(A => N_1635, B => data_all_4_i_o2_i_o4_159_N_5_mux, 
        C => \data_all_4_i_0[158]\, Y => N_37);
    
    \data_all[56]\ : DFN1E0C0
      port map(D => N_239, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[56]_net_1\);
    
    \data_all[53]\ : DFN1E0C0
      port map(D => N_198, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[53]_net_1\);
    
    \cnt_send_RNI1G912[4]\ : NOR3B
      port map(A => N_1840, B => 
        \data_send_buffer_4_1_a2_24_0_a2_1[7]\, C => N_398, Y => 
        N_1863);
    
    \data_send_buffer_RNO_10[4]\ : NOR3B
      port map(A => data_send_buffer_4_1_3tt_4_m3_0_a2_0, B => 
        N_1843, C => N_398, Y => 
        data_send_buffer_4_1_3tt_4_N_7_mux);
    
    \cnt_send_RNIKC0Q[18]\ : NOR3C
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[18]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        cnt_send_c18_m6_0_a2_3);
    
    send_end_RNO_13 : OR3
      port map(A => un12_cnt_send_16, B => un12_cnt_send_17, C
         => send_end_0_sqmuxa_i_8, Y => send_end_0_sqmuxa_i_16);
    
    \data_send_buffer_RNO_15[4]\ : OR3
      port map(A => N_510, B => N_511, C => N_521, Y => 
        \data_send_buffer_4_1_7_0[4]\);
    
    \cnt_send[19]\ : DFN1E1C0
      port map(D => cnt_send_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[19]_net_1\);
    
    \data_send_buffer_RNO_25[3]\ : NOR3C
      port map(A => N_1841, B => N_1843, C => 
        \data_all[11]_net_1\, Y => N_1812);
    
    \data_all[41]\ : DFN1E0C0
      port map(D => N_269, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[41]_net_1\);
    
    \signal_send_0/cnt[8]\ : DFN1C0
      port map(D => \signal_send_0/cnt_4[8]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, Q => \signal_send_0/cnt[8]_net_1\);
    
    \data_send_buffer_RNO_21[2]\ : NOR2B
      port map(A => \data_all[82]_net_1\, B => N_1579, Y => N_561);
    
    \data_all[40]\ : DFN1E0C0
      port map(D => N_271, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[40]_net_1\);
    
    \data_send_buffer[7]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[7]_net_1\);
    
    \single_recive_0/cnt[2]\ : DFN1C0
      port map(D => \single_recive_0/I_7\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \single_recive_0/cnt[2]_net_1\);
    
    \data_send_buffer_RNO_16[2]\ : NOR3C
      port map(A => \data_all[10]_net_1\, B => N_1843, C => 
        N_1841, Y => N_567);
    
    \cnt_recive_RNIEHV62[6]\ : NOR3C
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[9]_net_1\, C => cnt_recive_c14_m6_0_a2_4, Y
         => cnt_recive_c14_m6_0_a2_6);
    
    \signal_send_0/cnt_RNIIPDJ1[11]\ : NOR3B
      port map(A => \signal_send_0/cnt[11]_net_1\, B => 
        \signal_send_0/un1_cnt_6\, C => 
        \signal_send_0/cnt[2]_net_1\, Y => 
        \signal_send_0/tx_uart37_4\);
    
    \cnt_send_RNII1Q71[10]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_19_1, B => 
        \cnt_send[8]_net_1\, C => \cnt_send[10]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_19_4);
    
    \cnt_recive_RNIVK6Q[24]\ : NOR2B
      port map(A => \cnt_recive[24]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => cnt_recive_c24_m6_0_a2_0);
    
    \cnt_recive_0_RNIH3L01[1]\ : OR3A
      port map(A => \cnt_recive_0[1]_net_1\, B => N_1615, C => 
        \cnt_recive[2]_net_1\, Y => N_1635);
    
    \data_send_buffer_RNO_30[7]\ : NOR3C
      port map(A => \cnt_send_0[4]_net_1\, B => 
        \data_all[143]_net_1\, C => \cnt_send[0]_net_1\, Y => 
        \data_send_buffer_4_1_a2_1_1[7]\);
    
    \data_all_RNO[115]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[115]\, B => N_1856, S
         => N_387_i_0_o4_N_5_mux, Y => N_1603);
    
    \data_all_RNO_0[104]\ : AO1D
      port map(A => \data_all[104]_net_1\, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[104]\);
    
    \signal_send_0/tx_uart_RNO_6\ : AO1
      port map(A => \data_send_buffer[3]_net_1\, B => 
        \signal_send_0/tx_uart31\, C => 
        \signal_send_0/data_send_m[1]\, Y => 
        \signal_send_0/tx_uart_11_iv_0\);
    
    \data_send_buffer_RNO_7[3]\ : NOR2B
      port map(A => \data_all[147]_net_1\, B => N_984, Y => 
        N_1806);
    
    \cnt_send_0_RNISSO86[0]\ : OR3
      port map(A => I_20_1, B => I_17_1, C => 
        \data_send_buffer_4_1_a2_40_i_o4_1[7]\, Y => N_1646);
    
    \signal_send_0/cnt_RNIBOVP[6]\ : NOR2A
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[6]_net_1\, Y => 
        \signal_send_0/tx_uart30_2\);
    
    \data_send_buffer_RNO_8[3]\ : NOR2B
      port map(A => \data_all[91]_net_1\, B => N_1583, Y => 
        N_1799);
    
    \data_send_buffer_RNO_2[7]\ : OR3
      port map(A => N_476, B => N_475, C => 
        \data_send_buffer_4_1_13[7]\, Y => 
        \data_send_buffer_4_1_16[7]\);
    
    \cnt_send_RNIJN9C[23]\ : NOR2B
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[20]_net_1\, Y => cnt_send_c24_m6_0_a2_4_2);
    
    \cnt_send_RNI62GM6[22]\ : NOR2B
      port map(A => cnt_send_c21, B => \cnt_send[22]_net_1\, Y
         => cnt_send_c22);
    
    \signal_send_0/cnt_RNIHBVJ1[4]\ : NOR3B
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/tx_uart36_3\, C => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart36_5\);
    
    \data_all[27]\ : DFN1E0C0
      port map(D => N_295, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[27]_net_1\);
    
    \signal_send_0/cnt_RNI0HMJ1[10]\ : NOR2B
      port map(A => \signal_send_0/tx_uart32_0\, B => 
        \signal_send_0/tx_uart32_1\, Y => 
        \signal_send_0/tx_uart32_4\);
    
    \data_all_RNO_0[93]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[93]_net_1\, S => N_1618, Y => N_641);
    
    \cnt_recive_RNIJD7GB[0]\ : NOR2A
      port map(A => un46_data_all_0_a2_1_o2_0_80_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        un46_data_all_0_a2_1_o2_0_80_N_5_mux);
    
    \single_recive_0/cnt_RNITVEM1[2]\ : NOR3C
      port map(A => \single_recive_0/un1_cnt_0_a2_1\, B => 
        \single_recive_0/un1_cnt_0_a2_0\, C => 
        \single_recive_0/N_69\, Y => 
        \single_recive_0/un1_cnt_0_a2_5\);
    
    \data_all_RNO_0[102]\ : NOR2A
      port map(A => \data_all[102]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[102]\);
    
    \data_all_RNO[35]\ : AO1A
      port map(A => N_1633, B => N_1856, C => N_1694, Y => N_178);
    
    \cnt_flag[0]\ : DFN1C0
      port map(D => \cnt_flag_5[0]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_flag[0]_net_1\);
    
    \signal_send_0/cnt_end_RNO[9]\ : AX1C
      port map(A => \signal_send_0/cnt_end[8]_net_1\, B => 
        \signal_send_0/cnt_end_c7\, C => 
        \signal_send_0/cnt_end[9]_net_1\, Y => 
        \signal_send_0/cnt_end_n9\);
    
    \data_all_RNO_1[43]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_47_N_5_mux, B => 
        \data_recive_buffer[3]\, Y => N_866);
    
    receive_end_RNO_2 : OR3
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        \cnt_recive_end[6]_net_1\, C => receive_end2lto6_1, Y => 
        receive_end2lt7);
    
    \single_recive_0/cnt_RNI2C1R[2]\ : NOR3C
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[2]_net_1\, C => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_5_1\);
    
    \data_all_RNO_0[76]\ : NOR2
      port map(A => \data_all[76]_net_1\, B => 
        \un46_data_all[80]\, Y => N_786);
    
    \single_recive_0/rx_fall\ : DFN1C0
      port map(D => rx_uart_c, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \single_recive_0/rx_fall_net_1\);
    
    \single_recive_0/cnt_flag_5[1]\ : NOR3A
      port map(A => \un1_cnt_flag_1[2]\, B => N_398, C => 
        cnt_flag_0_sqmuxa, Y => \cnt_flag_5[1]\);
    
    \data_all_RNO[42]\ : NOR3
      port map(A => N_867, B => N_398, C => N_868, Y => N_267);
    
    \signal_send_0/un7_cnt_1_I_14\ : XOR2
      port map(A => \signal_send_0/N_8\, B => 
        \signal_send_0/cnt[5]_net_1\, Y => \signal_send_0/I_14_0\);
    
    \data_all[67]\ : DFN1E0C0
      port map(D => N_217, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[67]_net_1\);
    
    \data_all_RNO_2[66]\ : NOR3
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_recive_buffer[2]\, C => N_381_i_0_o4_out, Y => 
        data_all_4_i_a2_0_66_m2_e_1);
    
    \data_all[144]\ : DFN1E0C0
      port map(D => N_318, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[144]_net_1\);
    
    \signal_send_0/un7_cnt_1_I_26\ : AX1C
      port map(A => \signal_send_0/cnt[8]_net_1\, B => 
        \signal_send_0/DWACT_FINC_E[4]\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/I_26_0\);
    
    \data_all_RNO_3[146]\ : XOR2
      port map(A => \data_recive_buffer[2]\, B => 
        \data_all[146]_net_1\, Y => \data_all_RNO_3[146]_net_1\);
    
    \data_all_RNO_0[81]\ : NOR3A
      port map(A => \data_all[81]_net_1\, B => N_398, C => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_1724);
    
    \cnt_recive_RNI3CEH6[11]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_8[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\);
    
    \cnt_recive_RNI3OST[7]\ : NOR2
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_recive[7]_net_1\, Y => un5_idle_recive_12);
    
    \single_recive_0/cnt_RNIOU0I[1]\ : NOR2A
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_8_3_0\);
    
    un20_data_send_buffer_1_I_20 : AX1A
      port map(A => \cnt_send[3]_net_1\, B => 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\, C => 
        \cnt_send[4]_net_1\, Y => I_20_1);
    
    \cnt_send[17]\ : DFN1E1C0
      port map(D => cnt_send_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[17]_net_1\);
    
    \cnt_recive_RNI5EAK1[17]\ : NOR2B
      port map(A => un5_idle_recive_6, B => un5_idle_recive_7, Y
         => un5_idle_recive_7_0);
    
    \cnt_recive_end_RNO[5]\ : XA1
      port map(A => cnt_recive_end_c4, B => 
        \cnt_recive_end[5]_net_1\, C => cnt_recive_end_0_sqmuxa, 
        Y => cnt_recive_end_n5);
    
    \data_all_RNO[112]\ : OA1C
      port map(A => N_387_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[112]\, Y
         => N_129);
    
    \cnt_send_0_RNIFARU_0[4]\ : NOR3
      port map(A => \cnt_send[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_23_0_a2_out);
    
    \data_send_buffer_RNO_18[6]\ : MX2
      port map(A => \data_all[38]_net_1\, B => 
        \data_all[46]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1651);
    
    \data_all_RNO_0[136]\ : AO1D
      port map(A => \data_all[136]_net_1\, B => 
        N_449_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[136]\);
    
    \cnt_recive_RNIRFEVB[28]\ : NOR2B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        Y => cnt_recive_c28);
    
    \data_send_buffer_RNO_26[4]\ : NOR3A
      port map(A => N_1841, B => 
        \data_send_buffer_RNO_30[4]_net_1\, C => 
        \cnt_send_0[1]_net_1\, Y => \data_send_buffer_4_1_7[4]\);
    
    \single_recive_0/data_recive_RNO[7]\ : AO1
      port map(A => \single_recive_0/data_recive26_2\, B => 
        rx_uart_c, C => \single_recive_0/data_recive_m[7]\, Y => 
        \single_recive_0/data_recive_11[7]\);
    
    \signal_send_0/cnt_RNI7KVP[2]\ : NOR2
      port map(A => \signal_send_0/cnt[2]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/un1_cnt_4\);
    
    \signal_send_0/tx_uart_RNO_1\ : AO1
      port map(A => \data_send_buffer[7]_net_1\, B => 
        \signal_send_0/tx_uart35\, C => 
        \signal_send_0/data_send_m[6]\, Y => 
        \signal_send_0/tx_uart_11_iv_2\);
    
    \data_all_RNO[8]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_1636, C => 
        \data_all_4_i_0[8]\, Y => N_333);
    
    \cnt_send_RNIV9501[21]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_20_6, B => 
        \cnt_send[17]_net_1\, C => \cnt_send[21]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_10);
    
    \cnt_recive_0_RNIBK1S1[1]\ : OR2
      port map(A => \data_all_4_i_i_o2_0[16]\, B => 
        data_all_4_i_o2_i_o2_out, Y => \data_all_4_i_i_o2_1[16]\);
    
    \data_all_RNO_1[67]\ : NOR2A
      port map(A => N_459, B => \data_all[67]_net_1\, Y => N_810);
    
    \data_all_RNO[21]\ : MX2
      port map(A => N_1846, B => \data_all_4_i_i_a4_0[21]\, S => 
        N_443, Y => N_1596);
    
    \data_all_RNO[131]\ : OA1C
      port map(A => N_1620, B => \data_all[131]_net_1\, C => 
        \data_all_4_i_0[131]\, Y => N_91);
    
    \data_send_buffer_RNO_9[0]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        N_1841, C => \data_all[72]_net_1\, Y => N_607);
    
    \cnt_recive_RNIPDST[2]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_434);
    
    \signal_send_0/cnt_RNI6JVP[1]\ : NOR2A
      port map(A => \signal_send_0/cnt[1]_net_1\, B => 
        \signal_send_0/cnt[3]_net_1\, Y => 
        \signal_send_0/tx_uart33_2\);
    
    \signal_send_0/cnt_RNISOCR4_1[11]\ : NOR3C
      port map(A => \signal_send_0/tx_uart37_5\, B => 
        \signal_send_0/tx_uart37_4\, C => 
        \signal_send_0/tx_uart37_6\, Y => 
        \signal_send_0/tx_uart37\);
    
    \cnt_send[22]\ : DFN1E1C0
      port map(D => cnt_send_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[22]_net_1\);
    
    \data_all_RNO_1[144]\ : XNOR2
      port map(A => \data_recive_buffer[0]\, B => 
        N_391_i_0_o2_N_5_mux, Y => \data_all_RNO_1[144]_net_1\);
    
    \cnt_send_RNO_0[11]\ : NOR2B
      port map(A => cnt_send_c9, B => \cnt_send[10]_net_1\, Y => 
        cnt_send_c10);
    
    \data_send_buffer_RNO_0[1]\ : OR3
      port map(A => \data_send_buffer_4_1_7[1]\, B => 
        \data_send_buffer_4_1_6[1]\, C => N_582, Y => 
        \data_send_buffer_4_1_14[1]\);
    
    \cnt_recive[10]\ : DFN1E0C0
      port map(D => cnt_recive_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[10]_net_1\);
    
    un20_data_send_buffer_1_I_18 : NOR3
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \cnt_send[0]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\);
    
    \data_all[136]\ : DFN1E0C0
      port map(D => N_81, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[136]_net_1\);
    
    \cnt_recive[29]\ : DFN1E0C0
      port map(D => cnt_recive_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[29]_net_1\);
    
    \data_all_RNO_0[154]\ : AO1D
      port map(A => \data_all[154]_net_1\, B => 
        data_all_4_i_o2_i_o4_159_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[154]\);
    
    \single_recive_0/data_all_4_i_0[50]\ : AO1D
      port map(A => \data_all[50]_net_1\, B => 
        N_392_i_0_o4_N_5_mux, C => N_398, Y => 
        \single_recive_0/data_all_4_i_0[50]_net_1\);
    
    \cnt_recive_0_RNIRFEVB_3[1]\ : NOR2A
      port map(A => N_387_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]\, Y => 
        N_387_i_0_o4_N_5_mux);
    
    \data_all_RNO_1[1]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_1538);
    
    \data_all_RNO_0[121]\ : AO1D
      port map(A => \data_all[121]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[121]\);
    
    \cnt_recive_RNIGK0S[13]\ : NOR2B
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[8]_net_1\, Y => cnt_recive_c14_m6_0_a2_2);
    
    \data_all[1]\ : DFN1E0C0
      port map(D => N_347, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[1]_net_1\);
    
    \data_send_buffer_RNO_1[6]\ : MX2
      port map(A => N_967_4, B => N_1095_3, S => 
        \cnt_send_0[4]_net_1\, Y => \un39_data_send_buffer[6]\);
    
    \data_all_RNO_0[152]\ : AO1D
      port map(A => \data_all[152]_net_1\, B => 
        data_all_4_i_o2_i_o4_159_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[152]\);
    
    \data_all_RNO_0[47]\ : MX2C
      port map(A => \data_all[47]_net_1\, B => 
        \data_recive_buffer[7]\, S => 
        data_all_4_i_o2_i_o4_47_N_5_mux, Y => N_1656);
    
    \cnt_recive_RNO[5]\ : XA1B
      port map(A => cnt_recive_c4, B => \cnt_recive[5]_net_1\, C
         => N_398, Y => cnt_recive_n5);
    
    \single_recive_0/cnt_RNITOD41[0]\ : NOR3A
      port map(A => \single_recive_0/un1_data_recive19_0_a2_3_0\, 
        B => \single_recive_0/cnt[0]_net_1\, C => 
        \single_recive_0/cnt[10]_net_1\, Y => 
        \single_recive_0/N_51\);
    
    \cnt_send_RNI43KF2[10]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_0_19_3, B => 
        send_end_0_sqmuxa_i_a2_0_19_2, C => 
        send_end_0_sqmuxa_i_a2_0_19_4, Y => 
        send_end_0_sqmuxa_i_a2_0_19);
    
    \cnt_send_RNI6FJO[21]\ : NOR3C
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[21]_net_1\, C => cnt_send_c24_m6_0_a2_4_2, Y
         => cnt_send_c24_m6_0_a2_4_5);
    
    \single_recive_0/cnt_RNIUB9R2[3]\ : OR2
      port map(A => \single_recive_0/data_recive_11_0_o2_1[7]\, B
         => \single_recive_0/data_recive_11_0_o2_0[7]\, Y => 
        \single_recive_0/N_34\);
    
    \data_send_buffer_RNO_33[3]\ : NOR2
      port map(A => N_398, B => N_1888, Y => 
        \data_send_buffer_4_1_0_2_s_a0_1[3]\);
    
    \signal_send_0/cnt_RNIOHPM9[1]\ : OR2
      port map(A => \signal_send_0/tx_uart28\, B => 
        \signal_send_0/tx_uart27\, Y => 
        \signal_send_0/un1_tx_uart27_4\);
    
    \data_send_buffer_RNO_0[0]\ : OR3
      port map(A => N_614, B => \data_send_buffer_4_1_8[0]\, C
         => \data_send_buffer_4_1_10_0[0]\, Y => 
        \data_send_buffer_4_1_15[0]\);
    
    \data_all_RNO_0[26]\ : NOR2
      port map(A => \data_all[26]_net_1\, B => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1491);
    
    \data_send_buffer_RNO_1[4]\ : OR3
      port map(A => N_526, B => \data_send_buffer_4_1_3[4]\, C
         => \data_send_buffer_4_1_9[4]\, Y => 
        \data_send_buffer_4_1_12[4]\);
    
    \data_all_RNO_0[31]\ : MX2C
      port map(A => \data_all[31]_net_1\, B => 
        \data_recive_buffer[7]\, S => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_1659);
    
    \data_send_buffer_RNO_9[5]\ : AO1
      port map(A => \data_all[37]_net_1\, B => N_1580, C => 
        \data_send_buffer_4_1_0_5[5]\, Y => 
        \data_send_buffer_4_1_0_11[5]\);
    
    \data_all_RNO_1[131]\ : NOR2
      port map(A => \data_recive_buffer[3]\, B => 
        \cnt_recive[1]_net_1\, Y => data_all_4_i_a2_0_131_m1_e_0);
    
    \data_all_RNO_0[78]\ : MX2
      port map(A => \data_all[78]_net_1\, B => N_815_2, S => 
        \un46_data_all[80]\, Y => \data_all_2[78]\);
    
    un20_data_send_buffer_1_I_14 : AX1D
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        C => \cnt_send[2]_net_1\, Y => I_14_1);
    
    \signal_send_0/un7_cnt_1_I_27\ : AND3
      port map(A => \signal_send_0/DWACT_FINC_E[4]\, B => 
        \signal_send_0/cnt[8]_net_1\, C => 
        \signal_send_0/cnt[9]_net_1\, Y => \signal_send_0/N_3\);
    
    \data_all[74]\ : DFN1E0C0
      port map(D => N_203, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[74]_net_1\);
    
    \cnt_recive_0_RNIJ75U_0[1]\ : OR3B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => \cnt_recive[3]_net_1\, Y
         => N_383_i_0_o4_0);
    
    \signal_send_0/un12_receive_endlto8\ : AO1B
      port map(A => \signal_send_0/un12_receive_endlt7\, B => 
        \signal_send_0/un12_cnt_delay_3_net_1\, C => 
        \cnt_delay[8]_net_1\, Y => 
        \signal_send_0/un12_receive_end\);
    
    \signal_send_0/cnt_RNO[4]\ : NOR2B
      port map(A => \signal_send_0/I_12_0\, B => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[4]\);
    
    \signal_send_0/cnt_RNISOCR4[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart30_4\, B => 
        \signal_send_0/tx_uart30_3\, C => 
        \signal_send_0/tx_uart30_5\, Y => 
        \signal_send_0/tx_uart30\);
    
    \cnt_recive[28]\ : DFN1E0C0
      port map(D => cnt_recive_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[28]_net_1\);
    
    \single_recive_0/cnt_RNI071I_0[9]\ : NOR2A
      port map(A => \single_recive_0/cnt[9]_net_1\, B => 
        \single_recive_0/cnt[5]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_2_1\);
    
    \signal_send_0/tx_uart_RNO_7\ : AO1B
      port map(A => \data_send_buffer[2]_net_1\, B => 
        \signal_send_0/tx_uart30\, C => 
        \signal_send_0/un1_tx_uart42\, Y => 
        \signal_send_0/tx_uart_11_iv_4\);
    
    \cnt_recive_RNO[16]\ : XA1B
      port map(A => cnt_recive_c15, B => \cnt_recive[16]_net_1\, 
        C => N_398, Y => cnt_recive_n16);
    
    \data_send_buffer_RNO_20[0]\ : NOR2B
      port map(A => \data_all[96]_net_1\, B => N_1573, Y => N_610);
    
    \data_send_buffer_RNO_14[2]\ : AO1
      port map(A => \data_all[98]_net_1\, B => N_1573, C => N_563, 
        Y => \data_send_buffer_4_1_6[2]\);
    
    \data_all_RNO_1[26]\ : NOR2A
      port map(A => data_all_2_i_o2_i_o4_28_N_5_mux, B => 
        \data_recive_buffer[2]\, Y => N_1492);
    
    \data_all[78]\ : DFN1E0C0
      port map(D => \data_all_4[78]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[78]_net_1\);
    
    \data_send_buffer_RNO_5[2]\ : AO1A
      port map(A => N_36, B => \data_all[2]_net_1\, C => N_560, Y
         => \data_send_buffer_4_1_12[2]\);
    
    \data_send_buffer_RNO_5[1]\ : NOR3C
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, C => 
        \data_all[113]_net_1\, Y => N_582);
    
    \data_send_buffer_RNO_0[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_9[5]\, B => 
        \data_send_buffer_4_1_0_8[5]\, C => N_1818, Y => 
        \data_send_buffer_4_1_0_16[5]\);
    
    \data_all_RNO_3[132]\ : XNOR2
      port map(A => \data_all[132]_net_1\, B => 
        \data_recive_buffer[4]\, Y => \data_all_RNO_3[132]_net_1\);
    
    \cnt_send_RNIAITJ_0[4]\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => send_end_0_sqmuxa_i_a2_m3_e_0);
    
    \signal_send_0/un12_cnt_delay_1_0\ : NOR2A
      port map(A => \cnt_delay[8]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_1_net_1\);
    
    \signal_send_0/tx_uart_RNO_9\ : NOR2B
      port map(A => \data_send_buffer[1]_net_1\, B => 
        \signal_send_0/tx_uart29\, Y => 
        \signal_send_0/data_send_m[1]\);
    
    \data_send_buffer_RNO_27[0]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        \data_all[64]_net_1\, Y => 
        \data_send_buffer_RNO_27[0]_net_1\);
    
    \data_all_RNO_2[37]\ : NOR3
      port map(A => data_all_4_i_o2_i_o2_out, B => 
        \data_recive_buffer[5]\, C => 
        \data_all_4_i_o2_i_o4_0[39]\, Y => 
        data_all_4_i_a2_0_37_m2_e_1);
    
    \data_all_RNO[110]\ : AOI1
      port map(A => N_847_2_i, B => 
        data_all_4_i_o2_i_o4_111_N_5_mux, C => 
        \data_all_4_i_0[110]\, Y => N_133);
    
    \cnt_send_RNO[24]\ : XA1B
      port map(A => cnt_send_c23, B => \cnt_send[24]_net_1\, C
         => N_398, Y => cnt_send_n24);
    
    \data_send_buffer_RNO_3[3]\ : OR3
      port map(A => N_1813, B => N_1807, C => N_1814, Y => 
        \data_send_buffer_4_1_0_8[3]\);
    
    \cnt_send_RNO[30]\ : AX1C
      port map(A => cnt_send_c28, B => cnt_send_99_0, C => N_981, 
        Y => cnt_send_n30);
    
    \cnt_send_RNI21F61[6]\ : NOR3C
      port map(A => \cnt_send[7]_net_1\, B => \cnt_send[6]_net_1\, 
        C => \cnt_send_0[4]_net_1\, Y => cnt_send_c11_m6_0_a2_5);
    
    \data_all_RNO_2[132]\ : NOR3
      port map(A => \cnt_recive_0[1]_net_1\, B => 
        \data_all_RNO_3[132]_net_1\, C => N_398, Y => 
        data_all_4_i_i_132_N_5_mux);
    
    \single_recive_0/recive\ : DFN1E1C0
      port map(D => \single_recive_0/un1_cnt\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => \single_recive_0/un2_cnt\, Q => 
        \single_recive_0/recive_net_1\);
    
    \data_send_buffer_RNO_2[0]\ : OR3
      port map(A => N_607, B => N_602, C => 
        \data_send_buffer_4_1_13[0]\, Y => 
        \data_send_buffer_4_1_16[0]\);
    
    \data_all_RNO_0[118]\ : NOR2A
      port map(A => \data_all[118]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[118]\);
    
    \cnt_send[10]\ : DFN1E1C0
      port map(D => cnt_send_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[10]_net_1\);
    
    \data_send_buffer_RNO_15[0]\ : AO1
      port map(A => \data_all[0]_net_1\, B => N_1571, C => N_606, 
        Y => \data_send_buffer_4_1_3[0]\);
    
    \data_send_buffer_RNO_2[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_11[5]\, B => 
        \data_send_buffer_4_1_0_10[5]\, C => N_1819, Y => 
        \data_send_buffer_4_1_0_17[5]\);
    
    \signal_send_0/cnt_RNO[2]\ : XA1
      port map(A => \signal_send_0/N_11\, B => 
        \signal_send_0/cnt[2]_net_1\, C => 
        \signal_send_0/send_net_1\, Y => \signal_send_0/cnt_4[2]\);
    
    \signal_send_0/un7_cnt_1_I_15\ : AND2
      port map(A => \signal_send_0/cnt[3]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/DWACT_FINC_E[1]\);
    
    \signal_send_0/end_flag_RNIHPGSC\ : NOR2A
      port map(A => \signal_send_0/end_flag_net_1\, B => 
        un5_idle_recive, Y => un3_end_flag);
    
    \data_all[31]\ : DFN1E0C0
      port map(D => N_289, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[31]_net_1\);
    
    \data_send_buffer_RNO_12[5]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_35_0_a4_out, B => 
        \data_all[133]_net_1\, C => N_1838, Y => N_1836);
    
    send_end_RNO_20 : XO1
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_send[10]_net_1\, C => un12_cnt_send_12, Y => 
        send_end_0_sqmuxa_i_4);
    
    \signal_send_0/un7_cnt_1_I_5\ : XOR2
      port map(A => \signal_send_0/cnt[0]_net_1\, B => 
        \signal_send_0/cnt[1]_net_1\, Y => \signal_send_0/I_5_0\);
    
    \single_recive_0/cnt_delay_c4\ : NOR2B
      port map(A => \single_recive_0/cnt_delay_c3_net_1\, B => 
        \cnt_delay[4]_net_1\, Y => 
        \single_recive_0/cnt_delay_c4_net_1\);
    
    \single_recive_0/cnt_RNIQHR82[0]\ : AO1
      port map(A => \single_recive_0/un1_data_recive19_0_a2_4_1\, 
        B => \single_recive_0/un1_data_recive19_0_a2_4_0\, C => 
        \single_recive_0/N_51\, Y => \single_recive_0/N_26\);
    
    \data_all[30]\ : DFN1E0C0
      port map(D => N_291, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[30]_net_1\);
    
    \data_all[24]\ : DFN1E0C0
      port map(D => N_301, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[24]_net_1\);
    
    \cnt_recive_0_RNIT8MPC[1]\ : NOR3C
      port map(A => un5_idle_recive_17, B => un5_idle_recive_16, 
        C => un5_idle_recive_18, Y => un5_idle_recive);
    
    \data_send_buffer_RNO_14[3]\ : NOR3C
      port map(A => \data_all[67]_net_1\, B => 
        data_send_buffer_4_1_a2_21_0_a4_out, C => N_1842, Y => 
        N_1814);
    
    \data_all_RNO_0[141]\ : NOR3A
      port map(A => \data_all[141]_net_1\, B => N_398, C => 
        N_449_i_0_o4_N_5_mux, Y => N_1767);
    
    \single_recive_0/un7_cnt_1_I_8\ : AND3
      port map(A => \single_recive_0/cnt[0]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, C => 
        \single_recive_0/cnt[2]_net_1\, Y => 
        \single_recive_0/N_10\);
    
    \data_send_buffer_RNO_17[5]\ : NOR2B
      port map(A => \data_all[85]_net_1\, B => N_1579, Y => 
        N_1824);
    
    \data_send_buffer_RNO_6[0]\ : NOR2B
      port map(A => \data_all[144]_net_1\, B => N_984, Y => N_595);
    
    \data_all_RNO_0[28]\ : NOR2A
      port map(A => data_all_2_i_o2_i_o4_28_N_5_mux, B => 
        \data_recive_buffer[4]\, Y => N_461);
    
    \data_send_buffer_RNO_15[6]\ : MX2
      port map(A => \data_all[150]_net_1\, B => 
        \data_all[158]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_631_3);
    
    \data_all_RNO[93]\ : NOR2A
      port map(A => N_641, B => N_398, Y => N_167);
    
    \signal_send_0/tx_uart_RNO_0\ : AO1
      port map(A => \data_send_buffer[5]_net_1\, B => 
        \signal_send_0/tx_uart33\, C => 
        \signal_send_0/data_send_m[0]\, Y => 
        \signal_send_0/tx_uart_11_iv_3\);
    
    \data_all_RNO[71]\ : AO1A
      port map(A => N_459, B => N_1844, C => N_1720, Y => N_220);
    
    \cnt_send_RNO[5]\ : XA1B
      port map(A => cnt_send_c4, B => \cnt_send[5]_net_1\, C => 
        N_398, Y => cnt_send_n5);
    
    \data_send_buffer_RNO_27[4]\ : NOR2B
      port map(A => \data_all[28]_net_1\, B => N_1575, Y => N_517);
    
    \data_all[64]\ : DFN1E0C0
      port map(D => N_223, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[64]_net_1\);
    
    \data_all_RNO_0[10]\ : AO1A
      port map(A => \data_all[10]_net_1\, B => N_1636, C => N_398, 
        Y => \data_all_4_i_0[10]\);
    
    \signal_send_0/cnt_RNO[0]\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/cnt[0]_net_1\, Y => 
        \signal_send_0/cnt_4[0]\);
    
    \data_all_RNO[24]\ : NOR3
      port map(A => N_902, B => N_398, C => N_1495, Y => N_301);
    
    \data_all[28]\ : DFN1E0C0
      port map(D => \data_all_4[28]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[28]_net_1\);
    
    send_end_RNO_29 : XOR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_recive[17]_net_1\, Y => un12_cnt_send_17);
    
    \signal_send_0/send_RNI25OOL1\ : NOR2A
      port map(A => \signal_send_0/send_net_1\, B => 
        \signal_send_0/un1_tx_uart27\, Y => 
        \signal_send_0/tx_uart_11_sqmuxa\);
    
    \data_all_RNO[144]\ : MX2
      port map(A => d_N_3_mux_3, B => \data_all_RNO_1[144]_net_1\, 
        S => data_all_4_i_i_144_N_7_mux, Y => N_318);
    
    \data_all_RNO_1[128]\ : NOR2
      port map(A => \data_recive_buffer[0]\, B => 
        \cnt_recive[1]_net_1\, Y => data_all_4_i_a2_0_128_m1_e_0);
    
    \cnt_recive_RNI915M1[11]\ : NOR3C
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[11]_net_1\, C => cnt_recive_c14_m6_0_a2_2, Y
         => cnt_recive_c14_m6_0_a2_5);
    
    \cnt_recive_RNI26S37[15]\ : NOR2B
      port map(A => cnt_recive_c14, B => \cnt_recive[15]_net_1\, 
        Y => cnt_recive_c15);
    
    send_end_RNO_33 : XOR2
      port map(A => \cnt_send[12]_net_1\, B => 
        \cnt_recive[12]_net_1\, Y => un12_cnt_send_12);
    
    \single_recive_0/cnt_RNIQ01I[2]\ : NOR2B
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[6]_net_1\, Y => 
        \single_recive_0/un1_cnt_0_a2_1\);
    
    \cnt_recive_end_RNO_0[6]\ : AX1C
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        cnt_recive_end_c4, C => \cnt_recive_end[6]_net_1\, Y => 
        cnt_recive_end_n6_tz);
    
    \data_send_buffer_RNO_23[2]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => N_1840, C
         => \data_send_buffer_4_1_a2_2_0[2]\, Y => 
        \data_send_buffer_4_1_a2_2_1[2]\);
    
    \signal_send_0/cnt_end_RNIJKC71[4]\ : NOR3A
      port map(A => \signal_send_0/end_flag_0_sqmuxa_3\, B => 
        \signal_send_0/cnt_end[5]_net_1\, C => 
        \signal_send_0/cnt_end[4]_net_1\, Y => 
        \signal_send_0/end_flag_0_sqmuxa_5\);
    
    \data_all[68]\ : DFN1E0C0
      port map(D => N_212, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[68]_net_1\);
    
    \data_send_buffer_RNO_31[5]\ : NOR3C
      port map(A => N_1850, B => 
        \data_send_buffer_4_1_a2_24_0_a4_s_0[7]\, C => 
        data_send_buffer_4_1_0_a4_8_5_m1_e_1, Y => N_1826);
    
    \single_recive_0/cnt_RNILR0I[1]\ : NOR2A
      port map(A => \single_recive_0/cnt[2]_net_1\, B => 
        \single_recive_0/cnt[1]_net_1\, Y => 
        \single_recive_0/un1_data_recive19_0_a2_1\);
    
    \data_send_buffer_RNO_14[4]\ : NOR2B
      port map(A => \data_all[84]_net_1\, B => N_1579, Y => N_519);
    
    \cnt_send_RNO_0[24]\ : NOR2B
      port map(A => cnt_send_c22, B => \cnt_send[23]_net_1\, Y
         => cnt_send_c23);
    
    \data_all_RNO_1[28]\ : NOR2
      port map(A => \data_all[28]_net_1\, B => 
        data_all_2_i_o2_i_o4_28_N_5_mux, Y => N_460);
    
    \data_all_RNO[81]\ : AO1
      port map(A => N_1052, B => data_all_4_i_i_o2_80_N_5_mux, C
         => N_1724, Y => N_224);
    
    \cnt_recive_RNIK2391[17]\ : NOR3C
      port map(A => \cnt_recive[14]_net_1\, B => 
        \cnt_recive[17]_net_1\, C => \cnt_recive[9]_net_1\, Y => 
        cnt_recive_c17_m6_0_a2_4_4);
    
    \cnt_recive_0_RNIJ75U_4[1]\ : NOR3B
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive_0[1]_net_1\, C => \cnt_recive[2]_net_1\, Y
         => data_all_4_i_i_o2_80_m2_e_0);
    
    \data_send_buffer_RNO_16[1]\ : AO1
      port map(A => \data_all[137]_net_1\, B => N_1585, C => 
        N_584, Y => \data_send_buffer_4_1_2[1]\);
    
    \data_all_RNO[19]\ : MX2
      port map(A => N_1856, B => \data_all_4_i_i_a4_0[19]\, S => 
        N_443, Y => N_1594);
    
    \data_send_buffer_RNO_14[1]\ : NOR2B
      port map(A => \data_all[25]_net_1\, B => N_1575, Y => N_581);
    
    \single_recive_0/data_recive_RNI06D9[5]\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => N_398, Y => 
        N_1846);
    
    \data_send_buffer_RNO_10[1]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[17]_net_1\, C => N_398, Y => N_585);
    
    \signal_send_0/un7_cnt_1_I_28\ : XOR2
      port map(A => \signal_send_0/N_3\, B => 
        \signal_send_0/cnt[10]_net_1\, Y => 
        \signal_send_0/I_28_0\);
    
    \data_all_RNO_0[61]\ : NOR2A
      port map(A => \data_all[61]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[61]\);
    
    \cnt_send_RNI0Q932[11]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_1, B => 
        cnt_send_c11_m6_0_a2_0, C => cnt_send_c11_m6_0_a2_3, Y
         => cnt_send_c11_m6_0_a2_6);
    
    \data_send_buffer_RNO_23[0]\ : OAI1
      port map(A => \data_send_buffer_RNO_27[0]_net_1\, B => 
        data_send_buffer_4_1_10tt_0_N_3_mux, C => N_1842, Y => 
        data_send_buffer_4_1_10_0_N_6_mux);
    
    \cnt_send_RNO[8]\ : XA1B
      port map(A => cnt_send_c7, B => \cnt_send[8]_net_1\, C => 
        N_398, Y => cnt_send_n8);
    
    \data_send_buffer_RNO_6[3]\ : OR3
      port map(A => N_1800, B => N_1805, C => N_1801, Y => 
        \data_send_buffer_4_1_0_6[3]\);
    
    \cnt_send_RNIOCNB2[4]\ : XA1B
      port map(A => cnt_send_c3, B => \cnt_send[4]_net_1\, C => 
        N_398, Y => cnt_send_n4);
    
    \single_recive_0/data_all_4_i_a2[88]\ : NOR2A
      port map(A => N_1618, B => \data_all[88]_net_1\, Y => 
        \single_recive_0/N_764\);
    
    \data_all_RNO_2[151]\ : NOR3A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \data_all_RNO_3[151]_net_1\, C => N_398, Y => 
        data_all_4_i_i_151_N_5_mux);
    
    \single_recive_0/cnt_RNIS21I_0[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[7]_net_1\, B => 
        \single_recive_0/cnt[3]_net_1\, Y => 
        \single_recive_0/N_47_1\);
    
    \data_send_buffer_RNO_19[7]\ : NOR2B
      port map(A => \data_all[31]_net_1\, B => N_1575, Y => N_469);
    
    \data_send_buffer_RNO_16[7]\ : NOR3C
      port map(A => \data_all[111]_net_1\, B => 
        data_send_buffer_4_1_a2_20_0_a4_out, C => N_1841, Y => 
        N_474);
    
    \signal_send_0/cnt_RNICPVP_0[4]\ : NOR2A
      port map(A => \signal_send_0/cnt[6]_net_1\, B => 
        \signal_send_0/cnt[4]_net_1\, Y => 
        \signal_send_0/tx_uart31_3\);
    
    \cnt_send[6]\ : DFN1E1C0
      port map(D => cnt_send_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[6]_net_1\);
    
    \cnt_recive[6]\ : DFN1E0C0
      port map(D => cnt_recive_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[6]_net_1\);
    
    \data_all_RNO_1[145]\ : XNOR2
      port map(A => \data_recive_buffer[1]\, B => 
        N_391_i_0_o2_N_5_mux, Y => \data_all_RNO_1[145]_net_1\);
    
    \data_all_RNO_0[127]\ : NOR3A
      port map(A => \data_all[127]_net_1\, B => N_398, C => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_860);
    
    \cnt_send_RNO_0[28]\ : NOR3C
      port map(A => cnt_send_95_6, B => cnt_send_c13_m6_0_a2_4, C
         => cnt_send_95_8, Y => N_976);
    
    \cnt_send_RNI8T558[28]\ : AO1D
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_send_RNIOI3O7[4]_net_1\, C => N_398, Y => 
        data_send_buffer_4_1_a2_40_i_o4_0_7_N_4);
    
    \cnt_recive_RNI4JQC1[1]\ : NOR3
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, C => \cnt_recive[1]_net_1\, Y => 
        N_397_i_0_o4_m2_e_0);
    
    \data_all_RNO[97]\ : OA1C
      port map(A => N_385_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, C => \data_all_4_i_0[97]\, Y => 
        N_159);
    
    \data_send_buffer_RNO_9[7]\ : NOR3C
      port map(A => N_1848, B => \data_all[47]_net_1\, C => 
        N_1858, Y => N_476);
    
    \data_all[135]\ : DFN1E0C0
      port map(D => N_300, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[135]_net_1\);
    
    \cnt_recive_end[8]\ : DFN1C0
      port map(D => cnt_recive_end_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto8);
    
    \data_send_buffer_RNO_0[2]\ : OR3
      port map(A => \data_send_buffer_4_1_9[2]\, B => 
        \data_send_buffer_4_1_8[2]\, C => 
        \data_send_buffer_4_1_12[2]\, Y => 
        \data_send_buffer_4_1_16[2]\);
    
    \single_recive_0/cnt_delay_c3\ : NOR2B
      port map(A => \single_recive_0/cnt_delay_c2_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => 
        \single_recive_0/cnt_delay_c3_net_1\);
    
    \data_send_buffer_RNO_28[1]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        \data_all[65]_net_1\, Y => 
        data_send_buffer_4_1_16_stt_1_N_5_mux);
    
    \sys_clk_pad/U0/U0\ : IOPAD_IN
      port map(PAD => sys_clk, Y => \sys_clk_pad/U0/NET1\);
    
    \data_send_buffer_RNO_10[7]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_21_0_a4_out, B => 
        N_1841, C => \data_all[79]_net_1\, Y => N_475);
    
    \data_all[85]\ : DFN1E0C0
      port map(D => N_236, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[85]_net_1\);
    
    \single_recive_0/cnt_RNIO9RM1[10]\ : AO1A
      port map(A => \single_recive_0/cnt[10]_net_1\, B => 
        \single_recive_0/un3_cnt_4_0_a2_0\, C => 
        \single_recive_0/N_50\, Y => 
        \single_recive_0/data_recive_11_0_o2_1[7]\);
    
    \data_all_RNO_0[1]\ : NOR2
      port map(A => \data_all[1]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1537);
    
    \data_all_RNO_1[73]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[1]\, Y => N_793);
    
    \cnt_recive_end_RNO[4]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n4_tz, Y => cnt_recive_end_n4);
    
    \data_all_RNO_0[101]\ : NOR2A
      port map(A => \data_all[101]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[101]\);
    
    idle_send_down : DFN1C0
      port map(D => idle_send_down_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_down\);
    
    \cnt_recive_RNITG4Q[14]\ : NOR2
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[14]_net_1\, Y => un5_idle_recive_9);
    
    \data_all_RNO[96]\ : OA1C
      port map(A => N_385_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, C => \data_all_4_i_0[96]\, Y => 
        N_161);
    
    \data_all_RNO_1[148]\ : XNOR2
      port map(A => \data_recive_buffer[4]\, B => 
        N_391_i_0_o2_N_5_mux, Y => \data_all_RNO_1[148]_net_1\);
    
    \single_recive_0/data_recive_RNO_0[6]\ : OR2
      port map(A => \single_recive_0/N_43\, B => 
        \single_recive_0/N_34\, Y => \single_recive_0/N_61\);
    
    \signal_send_0/vld_send_fall\ : DFN1P0
      port map(D => \signal_send_0/vld_send_i\, CLK => sys_clk_c, 
        PRE => sys_rest_c, Q => \signal_send_0/vld_send_fall_i_0\);
    
    \cnt_recive_RNICR3EC[0]\ : NOR2A
      port map(A => N_449_i_0_o4_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_0_0[111]\, Y => 
        N_449_i_0_o4_N_5_mux);
    
    \cnt_send_RNO[29]\ : XA1B
      port map(A => cnt_send_c28, B => \cnt_send[29]_net_1\, C
         => N_398, Y => cnt_send_n29);
    
    \data_send_buffer_RNO_8[6]\ : MX2
      port map(A => N_711_3, B => N_743_3, S => 
        \cnt_send[2]_net_1\, Y => N_871_3);
    
    \cnt_send_RNIQ5HR[8]\ : NOR2B
      port map(A => \cnt_send[8]_net_1\, B => \cnt_send[6]_net_1\, 
        Y => cnt_send_c8_m3_0_a2_0);
    
    \signal_send_0/tx_uart_RNO_3\ : NOR2B
      port map(A => \data_send_buffer[0]_net_1\, B => 
        \signal_send_0/tx_uart28\, Y => 
        \signal_send_0/data_send_m[0]\);
    
    \signal_send_0/cnt_end_RNO[0]\ : XNOR2
      port map(A => \signal_send_0/cnt_end[0]_net_1\, B => 
        \signal_send_0/idle_send_net_1\, Y => 
        \signal_send_0/cnt_end_RNO[0]_net_1\);
    
    \cnt_recive_end[6]\ : DFN1C0
      port map(D => cnt_recive_end_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[6]_net_1\);
    
    \data_all[45]\ : DFN1E0C0
      port map(D => N_261, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[45]_net_1\);
    
    \data_all[156]\ : DFN1E0C0
      port map(D => N_1612, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[156]_net_1\);
    
    \data_send_buffer_RNO_11[7]\ : AO1
      port map(A => \data_all[95]_net_1\, B => N_1583, C => N_466, 
        Y => \data_send_buffer_4_1_13[7]\);
    
    \data_send_buffer_RNO_30[5]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => \data_all[13]_net_1\, C => N_398, Y => 
        data_send_buffer_4_1_0_1tt_5_m3_0_a2_1);
    
    \data_all_RNO[74]\ : NOR3
      port map(A => N_790, B => N_398, C => N_791, Y => N_203);
    
    \data_all_RNO_0[119]\ : NOR2A
      port map(A => \data_all[119]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[119]\);
    
    \single_recive_0/cnt_RNIQG0Q4[0]\ : OA1
      port map(A => \single_recive_0/N_64\, B => 
        \single_recive_0/N_63\, C => 
        \single_recive_0/un1_data_recive19_0_a2_0_5\, Y => 
        \single_recive_0/N_46\);
    
    \cnt_send_RNIRGPB7[25]\ : NOR3C
      port map(A => cnt_send_c13, B => cnt_send_c24_m6_0_a2_out, 
        C => \cnt_send[25]_net_1\, Y => cnt_send_c25);
    
    \cnt_recive_RNO[14]\ : XA1B
      port map(A => cnt_recive_c13, B => \cnt_recive[14]_net_1\, 
        C => N_398, Y => cnt_recive_n14);
    
    \signal_send_0/cnt_RNISOCR4_1[2]\ : NOR3C
      port map(A => \signal_send_0/tx_uart31_6\, B => 
        \signal_send_0/tx_uart31_5\, C => 
        \signal_send_0/tx_uart31_7\, Y => 
        \signal_send_0/tx_uart31\);
    
    \cnt_send_RNIPOSD1[15]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_send[15]_net_1\, C => cnt_send_c18_m6_0_a2_3, Y => 
        cnt_send_c18_m6_0_a2_5);
    
    \cnt_recive_RNIJHTF5[22]\ : NOR3C
      port map(A => un5_idle_recive_6_0, B => un5_idle_recive_5, 
        C => un5_idle_recive_12_0, Y => un5_idle_recive_17);
    
    send_end_RNO_22 : XO1
      port map(A => \cnt_recive[29]_net_1\, B => 
        \cnt_send[29]_net_1\, C => N_594_i, Y => 
        send_end_0_sqmuxa_i_1);
    
    \data_all[76]\ : DFN1E0C0
      port map(D => N_199, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[76]_net_1\);
    
    \data_all[73]\ : DFN1E0C0
      port map(D => N_205, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[73]_net_1\);
    
    \data_all_RNO[141]\ : AO1
      port map(A => N_1846, B => N_449_i_0_o4_N_5_mux, C => 
        N_1767, Y => N_306);
    
    \cnt_recive_RNIPDST[4]\ : OR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => un46_data_all_0_a2_1_o2_0_out);
    
    \data_send_buffer_RNO_11[0]\ : AO1
      port map(A => \data_all[88]_net_1\, B => N_1583, C => N_608, 
        Y => \data_send_buffer_4_1_13[0]\);
    
    \data_send_buffer_RNO_5[7]\ : AO1
      port map(A => data_send_buffer_4_1_a2_7_out, B => N_1842, C
         => N_474, Y => \data_send_buffer_4_1_11[7]\);
    
    \data_all_RNO_0[19]\ : NOR2A
      port map(A => \data_all[19]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[19]\);
    
    \data_all_RNO_0[135]\ : NOR2A
      port map(A => \data_all[135]_net_1\, B => N_398, Y => 
        d_N_3_mux_1);
    
    \data_all_RNO[4]\ : NOR3
      port map(A => N_1531, B => N_398, C => N_1532, Y => N_341);
    
    \signal_send_0/cnt_RNIG3JDJ[10]\ : OR3
      port map(A => \signal_send_0/tx_uart33\, B => 
        \signal_send_0/tx_uart35\, C => 
        \signal_send_0/un1_tx_uart27_4\, Y => 
        \signal_send_0/un1_tx_uart27_7\);
    
    \data_all_RNO_3[148]\ : XOR2
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[148]_net_1\, Y => \data_all_RNO_3[148]_net_1\);
    
    \data_send_buffer_RNO_4[1]\ : AO1
      port map(A => \data_all[1]_net_1\, B => N_1571, C => 
        \data_send_buffer_4_1_1[1]\, Y => 
        \data_send_buffer_4_1_6[1]\);
    
    send_end_RNO_2 : OR3
      port map(A => send_end_0_sqmuxa_i_15, B => 
        send_end_0_sqmuxa_i_14, C => send_end_0_sqmuxa_i_21, Y
         => send_end_0_sqmuxa_i_26);
    
    \data_all_RNO_0[147]\ : NOR3A
      port map(A => \data_all[147]_net_1\, B => N_398, C => 
        \cnt_recive_RNICR3EC_1[1]_net_1\, Y => N_1779);
    
    \data_all_RNO[128]\ : OA1C
      port map(A => N_1620, B => \data_all[128]_net_1\, C => 
        \data_all_4_i_0[128]\, Y => N_97);
    
    \data_send_buffer_RNO_3[0]\ : NOR2A
      port map(A => \data_all[0]_net_1\, B => N_36, Y => N_614);
    
    \data_all_RNO[84]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[84]\, B => N_1845, S => 
        data_all_4_i_i_o2_80_N_5_mux, Y => N_234);
    
    \rx_uart_pad/U0/U1\ : IOIN_IB
      port map(YIN => \rx_uart_pad/U0/NET1\, Y => rx_uart_c);
    
    \data_all_RNO_0[151]\ : NOR2A
      port map(A => \data_all[151]_net_1\, B => N_398, Y => 
        d_N_3_mux_5);
    
    \cnt_recive_RNO[19]\ : XA1B
      port map(A => cnt_recive_c18, B => \cnt_recive[19]_net_1\, 
        C => N_398, Y => cnt_recive_n19);
    
    \single_recive_0/un7_cnt_1_I_21\ : AND2
      port map(A => \single_recive_0/cnt[6]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/DWACT_FINC_E[3]\);
    
    \data_all_RNO[107]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_N_5_mux, B => 
        \data_recive_buffer[3]\, C => \data_all_4_i_0[107]\, Y
         => N_139);
    
    \cnt_recive[22]\ : DFN1E0C0
      port map(D => cnt_recive_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[22]_net_1\);
    
    \data_all_RNO_0[70]\ : NOR2A
      port map(A => \data_all[70]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[70]\);
    
    \cnt_recive[16]\ : DFN1E0C0
      port map(D => cnt_recive_n16, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[16]_net_1\);
    
    \cnt_send_RNO_0[18]\ : NOR2B
      port map(A => cnt_send_c16, B => \cnt_send[17]_net_1\, Y
         => cnt_send_c17);
    
    \cnt_send[3]\ : DFN1E1C0
      port map(D => cnt_send_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[3]_net_1\);
    
    \single_recive_0/cnt_RNIV51I[4]\ : NOR2B
      port map(A => \single_recive_0/cnt[4]_net_1\, B => 
        \single_recive_0/cnt[9]_net_1\, Y => 
        \single_recive_0/N_65_3\);
    
    \single_recive_0/data_recive_RNIR0D9[0]\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => N_398, Y => 
        N_1053);
    
    \data_send_buffer_RNO_13[3]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_23_0_a4_7_m1_e_out, B
         => \data_all[19]_net_1\, C => N_398, Y => N_1807);
    
    \data_all_RNO_0[51]\ : NOR2A
      port map(A => \data_all[51]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[51]\);
    
    \cnt_recive_RNIQF6Q[20]\ : NOR2B
      port map(A => \cnt_recive[20]_net_1\, B => 
        \cnt_recive[22]_net_1\, Y => cnt_recive_c24_m6_0_a2_1);
    
    \data_send_buffer_RNO_5[4]\ : NOR2B
      port map(A => \data_all[100]_net_1\, B => N_1573, Y => 
        N_526);
    
    \data_all_RNO_0[83]\ : NOR2A
      port map(A => \data_all[83]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[83]\);
    
    \data_send_buffer_RNO_8[2]\ : NOR2B
      port map(A => \data_all[90]_net_1\, B => N_1583, Y => N_557);
    
    \signal_send_0/un12_cnt_delay_4\ : NOR3B
      port map(A => \cnt_delay[5]_net_1\, B => 
        \signal_send_0/un12_cnt_delay_1_0_net_1\, C => 
        \cnt_delay[4]_net_1\, Y => 
        \signal_send_0/un12_cnt_delay_4_net_1\);
    
    \cnt_send_RNI87VA2_0[3]\ : NOR3C
      port map(A => \data_send_buffer_4_1_a2_24_0_a2_0[7]\, B => 
        data_send_buffer_4_1_a2_39_0_a4_7_m2_e_1, C => N_1840, Y
         => data_send_buffer_4_1_a2_39_0_a4_7_m2_e_3);
    
    \data_send_buffer_RNO_20[6]\ : MX2
      port map(A => \data_all[70]_net_1\, B => 
        \data_all[78]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_551_3);
    
    \data_all_RNO_0[96]\ : AO1D
      port map(A => \data_all[96]_net_1\, B => 
        N_385_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[96]\);
    
    \cnt_send[23]\ : DFN1E1C0
      port map(D => cnt_send_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[23]_net_1\);
    
    \data_send_buffer_RNO_4[4]\ : NOR3C
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_32_0_a4_out, C => 
        \data_all[116]_net_1\, Y => N_518);
    
    \cnt_send_RNIDOGR[1]\ : NOR2B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => cnt_send_c1);
    
    \data_all[111]\ : DFN1E0C0
      port map(D => N_1602, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[111]_net_1\);
    
    \data_send_buffer_RNO_6[5]\ : AO1
      port map(A => \data_all[101]_net_1\, B => N_1573, C => 
        N_1827, Y => \data_send_buffer_4_1_0_6[5]\);
    
    \data_all_RNO[51]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[51]\, B => N_1856, S => 
        N_392_i_0_o4_N_5_mux, Y => N_194);
    
    \data_all[26]\ : DFN1E0C0
      port map(D => N_297, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[26]_net_1\);
    
    \data_all[23]\ : DFN1E0C0
      port map(D => N_166, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[23]_net_1\);
    
    \data_send_buffer_RNO_22[1]\ : NOR3B
      port map(A => \data_send_buffer_4_1_a2_1[1]\, B => 
        \data_send_buffer_4_1_a2_3[1]\, C => I_14_1, Y => 
        \data_send_buffer_4_1_a2_4[1]\);
    
    \single_recive_0/data_recive_RNI28D9[7]\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => N_398, Y => 
        N_1844);
    
    \cnt_send[21]\ : DFN1E1C0
      port map(D => cnt_send_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[21]_net_1\);
    
    \data_send_buffer_RNO_4[5]\ : OR3
      port map(A => N_1825, B => N_1831, C => N_1824, Y => 
        \data_send_buffer_4_1_0_8[5]\);
    
    \data_all_RNO[135]\ : MX2
      port map(A => d_N_3_mux_1, B => \data_all_RNO_1[135]_net_1\, 
        S => data_all_4_i_i_135_N_7_mux, Y => N_300);
    
    \data_all[101]\ : DFN1E0C0
      port map(D => N_1599, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[101]_net_1\);
    
    \cnt_recive_RNIG1PU4[0]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        un46_data_all_0_a2_1_o2_0_out, C => 
        \data_all_4_i_o2_0_i_o2_0_0_1[111]\, Y => 
        un46_data_all_0_a2_1_o2_0_80_m2_e_1);
    
    \cnt_recive_RNI2SPM6[11]\ : NOR3C
      port map(A => cnt_recive_c14_m6_0_a2_6, B => 
        cnt_recive_c14_m6_0_a2_5, C => cnt_recive_c5, Y => 
        cnt_recive_c14);
    
    \single_recive_0/cnt_delay_c1\ : NOR2B
      port map(A => \cnt_delay[0]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => 
        \single_recive_0/cnt_delay_c1_net_1\);
    
    \data_all_RNO_0[120]\ : AO1D
      port map(A => \data_all[120]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[120]\);
    
    vld_send_RNIF5UH : NOR2
      port map(A => \vld_send\, B => N_398, Y => 
        data_send_buffer_1_sqmuxa);
    
    \data_send_buffer_RNO_24[5]\ : OR2A
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => N_398, Y => data_send_buffer_4_1_0_7_5_m4_0_0);
    
    \data_all[66]\ : DFN1E0C0
      port map(D => N_219, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[66]_net_1\);
    
    \data_all[63]\ : DFN1E0C0
      port map(D => N_208, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[63]_net_1\);
    
    \data_all[12]\ : DFN1E0C0
      port map(D => N_325, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[12]_net_1\);
    
    \cnt_send_RNO_0[27]\ : NOR2B
      port map(A => cnt_send_c25, B => \cnt_send[26]_net_1\, Y
         => cnt_send_c26);
    
    \cnt_send_RNI6VGJ1[1]\ : NOR2A
      port map(A => N_1841, B => \cnt_send[1]_net_1\, Y => N_1858);
    
    \data_send_buffer_RNO_3[2]\ : OR3
      port map(A => \data_send_buffer_4_1_1[2]\, B => 
        \data_send_buffer_4_1_0[2]\, C => 
        \data_send_buffer_4_1_6[2]\, Y => 
        \data_send_buffer_4_1_9[2]\);
    
    \data_send_buffer_RNO_27[7]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_35_0_a4_out, B => 
        \data_all[135]_net_1\, Y => 
        data_send_buffer_4_1_a2_2_out_0);
    
    \cnt_recive_RNO[23]\ : XA1B
      port map(A => cnt_recive_c22, B => \cnt_recive[23]_net_1\, 
        C => N_398, Y => cnt_recive_n23);
    
    \data_all_RNO[39]\ : OA1B
      port map(A => N_1633, B => \data_recive_buffer[7]\, C => 
        \data_all_4_i_0[39]\, Y => N_273);
    
    \single_recive_0/cnt_RNIR11I[1]\ : NOR2A
      port map(A => \single_recive_0/cnt[1]_net_1\, B => 
        \single_recive_0/cnt[8]_net_1\, Y => 
        \single_recive_0/N_69\);
    
    \cnt_send_RNO[13]\ : XA1B
      port map(A => cnt_send_c12, B => \cnt_send[13]_net_1\, C
         => N_398, Y => cnt_send_n13);
    
    \data_all_RNO_1[5]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[5]\, Y => N_1530);
    
    \data_all_RNO[23]\ : MX2
      port map(A => N_1844, B => \data_all_4_i_i_a4_0[23]\, S => 
        N_443, Y => N_166);
    
    \single_recive_0/cnt_RNO[5]\ : XA1
      port map(A => \single_recive_0/N_8\, B => 
        \single_recive_0/cnt[5]_net_1\, C => 
        \single_recive_0/recive_net_1\, Y => 
        \single_recive_0/cnt_4[5]\);
    
    \data_send_buffer_RNO_27[3]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_32_0_a4_out, B => 
        N_1841, C => \data_all[123]_net_1\, Y => N_1798);
    
    send_end_RNI08T6 : CLKINT
      port map(A => \send_end\, Y => N_398);
    
    \single_recive_0/cnt_RNIS21I[7]\ : NOR2A
      port map(A => \single_recive_0/cnt[3]_net_1\, B => 
        \single_recive_0/cnt[7]_net_1\, Y => 
        \single_recive_0/N_68\);
    
    \signal_send_0/end_flag_RNIPFA2Q\ : NOR3
      port map(A => \signal_send_0/un12_cnt_delay\, B => N_398, C
         => un3_end_flag, Y => vld_send_2_sqmuxa);
    
    \data_all_RNO_0[20]\ : NOR2A
      port map(A => \data_all[20]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[20]\);
    
    \data_send_buffer_RNO[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_16[3]\, B => 
        \data_send_buffer_4_1_0_15[3]\, C => 
        \data_send_buffer_4_1_0_17[3]\, Y => 
        \data_send_buffer_4[3]\);
    
    \data_all_RNO[157]\ : AO1
      port map(A => N_1846, B => data_all_4_i_o2_i_o4_159_N_5_mux, 
        C => N_1793, Y => N_1613);
    
    \data_all_RNO[132]\ : MX2B
      port map(A => d_N_3_mux_4, B => \data_all_RNO_1[132]_net_1\, 
        S => data_all_4_i_i_132_N_5_mux, Y => N_292);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
