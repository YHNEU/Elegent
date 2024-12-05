-- Version: v11.9 11.9.0.4

library ieee;
use ieee.std_logic_1164.all;
library proasic3;
use proasic3.all;

entity single_recive is

    port( cnt_recive_0            : in    std_logic;
          data_recive_buffer      : out   std_logic_vector(7 downto 0);
          sys_rest_c              : in    std_logic;
          sys_clk_c               : in    std_logic;
          N_1615                  : out   std_logic;
          N_169                   : out   std_logic;
          N_170                   : out   std_logic;
          N_171                   : out   std_logic;
          N_172                   : out   std_logic;
          N_173                   : out   std_logic;
          N_174                   : out   std_logic;
          N_1052                  : out   std_logic;
          N_1053                  : out   std_logic;
          un5_idle_recive         : in    std_logic;
          cnt_recive_end_0_sqmuxa : out   std_logic;
          N_398                   : in    std_logic;
          idle_recive             : out   std_logic;
          rx_uart_c               : in    std_logic
        );

end single_recive;

architecture DEF_ARCH of single_recive is 

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

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AND3
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

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
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

  component NOR3
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

    signal N_11, \cnt[1]_net_1\, \cnt[0]_net_1\, N_9, 
        \cnt[3]_net_1\, \DWACT_FINC_E[0]\, N_4, \cnt[8]_net_1\, 
        \DWACT_FINC_E[4]\, cnt_recive_end_0_sqmuxa_1, 
        idle_recive_net_1, m85_3, \cnt[4]_net_1\, \cnt[9]_net_1\, 
        m85_2, m12_1, m52_3, m52_2, m23_2, m99_4, m76_2, m99_0, 
        m99_2, \cnt[11]_net_1\, \cnt[2]_net_1\, m42_3, m42_1, 
        m42_2, \cnt[7]_net_1\, m12_5, m12_3, m12_4, m31_5, m23_4, 
        m31_4, m23_7, m23_6, \cnt[6]_net_1\, m23_5, N_14_0, m65_6, 
        N_103_mux, m65_5, m65_2, m65_4, m76_6, m76_5, m76_1, 
        m76_4, m47_3, m47_2, m36_2, m36_1, m36_0, \cnt[5]_net_1\, 
        \cnt[10]_net_1\, m4_0, un1_cnt, N_116_mux, data_recive26, 
        data_recive28, data_recive29, data_recive23, 
        data_recive25, data_recive30, N_104_mux, data_recive24, 
        data_recive27, rx_down_1, \rx_fall\, un2_rx_down, 
        \rx_down\, un2_cnt, \cnt_4[0]\, \recive\, \cnt_4[3]\, I_9, 
        \cnt_4[11]\, I_32, \cnt_4[5]\, I_14, \cnt_4[6]\, I_17, 
        \cnt_4[7]\, I_20, \data_recive_12[0]\, \N_1053\, 
        \data_recive_12[1]\, \N_1052\, \data_recive_12[2]\, 
        \N_174\, \data_recive_12[3]\, \N_173\, 
        \data_recive_12[4]\, \N_172\, \data_recive_12[5]\, 
        \N_171\, \data_recive_12[6]\, \N_170\, 
        \data_recive_12[7]\, \N_169\, \data_recive_buffer[7]\, 
        \data_recive_buffer[4]\, \data_recive_buffer[5]\, 
        \data_recive_buffer[3]\, \data_recive_buffer[6]\, 
        \data_recive_buffer[2]\, \data_recive_buffer[1]\, 
        \data_recive_buffer[0]\, I_5, I_7, I_12, I_23, I_26, I_28, 
        N_2, \DWACT_FINC_E[6]\, \DWACT_FINC_E[2]\, 
        \DWACT_FINC_E[5]\, N_3, \DWACT_FINC_E[3]\, N_5, N_6, N_7, 
        \DWACT_FINC_E[1]\, N_8, N_10, \GND\, \VCC\ : std_logic;

begin 

    data_recive_buffer(7) <= \data_recive_buffer[7]\;
    data_recive_buffer(6) <= \data_recive_buffer[6]\;
    data_recive_buffer(5) <= \data_recive_buffer[5]\;
    data_recive_buffer(4) <= \data_recive_buffer[4]\;
    data_recive_buffer(3) <= \data_recive_buffer[3]\;
    data_recive_buffer(2) <= \data_recive_buffer[2]\;
    data_recive_buffer(1) <= \data_recive_buffer[1]\;
    data_recive_buffer(0) <= \data_recive_buffer[0]\;
    N_169 <= \N_169\;
    N_170 <= \N_170\;
    N_171 <= \N_171\;
    N_172 <= \N_172\;
    N_173 <= \N_173\;
    N_174 <= \N_174\;
    N_1052 <= \N_1052\;
    N_1053 <= \N_1053\;
    idle_recive <= idle_recive_net_1;

    \data_recive_RNI17D9[6]\ : NOR2A
      port map(A => \data_recive_buffer[6]\, B => N_398, Y => 
        \N_170\);
    
    \cnt_RNIPV0I[1]\ : NOR2B
      port map(A => \cnt[1]_net_1\, B => \cnt[6]_net_1\, Y => 
        m36_1);
    
    \cnt_RNIU0FM1[1]\ : NOR3C
      port map(A => m36_1, B => m36_0, C => m36_2, Y => N_116_mux);
    
    idle_recive_RNIGD8Q : NOR3A
      port map(A => rx_uart_c, B => idle_recive_net_1, C => N_398, 
        Y => cnt_recive_end_0_sqmuxa_1);
    
    \cnt[2]\ : DFN1C0
      port map(D => I_7, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[2]_net_1\);
    
    \cnt[8]\ : DFN1C0
      port map(D => I_23, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[8]_net_1\);
    
    \cnt[1]\ : DFN1C0
      port map(D => I_5, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[1]_net_1\);
    
    un7_cnt_1_I_22 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => N_5);
    
    un7_cnt_1_I_16 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[1]\, C
         => \cnt[5]_net_1\, Y => N_7);
    
    \cnt[11]\ : DFN1C0
      port map(D => \cnt_4[11]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[11]_net_1\);
    
    un7_cnt_1_I_30 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[5]\, Y => \DWACT_FINC_E[6]\);
    
    \data_recive_RNO_0[6]\ : NOR3C
      port map(A => m65_5, B => m65_4, C => m65_6, Y => 
        data_recive29);
    
    \data_recive_RNI28D9[7]\ : NOR2A
      port map(A => \data_recive_buffer[7]\, B => N_398, Y => 
        \N_169\);
    
    un7_cnt_1_I_11 : NOR2B
      port map(A => \cnt[3]_net_1\, B => \DWACT_FINC_E[0]\, Y => 
        N_9);
    
    \data_recive_RNO_2[4]\ : NOR3B
      port map(A => \cnt[3]_net_1\, B => m12_3, C => 
        \cnt[9]_net_1\, Y => m12_5);
    
    \cnt_RNO[3]\ : NOR2B
      port map(A => I_9, B => \recive\, Y => \cnt_4[3]\);
    
    \cnt_RNIIADR[10]\ : NOR3B
      port map(A => \cnt[10]_net_1\, B => \cnt[1]_net_1\, C => 
        \cnt[5]_net_1\, Y => N_103_mux);
    
    \cnt_RNIU0FM1[2]\ : NOR3C
      port map(A => m76_2, B => m99_0, C => m99_2, Y => m99_4);
    
    \data_recive_RNO_2[7]\ : NOR3B
      port map(A => \cnt[9]_net_1\, B => m23_4, C => 
        \cnt[3]_net_1\, Y => m31_5);
    
    \data_recive_RNO_1[3]\ : NOR3C
      port map(A => \cnt[4]_net_1\, B => \cnt[9]_net_1\, C => 
        m85_2, Y => m85_3);
    
    \data_recive_RNIT2D9[2]\ : NOR2A
      port map(A => \data_recive_buffer[2]\, B => N_398, Y => 
        \N_174\);
    
    \data_recive[5]\ : DFN1C0
      port map(D => \data_recive_12[5]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[5]\);
    
    \data_recive_RNO[7]\ : MX2
      port map(A => \N_169\, B => rx_uart_c, S => data_recive30, 
        Y => \data_recive_12[7]\);
    
    un7_cnt_1_I_26 : XOR2
      port map(A => N_4, B => \cnt[9]_net_1\, Y => I_26);
    
    \data_recive_RNO_1[4]\ : NOR3A
      port map(A => m12_1, B => \cnt[8]_net_1\, C => 
        \cnt[11]_net_1\, Y => m12_4);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    un7_cnt_1_I_6 : NOR2B
      port map(A => \cnt[1]_net_1\, B => \cnt[0]_net_1\, Y => 
        N_11);
    
    un7_cnt_1_I_7 : XOR2
      port map(A => N_11, B => \cnt[2]_net_1\, Y => I_7);
    
    un7_cnt_1_I_21 : AND2
      port map(A => \cnt[6]_net_1\, B => \cnt[7]_net_1\, Y => 
        \DWACT_FINC_E[3]\);
    
    \data_recive_RNO_2[0]\ : NOR2B
      port map(A => \cnt[0]_net_1\, B => m23_2, Y => m52_2);
    
    \cnt[6]\ : DFN1C0
      port map(D => \cnt_4[6]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[6]_net_1\);
    
    \data_recive_RNO_1[5]\ : NOR2B
      port map(A => m76_1, B => m76_2, Y => m76_5);
    
    \data_recive_RNI06D9[5]\ : NOR2A
      port map(A => \data_recive_buffer[5]\, B => N_398, Y => 
        \N_171\);
    
    \cnt[4]\ : DFN1C0
      port map(D => I_12, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[4]_net_1\);
    
    \data_recive_RNO[2]\ : MX2
      port map(A => \N_174\, B => rx_uart_c, S => data_recive25, 
        Y => \data_recive_12[2]\);
    
    \cnt[9]\ : DFN1C0
      port map(D => I_26, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[9]_net_1\);
    
    un7_cnt_1_I_10 : AND3
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, C => 
        \cnt[2]_net_1\, Y => \DWACT_FINC_E[0]\);
    
    \data_recive_RNO_3[2]\ : NOR2B
      port map(A => \cnt[7]_net_1\, B => \cnt[9]_net_1\, Y => 
        m42_1);
    
    \cnt_RNO[0]\ : NOR2A
      port map(A => \recive\, B => \cnt[0]_net_1\, Y => 
        \cnt_4[0]\);
    
    rx_fall : DFN1C0
      port map(D => rx_uart_c, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \rx_fall\);
    
    \data_recive_RNO_4[5]\ : NOR2A
      port map(A => \cnt[8]_net_1\, B => \cnt[2]_net_1\, Y => 
        m76_1);
    
    un7_cnt_1_I_15 : AND2
      port map(A => \cnt[3]_net_1\, B => \cnt[4]_net_1\, Y => 
        \DWACT_FINC_E[1]\);
    
    \cnt[0]\ : DFN1C0
      port map(D => \cnt_4[0]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[0]_net_1\);
    
    \data_recive_RNO_0[3]\ : NOR3C
      port map(A => m47_2, B => m47_3, C => m85_3, Y => 
        data_recive26);
    
    \data_recive[1]\ : DFN1C0
      port map(D => \data_recive_12[1]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[1]\);
    
    \data_recive_RNO_0[2]\ : NOR3C
      port map(A => m42_3, B => m42_2, C => N_116_mux, Y => 
        data_recive25);
    
    un7_cnt_1_I_9 : XOR2
      port map(A => N_10, B => \cnt[3]_net_1\, Y => I_9);
    
    \data_recive_RNO[1]\ : MX2
      port map(A => \N_1052\, B => rx_uart_c, S => data_recive24, 
        Y => \data_recive_12[1]\);
    
    \cnt_RNI8TCI_0[10]\ : NOR2A
      port map(A => \cnt[5]_net_1\, B => \cnt[10]_net_1\, Y => 
        m36_0);
    
    un7_cnt_1_I_20 : XOR2
      port map(A => N_6, B => \cnt[7]_net_1\, Y => I_20);
    
    \cnt_RNI6RCI[2]\ : NOR2B
      port map(A => \cnt[11]_net_1\, B => \cnt[2]_net_1\, Y => 
        m99_0);
    
    \data_recive_RNO_1[2]\ : NOR3B
      port map(A => \cnt[2]_net_1\, B => m42_1, C => 
        \cnt[11]_net_1\, Y => m42_3);
    
    \data_recive[2]\ : DFN1C0
      port map(D => \data_recive_12[2]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[2]\);
    
    un7_cnt_1_I_25 : NOR2B
      port map(A => \cnt[8]_net_1\, B => \DWACT_FINC_E[4]\, Y => 
        N_4);
    
    \cnt_RNO[6]\ : NOR2B
      port map(A => I_17, B => \recive\, Y => \cnt_4[6]\);
    
    \data_recive_RNO[0]\ : MX2
      port map(A => \N_1053\, B => rx_uart_c, S => data_recive23, 
        Y => \data_recive_12[0]\);
    
    un7_cnt_1_I_14 : XOR2
      port map(A => N_8, B => \cnt[5]_net_1\, Y => I_14);
    
    \data_recive_RNO_0[0]\ : NOR3C
      port map(A => m47_2, B => m47_3, C => m52_3, Y => 
        data_recive23);
    
    GND_i : GND
      port map(Y => \GND\);
    
    \data_recive_RNO_2[3]\ : NOR2A
      port map(A => m12_1, B => \cnt[0]_net_1\, Y => m85_2);
    
    \data_recive_RNO_0[1]\ : NOR3C
      port map(A => m23_6, B => m23_5, C => m23_7, Y => 
        data_recive24);
    
    \data_recive_RNO_4[6]\ : NOR2A
      port map(A => \cnt[9]_net_1\, B => \cnt[7]_net_1\, Y => 
        m65_2);
    
    \data_recive_RNO[5]\ : MX2
      port map(A => \N_171\, B => rx_uart_c, S => data_recive28, 
        Y => \data_recive_12[5]\);
    
    \data_recive_RNO_1[7]\ : NOR3B
      port map(A => \cnt[8]_net_1\, B => m23_2, C => 
        \cnt[11]_net_1\, Y => m31_4);
    
    \data_recive_RNO_3[5]\ : NOR3A
      port map(A => N_103_mux, B => \cnt[4]_net_1\, C => 
        \cnt[3]_net_1\, Y => m76_6);
    
    \data_recive_RNO_1[6]\ : NOR3A
      port map(A => m65_2, B => \cnt[2]_net_1\, C => 
        \cnt[8]_net_1\, Y => m65_5);
    
    un7_cnt_1_I_24 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => \DWACT_FINC_E[4]\);
    
    \idle_recive\ : DFN1C0
      port map(D => \recive\, CLK => sys_clk_c, CLR => sys_rest_c, 
        Q => idle_recive_net_1);
    
    \data_recive_RNIU3D9[3]\ : NOR2A
      port map(A => \data_recive_buffer[3]\, B => N_398, Y => 
        \N_173\);
    
    \cnt[7]\ : DFN1C0
      port map(D => \cnt_4[7]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[7]_net_1\);
    
    un7_cnt_1_I_18 : AND3
      port map(A => \cnt[3]_net_1\, B => \cnt[4]_net_1\, C => 
        \cnt[5]_net_1\, Y => \DWACT_FINC_E[2]\);
    
    rx_down_RNO : NOR2A
      port map(A => \rx_fall\, B => rx_uart_c, Y => rx_down_1);
    
    \data_recive_RNIB3EH[6]\ : OR2B
      port map(A => \data_recive_buffer[6]\, B => cnt_recive_0, Y
         => N_1615);
    
    \cnt_RNI8TCI_1[10]\ : NOR2
      port map(A => \cnt[10]_net_1\, B => \cnt[5]_net_1\, Y => 
        N_14_0);
    
    \cnt[10]\ : DFN1C0
      port map(D => I_28, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[10]_net_1\);
    
    un7_cnt_1_I_17 : XOR2
      port map(A => N_7, B => \cnt[6]_net_1\, Y => I_17);
    
    \data_recive_RNO_3[4]\ : NOR2A
      port map(A => \cnt[0]_net_1\, B => \cnt[4]_net_1\, Y => 
        m12_3);
    
    \cnt_RNO[5]\ : NOR2B
      port map(A => I_14, B => \recive\, Y => \cnt_4[5]\);
    
    \data_recive[4]\ : DFN1C0
      port map(D => \data_recive_12[4]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[4]\);
    
    \cnt_RNI84E41[6]\ : NOR3C
      port map(A => \cnt[8]_net_1\, B => \cnt[6]_net_1\, C => 
        N_14_0, Y => m47_3);
    
    \data_recive_RNO_1[1]\ : NOR3A
      port map(A => m23_2, B => \cnt[8]_net_1\, C => 
        \cnt[6]_net_1\, Y => m23_6);
    
    \data_recive[0]\ : DFN1C0
      port map(D => \data_recive_12[0]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[0]\);
    
    idle_recive_RNIU1K2E : NOR2A
      port map(A => cnt_recive_end_0_sqmuxa_1, B => 
        un5_idle_recive, Y => cnt_recive_end_0_sqmuxa);
    
    rx_down : DFN1C0
      port map(D => rx_down_1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \rx_down\);
    
    \cnt[3]\ : DFN1C0
      port map(D => \cnt_4[3]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[3]_net_1\);
    
    un7_cnt_1_I_32 : XOR2
      port map(A => N_2, B => \cnt[11]_net_1\, Y => I_32);
    
    \data_recive[3]\ : DFN1C0
      port map(D => \data_recive_12[3]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[3]\);
    
    un7_cnt_1_I_28 : XOR2
      port map(A => N_3, B => \cnt[10]_net_1\, Y => I_28);
    
    recive_RNO_0 : NOR2A
      port map(A => \rx_down\, B => idle_recive_net_1, Y => 
        un2_rx_down);
    
    \data_recive_RNO_3[1]\ : NOR3C
      port map(A => \cnt[3]_net_1\, B => \cnt[9]_net_1\, C => 
        m23_4, Y => m23_7);
    
    \cnt_RNI1TD41[1]\ : NOR3A
      port map(A => m4_0, B => \cnt[6]_net_1\, C => 
        \cnt[1]_net_1\, Y => N_104_mux);
    
    \data_recive_RNO[3]\ : MX2
      port map(A => \N_173\, B => rx_uart_c, S => data_recive26, 
        Y => \data_recive_12[3]\);
    
    un7_cnt_1_I_27 : AND3
      port map(A => \DWACT_FINC_E[4]\, B => \cnt[8]_net_1\, C => 
        \cnt[9]_net_1\, Y => N_3);
    
    recive : DFN1E1C0
      port map(D => un1_cnt, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => un2_cnt, Q => \recive\);
    
    \cnt_RNIMS0I[4]\ : NOR2A
      port map(A => \cnt[4]_net_1\, B => \cnt[0]_net_1\, Y => 
        m23_4);
    
    un7_cnt_1_I_13 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \cnt[3]_net_1\, C => 
        \cnt[4]_net_1\, Y => N_8);
    
    \data_recive_RNO_2[5]\ : NOR3
      port map(A => \cnt[6]_net_1\, B => \cnt[11]_net_1\, C => 
        \cnt[0]_net_1\, Y => m76_4);
    
    \data_recive_RNO_2[2]\ : NOR2B
      port map(A => \cnt[4]_net_1\, B => \cnt[0]_net_1\, Y => 
        m42_2);
    
    \data_recive_RNIV4D9[4]\ : NOR2A
      port map(A => \data_recive_buffer[4]\, B => N_398, Y => 
        \N_172\);
    
    \cnt_RNIS1UC3[2]\ : OR2B
      port map(A => m99_4, B => N_116_mux, Y => un1_cnt);
    
    un7_cnt_1_I_5 : XOR2
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, Y => I_5);
    
    \data_recive_RNO_2[1]\ : NOR3B
      port map(A => \cnt[1]_net_1\, B => N_14_0, C => 
        \cnt[11]_net_1\, Y => m23_5);
    
    \cnt_RNIR11I[7]\ : NOR2A
      port map(A => \cnt[2]_net_1\, B => \cnt[7]_net_1\, Y => 
        m23_2);
    
    \data_recive_RNO[6]\ : MX2
      port map(A => \N_170\, B => rx_uart_c, S => data_recive29, 
        Y => \data_recive_12[6]\);
    
    \cnt_RNIT31I[8]\ : NOR2
      port map(A => \cnt[8]_net_1\, B => \cnt[3]_net_1\, Y => 
        m36_2);
    
    \cnt_RNO[11]\ : NOR2B
      port map(A => I_32, B => \recive\, Y => \cnt_4[11]\);
    
    \data_recive_RNIS1D9[1]\ : NOR2A
      port map(A => \data_recive_buffer[1]\, B => N_398, Y => 
        \N_1052\);
    
    un7_cnt_1_I_19 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \cnt[6]_net_1\, Y => N_6);
    
    \cnt_RNI291I[7]\ : NOR2A
      port map(A => \cnt[7]_net_1\, B => \cnt[9]_net_1\, Y => 
        m76_2);
    
    \cnt_RNIMS0I_0[4]\ : NOR2
      port map(A => \cnt[4]_net_1\, B => \cnt[0]_net_1\, Y => 
        m99_2);
    
    \data_recive_RNO_0[5]\ : NOR3C
      port map(A => m76_5, B => m76_4, C => m76_6, Y => 
        data_recive28);
    
    \data_recive[6]\ : DFN1C0
      port map(D => \data_recive_12[6]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[6]\);
    
    \data_recive_RNO_0[7]\ : NOR3C
      port map(A => m31_4, B => N_104_mux, C => m31_5, Y => 
        data_recive30);
    
    un7_cnt_1_I_23 : XOR2
      port map(A => N_5, B => \cnt[8]_net_1\, Y => I_23);
    
    un7_cnt_1_I_31 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \cnt[9]_net_1\, C => 
        \cnt[10]_net_1\, Y => N_2);
    
    \cnt_RNIR11I_0[7]\ : NOR2A
      port map(A => \cnt[7]_net_1\, B => \cnt[2]_net_1\, Y => 
        m12_1);
    
    \data_recive_RNIR0D9[0]\ : NOR2A
      port map(A => \data_recive_buffer[0]\, B => N_398, Y => 
        \N_1053\);
    
    \cnt[5]\ : DFN1C0
      port map(D => \cnt_4[5]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[5]_net_1\);
    
    \cnt_RNIH9DR[1]\ : NOR3
      port map(A => \cnt[1]_net_1\, B => \cnt[11]_net_1\, C => 
        \cnt[3]_net_1\, Y => m47_2);
    
    \data_recive_RNO[4]\ : MX2
      port map(A => \N_172\, B => rx_uart_c, S => data_recive27, 
        Y => \data_recive_12[4]\);
    
    un7_cnt_1_I_29 : AND3
      port map(A => \cnt[6]_net_1\, B => \cnt[7]_net_1\, C => 
        \cnt[8]_net_1\, Y => \DWACT_FINC_E[5]\);
    
    \data_recive_RNO_1[0]\ : NOR3A
      port map(A => m52_2, B => \cnt[4]_net_1\, C => 
        \cnt[9]_net_1\, Y => m52_3);
    
    \data_recive_RNO_3[6]\ : NOR3C
      port map(A => \cnt[4]_net_1\, B => \cnt[3]_net_1\, C => 
        N_103_mux, Y => m65_6);
    
    \data_recive[7]\ : DFN1C0
      port map(D => \data_recive_12[7]\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \data_recive_buffer[7]\);
    
    un7_cnt_1_I_12 : XOR2
      port map(A => N_9, B => \cnt[4]_net_1\, Y => I_12);
    
    \cnt_RNO[7]\ : NOR2B
      port map(A => I_20, B => \recive\, Y => \cnt_4[7]\);
    
    un7_cnt_1_I_8 : AND3
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, C => 
        \cnt[2]_net_1\, Y => N_10);
    
    recive_RNO : OR2A
      port map(A => un1_cnt, B => un2_rx_down, Y => un2_cnt);
    
    \data_recive_RNO_2[6]\ : NOR3B
      port map(A => \cnt[6]_net_1\, B => \cnt[0]_net_1\, C => 
        \cnt[11]_net_1\, Y => m65_4);
    
    \data_recive_RNO_0[4]\ : NOR3C
      port map(A => m12_4, B => N_104_mux, C => m12_5, Y => 
        data_recive27);
    
    \cnt_RNI8TCI[10]\ : NOR2B
      port map(A => \cnt[10]_net_1\, B => \cnt[5]_net_1\, Y => 
        m4_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library proasic3;
use proasic3.all;

entity signal_send is

    port( data_send_buffer  : in    std_logic_vector(7 downto 0);
          cnt_delay_0       : in    std_logic;
          tx_uart_c         : out   std_logic;
          sys_rest_c        : in    std_logic;
          sys_clk_c         : in    std_logic;
          un5_idle_recive   : in    std_logic;
          end_flag_RNI256BD : out   std_logic;
          idle_send         : out   std_logic;
          un12_cnt_delay_0  : out   std_logic;
          vld_send          : in    std_logic
        );

end signal_send;

architecture DEF_ARCH of signal_send is 

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR2A
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

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AX1C
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

  component NOR3B
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

  component AO1
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

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3A
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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component AOI1
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

  component NOR3
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

  component INV
    port( A : in    std_logic := 'U';
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

  component XNOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal N_11, \cnt[1]_net_1\, \cnt[0]_net_1\, N_9, 
        \cnt[3]_net_1\, \DWACT_FINC_E[0]\, N_4, \cnt[8]_net_1\, 
        \DWACT_FINC_E[4]\, vld_send_i, un1_tx_uart27_1_1, 
        tx_uart36, tx_uart37, tx_uart27, tx_uart_11_iv_7, 
        tx_uart_11_iv_1, tx_uart_11_iv_0, tx_uart_11_iv_4, 
        tx_uart30, un1_tx_uart42, tx_uart_11_iv_3, tx_uart33, 
        \data_send_m[0]\, tx_uart_11_iv_2, tx_uart35, 
        \data_send_m[6]\, \parity_check\, \data_send_m[4]\, 
        tx_uart31, \data_send_m[1]\, parity_check_10_iv_4, 
        parity_check_8_i_m, parity_check_5_i_m, 
        parity_check_10_iv_0, parity_check_10_iv_3, 
        parity_check_1, tx_uart28, parity_check_3_i_m, 
        parity_check_10_iv_2, parity_check_7, tx_uart34, 
        parity_check_6_i_m, parity_check_4, parity_check_2_i_m, 
        un1_tx_uart27_8, un1_tx_uart27_5, un1_tx_uart27_6, 
        un1_tx_uart27_7, un1_tx_uart27_3, un1_tx_uart27_1_0, 
        un1_tx_uart27_2, tx_uart29, tx_uart32, \end_flag\, 
        tx_uart28_4, un1_cnt_2, tx_uart28_3, \cnt[7]_net_1\, 
        tx_uart28_1, \cnt[2]_net_1\, \cnt[5]_net_1\, tx_uart30_5, 
        tx_uart27_3, un1_cnt_1, tx_uart30_4, tx_uart30_2, 
        tx_uart27_6, tx_uart30_3, \cnt[9]_net_1\, tx_uart30_1, 
        \cnt[6]_net_1\, tx_uart34_5, \cnt[11]_net_1\, 
        tx_uart34_4_0, tx_uart34_4, tx_uart34_3, tx_uart32_0, 
        \cnt[4]_net_1\, tx_uart29_7, un1_cnt_4, tx_uart29_5, 
        tx_uart29_6, tx_uart29_1, tx_uart29_0, tx_uart29_2, 
        tx_uart29_3, tx_uart35_5, \cnt[10]_net_1\, tx_uart35_4_0, 
        tx_uart35_4, tx_uart35_3, tx_uart27_2, tx_uart27_1, 
        tx_uart27_4, tx_uart31_7, tx_uart31_6, tx_uart31_3, 
        tx_uart31_5, tx_uart31_1, tx_uart33_5, tx_uart33_4, 
        tx_uart33_2, tx_uart33_3_0, tx_uart33_1, tx_uart32_7, 
        tx_uart32_4, tx_uart32_5_0, tx_uart32_6_0, tx_uart32_5, 
        tx_uart32_1, tx_uart37_6, tx_uart37_5, tx_uart37_4, 
        un1_cnt_6, tx_uart37_0, tx_uart36_6, tx_uart36_5, 
        tx_uart36_3, tx_uart36_4, tx_uart36_1, un1_cnt_5, 
        un1_cnt_1_0, un1_cnt_4_0, un1_cnt_0, end_flag_0_sqmuxa_7, 
        end_flag_0_sqmuxa_1, end_flag_0_sqmuxa_0, 
        end_flag_0_sqmuxa_5, end_flag_0_sqmuxa_6, 
        \cnt_end[1]_net_1\, \cnt_end[0]_net_1\, idle_send_net_1, 
        \cnt_end[3]_net_1\, \cnt_end[7]_net_1\, 
        end_flag_0_sqmuxa_3, \cnt_end[8]_net_1\, 
        \cnt_end[6]_net_1\, \cnt_end[4]_net_1\, 
        \cnt_end[2]_net_1\, \cnt_end[9]_net_1\, 
        \cnt_end[5]_net_1\, tx_uart27_9, un1_tx_uart27, 
        parity_check_10_iv, tx_uart_11, \cnt_4[2]\, I_7_0, \send\, 
        \cnt_4[4]\, I_12_0, \cnt_4[6]\, I_17_0, \cnt_4[8]\, 
        I_23_0, \cnt_4[11]\, I_32_0, tx_uart_11_sqmuxa, 
        parity_check_0_sqmuxa, \cnt_4[0]\, parity_check_2, 
        un2_vld_send_down, \vld_send_down\, un2_cnt, 
        end_flag_1_sqmuxa, end_flag_2_sqmuxa, cnt_end_c2, 
        cnt_end_c3, cnt_end_c4, cnt_end_c5, cnt_end_c6, 
        cnt_end_c7, cnt_end_n1, \cnt_end_RNO[0]_net_1\, 
        cnt_end_n2, cnt_end_n3, cnt_end_n4, cnt_end_n5, 
        cnt_end_n6, cnt_end_n7, cnt_end_n8, cnt_end_n9, 
        vld_send_down_1, vld_send_fall_i_0, I_5_0, I_9_0, I_14_0, 
        I_20_0, I_26_0, I_28_0, N_2, \DWACT_FINC_E[6]\, 
        \DWACT_FINC_E[2]\, \DWACT_FINC_E[5]\, N_3, 
        \DWACT_FINC_E[3]\, N_5, N_6, N_7, \DWACT_FINC_E[1]\, N_8, 
        N_10, \GND\, \VCC\ : std_logic;

begin 

    idle_send <= idle_send_net_1;

    un7_cnt_1_I_6 : NOR2B
      port map(A => \cnt[1]_net_1\, B => \cnt[0]_net_1\, Y => 
        N_11);
    
    \cnt_RNIBOVP[4]\ : NOR2B
      port map(A => \cnt[4]_net_1\, B => \cnt[5]_net_1\, Y => 
        tx_uart32_1);
    
    parity_check_RNO_3 : OR3
      port map(A => tx_uart36, B => tx_uart37, C => tx_uart27, Y
         => un1_tx_uart27_1_1);
    
    \cnt_RNO[0]\ : NOR2A
      port map(A => \send\, B => \cnt[0]_net_1\, Y => \cnt_4[0]\);
    
    un7_cnt_1_I_24 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => \DWACT_FINC_E[4]\);
    
    un7_cnt_1_I_16 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[1]\, C
         => \cnt[5]_net_1\, Y => N_7);
    
    \cnt_end[9]\ : DFN1E0C0
      port map(D => cnt_end_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[9]_net_1\);
    
    \cnt_RNISOCR4[1]\ : NOR3C
      port map(A => tx_uart27_2, B => tx_uart27_1, C => 
        tx_uart27_9, Y => tx_uart27);
    
    \cnt_RNIIPDJ1[11]\ : NOR2B
      port map(A => un1_cnt_6, B => tx_uart37_0, Y => tx_uart37_4);
    
    \cnt_end[0]\ : DFN1C0
      port map(D => \cnt_end_RNO[0]_net_1\, CLK => sys_clk_c, CLR
         => sys_rest_c, Q => \cnt_end[0]_net_1\);
    
    \cnt[0]\ : DFN1C0
      port map(D => \cnt_4[0]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[0]_net_1\);
    
    \cnt_end_RNO[2]\ : AX1C
      port map(A => \cnt_end[1]_net_1\, B => \cnt_end[0]_net_1\, 
        C => \cnt_end[2]_net_1\, Y => cnt_end_n2);
    
    \cnt_RNISVMP[10]\ : NOR2
      port map(A => \cnt[10]_net_1\, B => \cnt[9]_net_1\, Y => 
        un1_cnt_6);
    
    \cnt_RNISMVJ1[6]\ : NOR3C
      port map(A => \cnt[3]_net_1\, B => \cnt[6]_net_1\, C => 
        tx_uart32_5, Y => tx_uart37_6);
    
    \cnt_RNIQEDD2[11]\ : NOR3C
      port map(A => un1_cnt_0, B => un1_cnt_6, C => un1_cnt_1, Y
         => un1_cnt_4_0);
    
    un7_cnt_1_I_19 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \cnt[6]_net_1\, Y => N_6);
    
    \cnt_RNIG3JDJ[1]\ : OR3
      port map(A => tx_uart27, B => tx_uart28, C => 
        un1_tx_uart27_3, Y => un1_tx_uart27_7);
    
    vld_send_down_RNO : NOR2B
      port map(A => vld_send_fall_i_0, B => vld_send, Y => 
        vld_send_down_1);
    
    \cnt_end[1]\ : DFN1E0C0
      port map(D => cnt_end_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[1]_net_1\);
    
    \cnt_RNIFSVP[7]\ : NOR2
      port map(A => \cnt[7]_net_1\, B => \cnt[6]_net_1\, Y => 
        tx_uart27_4);
    
    \cnt_end[4]\ : DFN1E0C0
      port map(D => cnt_end_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[4]_net_1\);
    
    un7_cnt_1_I_11 : NOR2B
      port map(A => \cnt[3]_net_1\, B => \DWACT_FINC_E[0]\, Y => 
        N_9);
    
    \cnt_RNI0HMJ1[4]\ : NOR3B
      port map(A => \cnt[5]_net_1\, B => tx_uart32_0, C => 
        \cnt[4]_net_1\, Y => tx_uart34_3);
    
    \cnt_RNIRLVJ1[2]\ : NOR3C
      port map(A => \cnt[2]_net_1\, B => \cnt[9]_net_1\, C => 
        tx_uart31_1, Y => tx_uart31_5);
    
    \cnt_RNIMPMP[11]\ : NOR2A
      port map(A => \cnt[11]_net_1\, B => \cnt[2]_net_1\, Y => 
        tx_uart37_0);
    
    \cnt[3]\ : DFN1C0
      port map(D => I_9_0, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[3]_net_1\);
    
    tx_uart_RNO_3 : NOR2B
      port map(A => data_send_buffer(0), B => tx_uart28, Y => 
        \data_send_m[0]\);
    
    parity_check_RNO_0 : OA1A
      port map(A => un1_tx_uart27, B => un1_tx_uart27_1_1, C => 
        \send\, Y => parity_check_0_sqmuxa);
    
    \cnt_RNIERVP[4]\ : NOR2B
      port map(A => \cnt[4]_net_1\, B => \cnt[8]_net_1\, Y => 
        tx_uart33_1);
    
    tx_uart_RNO_5 : AO1
      port map(A => tx_uart36, B => \parity_check\, C => 
        \data_send_m[4]\, Y => tx_uart_11_iv_1);
    
    \cnt_RNISOCR4_0[1]\ : NOR3C
      port map(A => tx_uart37_5, B => tx_uart37_4, C => 
        tx_uart37_6, Y => tx_uart37);
    
    parity_check_RNO_9 : XA1A
      port map(A => \parity_check\, B => data_send_buffer(7), C
         => tx_uart35, Y => parity_check_8_i_m);
    
    \cnt_RNIOHPM9_0[10]\ : OR2
      port map(A => tx_uart35, B => tx_uart33, Y => 
        un1_tx_uart27_3);
    
    \cnt_RNIG3JDJ[10]\ : OR2
      port map(A => un1_tx_uart27_1_0, B => un1_tx_uart27_2, Y
         => un1_tx_uart27_6);
    
    \cnt_end_RNIQN3S[1]\ : NOR3B
      port map(A => \cnt_end[1]_net_1\, B => \cnt_end[0]_net_1\, 
        C => idle_send_net_1, Y => end_flag_0_sqmuxa_6);
    
    \cnt[4]\ : DFN1C0
      port map(D => \cnt_4[4]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[4]_net_1\);
    
    \cnt_RNO[2]\ : NOR2B
      port map(A => I_7_0, B => \send\, Y => \cnt_4[2]\);
    
    parity_check_RNO_6 : XA1A
      port map(A => \parity_check\, B => data_send_buffer(2), C
         => tx_uart30, Y => parity_check_3_i_m);
    
    \cnt_RNIEPL73[1]\ : NOR2B
      port map(A => tx_uart32_4, B => tx_uart32_5_0, Y => 
        tx_uart32_7);
    
    \cnt_RNIHUVP_1[7]\ : NOR2
      port map(A => \cnt[7]_net_1\, B => \cnt[8]_net_1\, Y => 
        tx_uart32_5);
    
    tx_uart_RNO_9 : NOR2B
      port map(A => data_send_buffer(1), B => tx_uart29, Y => 
        \data_send_m[1]\);
    
    \cnt_RNIE8VJ1_1[1]\ : NOR2B
      port map(A => tx_uart27_3, B => un1_cnt_1, Y => tx_uart30_5);
    
    \cnt[8]\ : DFN1C0
      port map(D => \cnt_4[8]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[8]_net_1\);
    
    \cnt_end_RNIK4MJ[2]\ : NOR2
      port map(A => \cnt_end[4]_net_1\, B => \cnt_end[2]_net_1\, 
        Y => end_flag_0_sqmuxa_1);
    
    vld_send_down_RNIL7KK : NOR2A
      port map(A => \vld_send_down\, B => idle_send_net_1, Y => 
        un2_vld_send_down);
    
    \cnt_RNISOCR4_2[2]\ : NOR2B
      port map(A => tx_uart29_7, B => tx_uart29_6, Y => tx_uart29);
    
    send_RNI25OOL1 : NOR2A
      port map(A => \send\, B => un1_tx_uart27, Y => 
        tx_uart_11_sqmuxa);
    
    \cnt_end_RNI47PE2[2]\ : NOR3C
      port map(A => end_flag_0_sqmuxa_1, B => end_flag_0_sqmuxa_0, 
        C => end_flag_0_sqmuxa_5, Y => end_flag_0_sqmuxa_7);
    
    \cnt_end[6]\ : DFN1E0C0
      port map(D => cnt_end_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[6]_net_1\);
    
    tx_uart_RNO_8 : NOR2B
      port map(A => data_send_buffer(4), B => tx_uart32, Y => 
        \data_send_m[4]\);
    
    \cnt_RNIP9MJ1[10]\ : NOR3B
      port map(A => \cnt[10]_net_1\, B => tx_uart33_2, C => 
        \cnt[0]_net_1\, Y => tx_uart33_4);
    
    \cnt_end_RNISCMJ[9]\ : NOR2A
      port map(A => \cnt_end[9]_net_1\, B => \cnt_end[5]_net_1\, 
        Y => end_flag_0_sqmuxa_0);
    
    \cnt[5]\ : DFN1C0
      port map(D => I_14_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        Q => \cnt[5]_net_1\);
    
    \cnt_RNIUOVJ1[2]\ : NOR3B
      port map(A => \cnt[9]_net_1\, B => tx_uart30_1, C => 
        \cnt[2]_net_1\, Y => tx_uart30_3);
    
    tx_uart_RNO_1 : AO1
      port map(A => data_send_buffer(7), B => tx_uart35, C => 
        \data_send_m[6]\, Y => tx_uart_11_iv_2);
    
    \cnt[1]\ : DFN1C0
      port map(D => I_5_0, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \cnt[1]_net_1\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    parity_check_RNO_12 : XOR2
      port map(A => data_send_buffer(3), B => \parity_check\, Y
         => parity_check_4);
    
    un7_cnt_1_I_12 : XOR2
      port map(A => N_9, B => \cnt[4]_net_1\, Y => I_12_0);
    
    \cnt_RNIHUVP[7]\ : NOR2B
      port map(A => \cnt[7]_net_1\, B => \cnt[8]_net_1\, Y => 
        tx_uart34_4);
    
    \cnt_RNIFSVP[5]\ : NOR2B
      port map(A => \cnt[8]_net_1\, B => \cnt[5]_net_1\, Y => 
        tx_uart29_1);
    
    \cnt[11]\ : DFN1C0
      port map(D => \cnt_4[11]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[11]_net_1\);
    
    \cnt_RNIE8VJ1_0[1]\ : NOR3B
      port map(A => \cnt[0]_net_1\, B => tx_uart30_2, C => 
        \cnt[1]_net_1\, Y => tx_uart32_5_0);
    
    \cnt_RNI7KVP[4]\ : NOR2B
      port map(A => \cnt[1]_net_1\, B => \cnt[4]_net_1\, Y => 
        tx_uart29_2);
    
    \idle_send\ : DFN1E0C0
      port map(D => un1_tx_uart42, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => tx_uart_11_sqmuxa, Q => idle_send_net_1);
    
    \cnt_end_RNIO0HT[2]\ : NOR3C
      port map(A => \cnt_end[1]_net_1\, B => \cnt_end[0]_net_1\, 
        C => \cnt_end[2]_net_1\, Y => cnt_end_c2);
    
    \cnt_end_RNO[8]\ : XOR2
      port map(A => cnt_end_c7, B => \cnt_end[8]_net_1\, Y => 
        cnt_end_n8);
    
    vld_send_down_RNIH01G5 : AO1
      port map(A => un1_cnt_5, B => un1_cnt_4_0, C => 
        un2_vld_send_down, Y => un2_cnt);
    
    \cnt_RNISMVJ1_0[6]\ : NOR3C
      port map(A => \cnt[3]_net_1\, B => \cnt[6]_net_1\, C => 
        tx_uart34_4, Y => tx_uart34_4_0);
    
    un7_cnt_1_I_17 : XOR2
      port map(A => N_7, B => \cnt[6]_net_1\, Y => I_17_0);
    
    un7_cnt_1_I_15 : AND2
      port map(A => \cnt[3]_net_1\, B => \cnt[4]_net_1\, Y => 
        \DWACT_FINC_E[1]\);
    
    \cnt_RNIMTUD2[2]\ : NOR2B
      port map(A => un1_cnt_4, B => tx_uart29_5, Y => tx_uart29_7);
    
    parity_check_RNO_1 : AO1A
      port map(A => parity_check_1, B => tx_uart28, C => 
        parity_check_3_i_m, Y => parity_check_10_iv_3);
    
    \cnt_RNIAHDJ1[3]\ : NOR3A
      port map(A => tx_uart27_6, B => \cnt[3]_net_1\, C => 
        \cnt[0]_net_1\, Y => tx_uart31_7);
    
    \cnt_RNI5IVP[2]\ : NOR2
      port map(A => \cnt[1]_net_1\, B => \cnt[2]_net_1\, Y => 
        tx_uart35_4);
    
    vld_send_fall : DFN1P0
      port map(D => vld_send_i, CLK => sys_clk_c, PRE => 
        sys_rest_c, Q => vld_send_fall_i_0);
    
    \cnt_RNIICVJ1[1]\ : NOR3A
      port map(A => tx_uart27_4, B => \cnt[0]_net_1\, C => 
        \cnt[1]_net_1\, Y => tx_uart27_1);
    
    \cnt_end[8]\ : DFN1E0C0
      port map(D => cnt_end_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[8]_net_1\);
    
    un7_cnt_1_I_8 : AND3
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, C => 
        \cnt[2]_net_1\, Y => N_10);
    
    \cnt_RNICPVP_0[4]\ : NOR2A
      port map(A => \cnt[6]_net_1\, B => \cnt[4]_net_1\, Y => 
        tx_uart31_3);
    
    \cnt_RNI6JVP[1]\ : NOR2A
      port map(A => \cnt[1]_net_1\, B => \cnt[3]_net_1\, Y => 
        tx_uart33_2);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    tx_uart_RNO_0 : AO1
      port map(A => data_send_buffer(5), B => tx_uart33, C => 
        \data_send_m[0]\, Y => tx_uart_11_iv_3);
    
    end_flag_RNO : AOI1
      port map(A => end_flag_0_sqmuxa_7, B => end_flag_0_sqmuxa_6, 
        C => un2_vld_send_down, Y => end_flag_1_sqmuxa);
    
    \cnt_end_RNI23C71[3]\ : NOR2B
      port map(A => cnt_end_c2, B => \cnt_end[3]_net_1\, Y => 
        cnt_end_c3);
    
    parity_check_RNO_11 : AO1A
      port map(A => parity_check_4, B => tx_uart31, C => 
        parity_check_2_i_m, Y => parity_check_10_iv_0);
    
    \cnt_end_RNO[6]\ : XOR2
      port map(A => cnt_end_c5, B => \cnt_end[6]_net_1\, Y => 
        cnt_end_n6);
    
    end_flag : DFN1E0C0
      port map(D => end_flag_1_sqmuxa, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => end_flag_2_sqmuxa, Q => \end_flag\);
    
    \cnt_RNIMGVJ1[2]\ : NOR2B
      port map(A => tx_uart35_4, B => tx_uart34_4, Y => 
        tx_uart36_6);
    
    parity_check_RNO_8 : XA1A
      port map(A => \parity_check\, B => data_send_buffer(5), C
         => tx_uart33, Y => parity_check_6_i_m);
    
    \cnt_end[7]\ : DFN1E0C0
      port map(D => cnt_end_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[7]_net_1\);
    
    un7_cnt_1_I_28 : XOR2
      port map(A => N_3, B => \cnt[10]_net_1\, Y => I_28_0);
    
    send : DFN1E1C0
      port map(D => un2_vld_send_down, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => un2_cnt, Q => \send\);
    
    un7_cnt_1_I_13 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \cnt[3]_net_1\, C => 
        \cnt[4]_net_1\, Y => N_8);
    
    un7_cnt_1_I_26 : XOR2
      port map(A => N_4, B => \cnt[9]_net_1\, Y => I_26_0);
    
    parity_check_RNO_14 : XOR2
      port map(A => data_send_buffer(1), B => \parity_check\, Y
         => parity_check_2);
    
    \cnt_RNIICVJ1[2]\ : NOR2B
      port map(A => tx_uart27_3, B => un1_cnt_4, Y => tx_uart27_2);
    
    parity_check_RNO_5 : XOR2
      port map(A => data_send_buffer(0), B => \parity_check\, Y
         => parity_check_1);
    
    \cnt[10]\ : DFN1C0
      port map(D => I_28_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        Q => \cnt[10]_net_1\);
    
    \cnt_end_RNO[5]\ : XOR2
      port map(A => cnt_end_c4, B => \cnt_end[5]_net_1\, Y => 
        cnt_end_n5);
    
    \cnt_RNIBOVP_0[4]\ : NOR2
      port map(A => \cnt[4]_net_1\, B => \cnt[5]_net_1\, Y => 
        tx_uart27_3);
    
    \cnt_RNI7KVP[2]\ : NOR2
      port map(A => \cnt[2]_net_1\, B => \cnt[3]_net_1\, Y => 
        un1_cnt_4);
    
    \cnt[9]\ : DFN1C0
      port map(D => I_26_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        Q => \cnt[9]_net_1\);
    
    \cnt_RNIERVP[7]\ : NOR2A
      port map(A => \cnt[5]_net_1\, B => \cnt[7]_net_1\, Y => 
        tx_uart31_1);
    
    \cnt_end_RNIKLC71[3]\ : NOR3C
      port map(A => \cnt_end[3]_net_1\, B => \cnt_end[7]_net_1\, 
        C => end_flag_0_sqmuxa_3, Y => end_flag_0_sqmuxa_5);
    
    \cnt_RNIOHPM9[11]\ : OR2
      port map(A => tx_uart37, B => tx_uart32, Y => 
        un1_tx_uart27_1_0);
    
    \cnt_RNIEVMJ1[11]\ : NOR3B
      port map(A => \cnt[9]_net_1\, B => tx_uart30_1, C => 
        \cnt[11]_net_1\, Y => tx_uart35_3);
    
    \cnt_RNISOCR4_0[11]\ : NOR2B
      port map(A => tx_uart32_7, B => tx_uart32_6_0, Y => 
        tx_uart32);
    
    un7_cnt_1_I_10 : AND3
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, C => 
        \cnt[2]_net_1\, Y => \DWACT_FINC_E[0]\);
    
    \cnt_RNIFSVP_0[5]\ : NOR2A
      port map(A => \cnt[8]_net_1\, B => \cnt[5]_net_1\, Y => 
        un1_cnt_1_0);
    
    un7_cnt_1_I_29 : AND3
      port map(A => \cnt[6]_net_1\, B => \cnt[7]_net_1\, C => 
        \cnt[8]_net_1\, Y => \DWACT_FINC_E[5]\);
    
    \cnt_RNIGNDJ1[6]\ : NOR2B
      port map(A => tx_uart30_2, B => tx_uart27_6, Y => 
        tx_uart30_4);
    
    \cnt_RNIRUMP[11]\ : NOR2A
      port map(A => \cnt[11]_net_1\, B => \cnt[7]_net_1\, Y => 
        un1_cnt_0);
    
    \cnt_end_RNO[1]\ : XOR2
      port map(A => \cnt_end[0]_net_1\, B => \cnt_end[1]_net_1\, 
        Y => cnt_end_n1);
    
    un7_cnt_1_I_5 : XOR2
      port map(A => \cnt[0]_net_1\, B => \cnt[1]_net_1\, Y => 
        I_5_0);
    
    \cnt_RNIHBVJ1[3]\ : NOR3C
      port map(A => \cnt[3]_net_1\, B => \cnt[0]_net_1\, C => 
        un1_cnt_2, Y => tx_uart28_4);
    
    \cnt_RNIHBVJ1[4]\ : NOR3B
      port map(A => \cnt[0]_net_1\, B => tx_uart36_3, C => 
        \cnt[4]_net_1\, Y => tx_uart36_5);
    
    un7_cnt_1_I_21 : AND2
      port map(A => \cnt[6]_net_1\, B => \cnt[7]_net_1\, Y => 
        \DWACT_FINC_E[3]\);
    
    end_flag_RNIFP23 : NOR2
      port map(A => \end_flag\, B => cnt_delay_0, Y => 
        un12_cnt_delay_0);
    
    tx_uart_RNO_2 : OR3
      port map(A => tx_uart_11_iv_1, B => tx_uart_11_iv_0, C => 
        tx_uart_11_iv_4, Y => tx_uart_11_iv_7);
    
    \cnt_RNIBOVP[6]\ : NOR2A
      port map(A => \cnt[3]_net_1\, B => \cnt[6]_net_1\, Y => 
        tx_uart30_2);
    
    \cnt_end_RNIKMOE2[7]\ : NOR2B
      port map(A => cnt_end_c6, B => \cnt_end[7]_net_1\, Y => 
        cnt_end_c7);
    
    \cnt_RNIKA6IE[2]\ : OR3
      port map(A => tx_uart29, B => tx_uart31, C => tx_uart30, Y
         => un1_tx_uart27_5);
    
    un7_cnt_1_I_14 : XOR2
      port map(A => N_8, B => \cnt[5]_net_1\, Y => I_14_0);
    
    un7_cnt_1_I_31 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \cnt[9]_net_1\, C => 
        \cnt[10]_net_1\, Y => N_2);
    
    parity_check_RNO_4 : OR3
      port map(A => parity_check_8_i_m, B => parity_check_5_i_m, 
        C => parity_check_10_iv_0, Y => parity_check_10_iv_4);
    
    \cnt_end_RNI6GT42[6]\ : NOR2B
      port map(A => cnt_end_c5, B => \cnt_end[6]_net_1\, Y => 
        cnt_end_c6);
    
    \cnt_RNI4EPV11[2]\ : OR2
      port map(A => un1_tx_uart27_5, B => un1_tx_uart27_6, Y => 
        un1_tx_uart27_8);
    
    \cnt_end_RNIPA2R1[5]\ : NOR2B
      port map(A => cnt_end_c4, B => \cnt_end[5]_net_1\, Y => 
        cnt_end_c5);
    
    \cnt_RNI8LVP[6]\ : NOR2
      port map(A => \cnt[0]_net_1\, B => \cnt[6]_net_1\, Y => 
        tx_uart29_3);
    
    tx_uart_RNO_4 : NOR2B
      port map(A => data_send_buffer(6), B => tx_uart34, Y => 
        \data_send_m[6]\);
    
    \cnt_RNIGTVP[5]\ : NOR2B
      port map(A => \cnt[9]_net_1\, B => \cnt[5]_net_1\, Y => 
        tx_uart36_1);
    
    \cnt_RNIJDVJ1[2]\ : NOR3B
      port map(A => \cnt[7]_net_1\, B => tx_uart28_1, C => 
        \cnt[2]_net_1\, Y => tx_uart28_3);
    
    \cnt_end[5]\ : DFN1E0C0
      port map(D => cnt_end_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[5]_net_1\);
    
    \cnt_RNISOCR4_0[10]\ : NOR3C
      port map(A => tx_uart36_5, B => tx_uart36_4, C => 
        tx_uart36_6, Y => tx_uart36);
    
    \cnt_RNO[11]\ : NOR2B
      port map(A => I_32_0, B => \send\, Y => \cnt_4[11]\);
    
    parity_check_RNO : NOR3
      port map(A => parity_check_10_iv_3, B => 
        parity_check_10_iv_2, C => parity_check_10_iv_4, Y => 
        parity_check_10_iv);
    
    \cnt_end_RNO[3]\ : XOR2
      port map(A => cnt_end_c2, B => \cnt_end[3]_net_1\, Y => 
        cnt_end_n3);
    
    \cnt_RNINHVJ1[8]\ : NOR3B
      port map(A => \cnt[8]_net_1\, B => tx_uart31_3, C => 
        \cnt[1]_net_1\, Y => tx_uart31_6);
    
    \cnt_end_RNO[7]\ : XOR2
      port map(A => cnt_end_c6, B => \cnt_end[7]_net_1\, Y => 
        cnt_end_n7);
    
    tx_uart_RNO_7 : AO1B
      port map(A => data_send_buffer(2), B => tx_uart30, C => 
        un1_tx_uart42, Y => tx_uart_11_iv_4);
    
    tx_uart_RNO_6 : AO1
      port map(A => data_send_buffer(3), B => tx_uart31, C => 
        \data_send_m[1]\, Y => tx_uart_11_iv_0);
    
    \cnt_RNILOMP[10]\ : NOR2B
      port map(A => \cnt[10]_net_1\, B => \cnt[2]_net_1\, Y => 
        tx_uart32_0);
    
    \cnt_RNIIVVP[7]\ : NOR2A
      port map(A => \cnt[7]_net_1\, B => \cnt[9]_net_1\, Y => 
        tx_uart29_0);
    
    \cnt_end[2]\ : DFN1E0C0
      port map(D => cnt_end_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[2]_net_1\);
    
    \cnt_RNISOCR4[10]\ : NOR3C
      port map(A => tx_uart33_4, B => tx_uart33_3_0, C => 
        tx_uart33_5, Y => tx_uart33);
    
    un7_cnt_1_I_9 : XOR2
      port map(A => N_10, B => \cnt[3]_net_1\, Y => I_9_0);
    
    parity_check_RNO_7 : XOR2
      port map(A => data_send_buffer(6), B => \parity_check\, Y
         => parity_check_7);
    
    \cnt_RNILSDJ1[10]\ : NOR3B
      port map(A => \cnt[10]_net_1\, B => tx_uart36_1, C => 
        \cnt[11]_net_1\, Y => tx_uart36_4);
    
    vld_send_fall_RNO : INV
      port map(A => vld_send, Y => vld_send_i);
    
    \cnt_RNI8LVP[5]\ : NOR2
      port map(A => \cnt[1]_net_1\, B => \cnt[5]_net_1\, Y => 
        tx_uart28_1);
    
    \cnt[7]\ : DFN1C0
      port map(D => I_20_0, CLK => sys_clk_c, CLR => sys_rest_c, 
        Q => \cnt[7]_net_1\);
    
    \cnt_RNISOCR4[11]\ : NOR3C
      port map(A => tx_uart34_4_0, B => tx_uart34_3, C => 
        tx_uart34_5, Y => tx_uart34);
    
    \cnt_end_RNO[9]\ : AX1C
      port map(A => \cnt_end[8]_net_1\, B => cnt_end_c7, C => 
        \cnt_end[9]_net_1\, Y => cnt_end_n9);
    
    \cnt_RNIGAVJ1[6]\ : NOR3C
      port map(A => \cnt[3]_net_1\, B => \cnt[6]_net_1\, C => 
        tx_uart35_4, Y => tx_uart35_4_0);
    
    \cnt_RNO[8]\ : NOR2B
      port map(A => I_23_0, B => \send\, Y => \cnt_4[8]\);
    
    \cnt_RNIBOVP_0[6]\ : NOR2
      port map(A => \cnt[6]_net_1\, B => \cnt[3]_net_1\, Y => 
        tx_uart36_3);
    
    un7_cnt_1_I_22 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => N_5);
    
    parity_check_RNO_2 : AO1A
      port map(A => parity_check_7, B => tx_uart34, C => 
        parity_check_6_i_m, Y => parity_check_10_iv_2);
    
    tx_uart : DFN1E0P0
      port map(D => tx_uart_11, CLK => sys_clk_c, PRE => 
        sys_rest_c, E => tx_uart_11_sqmuxa, Q => tx_uart_c);
    
    \cnt_RNISOCR4[2]\ : NOR3C
      port map(A => tx_uart30_4, B => tx_uart30_3, C => 
        tx_uart30_5, Y => tx_uart30);
    
    \cnt_RNI3GVP[1]\ : NOR2B
      port map(A => \cnt[1]_net_1\, B => \cnt[0]_net_1\, Y => 
        un1_cnt_1);
    
    \cnt_RNO[4]\ : NOR2B
      port map(A => I_12_0, B => \send\, Y => \cnt_4[4]\);
    
    \cnt_RNI0HMJ1[11]\ : NOR3A
      port map(A => un1_cnt_1, B => \cnt[9]_net_1\, C => 
        \cnt[11]_net_1\, Y => tx_uart34_5);
    
    \cnt_RNISOCR4_1[10]\ : NOR3C
      port map(A => tx_uart35_4_0, B => tx_uart35_3, C => 
        tx_uart35_5, Y => tx_uart35);
    
    \cnt_RNINHVJ1[2]\ : NOR3B
      port map(A => \cnt[2]_net_1\, B => tx_uart33_1, C => 
        \cnt[5]_net_1\, Y => tx_uart33_3_0);
    
    \cnt_RNIHUVP_0[7]\ : NOR2A
      port map(A => \cnt[7]_net_1\, B => \cnt[8]_net_1\, Y => 
        tx_uart30_1);
    
    un7_cnt_1_I_32 : XOR2
      port map(A => N_2, B => \cnt[11]_net_1\, Y => I_32_0);
    
    un7_cnt_1_I_27 : AND3
      port map(A => \DWACT_FINC_E[4]\, B => \cnt[8]_net_1\, C => 
        \cnt[9]_net_1\, Y => N_3);
    
    \cnt_RNIUEMJ1[10]\ : NOR3B
      port map(A => \cnt[10]_net_1\, B => tx_uart27_3, C => 
        \cnt[0]_net_1\, Y => tx_uart35_5);
    
    un7_cnt_1_I_25 : NOR2B
      port map(A => \cnt[8]_net_1\, B => \DWACT_FINC_E[4]\, Y => 
        N_4);
    
    tx_uart_RNO : OR3
      port map(A => tx_uart_11_iv_3, B => tx_uart_11_iv_2, C => 
        tx_uart_11_iv_7, Y => tx_uart_11);
    
    \cnt_end_RNO[0]\ : XNOR2
      port map(A => \cnt_end[0]_net_1\, B => idle_send_net_1, Y
         => \cnt_end_RNO[0]_net_1\);
    
    \cnt_end_RNISCMJ[6]\ : NOR2
      port map(A => \cnt_end[8]_net_1\, B => \cnt_end[6]_net_1\, 
        Y => end_flag_0_sqmuxa_3);
    
    parity_check : DFN1E0P0
      port map(D => parity_check_10_iv, CLK => sys_clk_c, PRE => 
        sys_rest_c, E => parity_check_0_sqmuxa, Q => 
        \parity_check\);
    
    vld_send_down : DFN1C0
      port map(D => vld_send_down_1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \vld_send_down\);
    
    send_RNIACO65 : NOR2A
      port map(A => \send\, B => tx_uart37, Y => un1_tx_uart42);
    
    end_flag_RNO_0 : AOI1
      port map(A => end_flag_0_sqmuxa_7, B => end_flag_0_sqmuxa_6, 
        C => un2_cnt, Y => end_flag_2_sqmuxa);
    
    \cnt_RNI2AVD2[5]\ : NOR3C
      port map(A => un1_cnt_2, B => un1_cnt_1_0, C => un1_cnt_4, 
        Y => un1_cnt_5);
    
    \cnt_end_RNO[4]\ : XOR2
      port map(A => cnt_end_c3, B => \cnt_end[4]_net_1\, Y => 
        cnt_end_n4);
    
    \cnt[6]\ : DFN1C0
      port map(D => \cnt_4[6]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[6]_net_1\);
    
    \cnt[2]\ : DFN1C0
      port map(D => \cnt_4[2]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt[2]_net_1\);
    
    \cnt_RNIKHCDL1[1]\ : OR2
      port map(A => un1_tx_uart27_8, B => un1_tx_uart27_7, Y => 
        un1_tx_uart27);
    
    \cnt_RNICPVP[4]\ : NOR2B
      port map(A => \cnt[4]_net_1\, B => \cnt[6]_net_1\, Y => 
        un1_cnt_2);
    
    \cnt_RNIE8VJ1[1]\ : NOR3B
      port map(A => \cnt[1]_net_1\, B => tx_uart32_1, C => 
        \cnt[0]_net_1\, Y => tx_uart37_5);
    
    \cnt_RNIOHPM9[10]\ : OR2
      port map(A => tx_uart36, B => tx_uart34, Y => 
        un1_tx_uart27_2);
    
    \cnt_RNI0HMJ1[10]\ : NOR2B
      port map(A => tx_uart32_0, B => tx_uart32_1, Y => 
        tx_uart32_4);
    
    \end_flag_RNI256BD\ : NOR2A
      port map(A => \end_flag\, B => un5_idle_recive, Y => 
        end_flag_RNI256BD);
    
    parity_check_RNO_10 : XA1A
      port map(A => \parity_check\, B => data_send_buffer(4), C
         => tx_uart32, Y => parity_check_5_i_m);
    
    \cnt_RNIEVMJ1_0[11]\ : NOR3A
      port map(A => tx_uart32_5, B => \cnt[9]_net_1\, C => 
        \cnt[11]_net_1\, Y => tx_uart32_6_0);
    
    un7_cnt_1_I_23 : XOR2
      port map(A => N_5, B => \cnt[8]_net_1\, Y => I_23_0);
    
    \cnt_RNISOCR4_1[2]\ : NOR3C
      port map(A => tx_uart31_6, B => tx_uart31_5, C => 
        tx_uart31_7, Y => tx_uart31);
    
    \cnt_RNIF9VJ1[4]\ : NOR2B
      port map(A => tx_uart29_2, B => tx_uart29_3, Y => 
        tx_uart29_5);
    
    \cnt_RNIOVDJ1[8]\ : NOR3A
      port map(A => tx_uart27_6, B => \cnt[8]_net_1\, C => 
        \cnt[9]_net_1\, Y => tx_uart27_9);
    
    un7_cnt_1_I_7 : XOR2
      port map(A => N_11, B => \cnt[2]_net_1\, Y => I_7_0);
    
    \cnt_RNI6RDD2[5]\ : NOR3C
      port map(A => tx_uart29_1, B => tx_uart29_0, C => 
        tx_uart27_6, Y => tx_uart29_6);
    
    un7_cnt_1_I_20 : XOR2
      port map(A => N_6, B => \cnt[7]_net_1\, Y => I_20_0);
    
    \cnt_RNICTMJ1[11]\ : NOR3A
      port map(A => tx_uart27_4, B => \cnt[9]_net_1\, C => 
        \cnt[11]_net_1\, Y => tx_uart33_5);
    
    \cnt_RNISOCR4_0[2]\ : NOR3C
      port map(A => tx_uart28_4, B => tx_uart28_3, C => 
        tx_uart27_9, Y => tx_uart28);
    
    parity_check_RNO_13 : NOR2A
      port map(A => tx_uart29, B => parity_check_2, Y => 
        parity_check_2_i_m);
    
    \cnt_RNI5VDP[10]\ : NOR2
      port map(A => \cnt[11]_net_1\, B => \cnt[10]_net_1\, Y => 
        tx_uart27_6);
    
    \cnt_RNO[6]\ : NOR2B
      port map(A => I_17_0, B => \send\, Y => \cnt_4[6]\);
    
    un7_cnt_1_I_30 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[5]\, Y => \DWACT_FINC_E[6]\);
    
    \cnt_end[3]\ : DFN1E0C0
      port map(D => cnt_end_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => idle_send_net_1, Q => \cnt_end[3]_net_1\);
    
    un7_cnt_1_I_18 : AND3
      port map(A => \cnt[3]_net_1\, B => \cnt[4]_net_1\, C => 
        \cnt[5]_net_1\, Y => \DWACT_FINC_E[2]\);
    
    \cnt_end_RNID67H1[4]\ : NOR2B
      port map(A => cnt_end_c3, B => \cnt_end[4]_net_1\, Y => 
        cnt_end_c4);
    

end DEF_ARCH; 

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

  component NOR2B
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

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3C
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

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3B
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

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component AO1
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

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component AO1A
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

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component single_recive
    port( cnt_recive_0            : in    std_logic := 'U';
          data_recive_buffer      : out   std_logic_vector(7 downto 0);
          sys_rest_c              : in    std_logic := 'U';
          sys_clk_c               : in    std_logic := 'U';
          N_1615                  : out   std_logic;
          N_169                   : out   std_logic;
          N_170                   : out   std_logic;
          N_171                   : out   std_logic;
          N_172                   : out   std_logic;
          N_173                   : out   std_logic;
          N_174                   : out   std_logic;
          N_1052                  : out   std_logic;
          N_1053                  : out   std_logic;
          un5_idle_recive         : in    std_logic := 'U';
          cnt_recive_end_0_sqmuxa : out   std_logic;
          N_398                   : in    std_logic := 'U';
          idle_recive             : out   std_logic;
          rx_uart_c               : in    std_logic := 'U'
        );
  end component;

  component AO1D
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

  component INV
    port( A : in    std_logic := 'U';
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

  component XA1
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

  component XNOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component OAI1
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

  component AOI1
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

  component MX2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CLKBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component signal_send
    port( data_send_buffer  : in    std_logic_vector(7 downto 0) := (others => 'U');
          cnt_delay_0       : in    std_logic := 'U';
          tx_uart_c         : out   std_logic;
          sys_rest_c        : in    std_logic := 'U';
          sys_clk_c         : in    std_logic := 'U';
          un5_idle_recive   : in    std_logic := 'U';
          end_flag_RNI256BD : out   std_logic;
          idle_send         : out   std_logic;
          un12_cnt_delay_0  : out   std_logic;
          vld_send          : in    std_logic := 'U'
        );
  end component;

  component MX2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OUTBUF
    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal end_flag_RNI256BD, I_12_1, I_14_1, I_17_1, I_20_1, 
        I_10, \data_recive_buffer[0]\, \data_recive_buffer[1]\, 
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
        \cnt_flag[0]_net_1\, \cnt_delay[6]_net_1\, 
        \cnt_delay[7]_net_1\, \cnt_delay[4]_net_1\, 
        \cnt_delay[0]_net_1\, \cnt_delay[1]_net_1\, \VCC\, \GND\, 
        \idle_recive_fall\, \idle_send_fall\, idle_recive_fall_3, 
        idle_send_fall_2, idle_recive_down_3, idle_send_down_3, 
        \idle_send_down\, \cnt_recive_end[0]_net_1\, 
        \cnt_recive_end[1]_net_1\, receive_end2lto2, 
        receive_end2lto3, \cnt_recive_end[4]_net_1\, 
        \cnt_recive_end[5]_net_1\, \cnt_recive_end[6]_net_1\, 
        receive_end2lto7, receive_end2lto8, receive_end2lto9, 
        \cnt_delay[2]_net_1\, \cnt_delay[3]_net_1\, 
        \cnt_delay[5]_net_1\, \cnt_delay[8]_net_1\, 
        \data_all[0]_net_1\, \data_all[1]_net_1\, 
        \data_all[2]_net_1\, \data_all[3]_net_1\, 
        \data_all[4]_net_1\, \data_all[5]_net_1\, 
        \data_all[6]_net_1\, \data_all[7]_net_1\, 
        \data_all[8]_net_1\, \data_all[9]_net_1\, 
        \data_all[10]_net_1\, \data_all[11]_net_1\, 
        \data_all[12]_net_1\, \data_all[13]_net_1\, 
        \data_all[14]_net_1\, \data_all[15]_net_1\, 
        \data_all[16]_net_1\, \data_all[17]_net_1\, 
        \data_all[18]_net_1\, \data_all[19]_net_1\, 
        \data_all[20]_net_1\, \data_all[21]_net_1\, 
        \data_all[22]_net_1\, \data_all[23]_net_1\, 
        \data_all[24]_net_1\, \data_all[25]_net_1\, 
        \data_all[26]_net_1\, \data_all[27]_net_1\, 
        \data_all[28]_net_1\, \data_all[29]_net_1\, 
        \data_all[30]_net_1\, \data_all[31]_net_1\, 
        \data_all[32]_net_1\, \data_all[33]_net_1\, 
        \data_all[34]_net_1\, \data_all[35]_net_1\, 
        \data_all[36]_net_1\, \data_all[37]_net_1\, 
        \data_all[38]_net_1\, \data_all[39]_net_1\, 
        \data_all[40]_net_1\, \data_all[41]_net_1\, 
        \data_all[42]_net_1\, \data_all[43]_net_1\, 
        \data_all[44]_net_1\, \data_all[45]_net_1\, 
        \data_all[46]_net_1\, \data_all[47]_net_1\, 
        \data_all[48]_net_1\, \data_all[49]_net_1\, 
        \data_all[50]_net_1\, \data_all[51]_net_1\, 
        \data_all[52]_net_1\, \data_all[53]_net_1\, 
        \data_all[54]_net_1\, \data_all[55]_net_1\, 
        \data_all[56]_net_1\, \data_all[57]_net_1\, 
        \data_all[58]_net_1\, \data_all[59]_net_1\, 
        \data_all[60]_net_1\, \data_all[61]_net_1\, 
        \data_all[62]_net_1\, \data_all[63]_net_1\, 
        \data_all[64]_net_1\, \data_all[65]_net_1\, 
        \data_all[66]_net_1\, \data_all[67]_net_1\, 
        \data_all[68]_net_1\, \data_all[69]_net_1\, 
        \data_all[70]_net_1\, \data_all[71]_net_1\, 
        \data_all[72]_net_1\, \data_all[73]_net_1\, 
        \data_all[74]_net_1\, \data_all[75]_net_1\, 
        \data_all[76]_net_1\, \data_all[77]_net_1\, 
        \data_all[78]_net_1\, \data_all[79]_net_1\, 
        \data_all[80]_net_1\, \data_all[81]_net_1\, 
        \data_all[82]_net_1\, \data_all[83]_net_1\, 
        \data_all[84]_net_1\, \data_all[85]_net_1\, 
        \data_all[86]_net_1\, \data_all[87]_net_1\, 
        \data_all[88]_net_1\, \data_all[89]_net_1\, 
        \data_all[90]_net_1\, \data_all[91]_net_1\, 
        \data_all[92]_net_1\, \data_all[93]_net_1\, 
        \data_all[94]_net_1\, \data_all[95]_net_1\, 
        \data_all[96]_net_1\, \data_all[97]_net_1\, 
        \data_all[98]_net_1\, \data_all[99]_net_1\, 
        \data_all[100]_net_1\, \data_all[101]_net_1\, 
        \data_all[102]_net_1\, \data_all[103]_net_1\, 
        \data_all[104]_net_1\, \data_all[105]_net_1\, 
        \data_all[106]_net_1\, \data_all[107]_net_1\, 
        \data_all[108]_net_1\, \data_all[109]_net_1\, 
        \data_all[110]_net_1\, \data_all[111]_net_1\, 
        \data_all[112]_net_1\, \data_all[113]_net_1\, 
        \data_all[114]_net_1\, \data_all[115]_net_1\, 
        \data_all[116]_net_1\, \data_all[117]_net_1\, 
        \data_all[118]_net_1\, \data_all[119]_net_1\, 
        \data_all[120]_net_1\, \data_all[121]_net_1\, 
        \data_all[122]_net_1\, \data_all[123]_net_1\, 
        \data_all[124]_net_1\, \data_all[125]_net_1\, 
        \data_all[126]_net_1\, \data_all[127]_net_1\, 
        \data_all[128]_net_1\, \data_all[129]_net_1\, 
        \data_all[130]_net_1\, \data_all[131]_net_1\, 
        \data_all[132]_net_1\, \data_all[133]_net_1\, 
        \data_all[134]_net_1\, \data_all[135]_net_1\, 
        \data_all[136]_net_1\, \data_all[137]_net_1\, 
        \data_all[138]_net_1\, \data_all[139]_net_1\, 
        \data_all[140]_net_1\, \data_all[141]_net_1\, 
        \data_all[142]_net_1\, \data_all[143]_net_1\, 
        \data_all[144]_net_1\, \data_all[145]_net_1\, 
        \data_all[146]_net_1\, \data_all[147]_net_1\, 
        \data_all[148]_net_1\, \data_all[149]_net_1\, 
        \data_all[150]_net_1\, \data_all[151]_net_1\, 
        \data_all[152]_net_1\, \data_all[153]_net_1\, 
        \data_all[154]_net_1\, \data_all[155]_net_1\, 
        \data_all[156]_net_1\, \data_all[157]_net_1\, 
        \data_all[158]_net_1\, \data_all[159]_net_1\, 
        \receive_end\, \cnt_flag[1]_net_1\, \cnt_flag_5[0]\, 
        \cnt_flag_5[1]\, cnt_recive_end_n0, cnt_recive_end_n1, 
        cnt_recive_end_n2, cnt_recive_end_n3, cnt_recive_end_n4, 
        cnt_recive_end_n5, cnt_recive_end_n6, cnt_recive_end_n7, 
        cnt_recive_end_n8, cnt_recive_end_n9, N_398, N_413, 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\, 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\, 
        \un20_data_send_buffer_1.N_2\, 
        \un20_data_send_buffer_1.N_3\, 
        \un20_data_send_buffer_1.N_4\, 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_TMP[0]\, 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\, sys_clk_c, 
        sys_rest_c, rx_uart_c, tx_uart_c, receive_end_1_sqmuxa, 
        N_177, cnt_recive_1_sqmuxa, N_175, N_173, N_167, 
        cnt_delay_n2, cnt_delaye, cnt_recive_end_0_sqmuxa, 
        receive_end2lt7, receive_end2lt9, cnt_recive_end_c7, 
        cnt_recive_end_c6, cnt_recive_end_c4, cnt_recive_end_c3, 
        cnt_recive_end_c2, N_1660, N_641, N_1618, N_36, N_1646, 
        N_580, N_579, N_576, N_573, N_574, N_1570, N_1578, N_1581, 
        N_1585, N_984, N_1576, un12_receive_end, cnt_delay_c1, 
        cnt_delay_c2, cnt_delay_c3, cnt_delay_c4, cnt_delay_c5, 
        cnt_delay_c6, N_919, N_1465, cnt_delay_n1, cnt_delay_n3, 
        cnt_delay_n4, cnt_delay_n5, cnt_delay_n6, cnt_delay_n7, 
        cnt_delay_n8, vld_send_0_sqmuxa, vld_send_2_sqmuxa, 
        un12_cnt_delay, un5_idle_recive, un12_cnt_delay_3, 
        un12_cnt_delay_1, un12_receive_endlt7, cnt_flag_0_sqmuxa, 
        cnt_flag_0_sqmuxa_1, cnt_recive_n12, cnt_recive_n11, 
        cnt_recive_n10, cnt_recive_n7, cnt_recive_n4, 
        cnt_recive_n3, cnt_recive_n2, N_19, cnt_recive_c1, 
        cnt_recive_c6, cnt_recive_c2, cnt_recive_c3, 
        cnt_recive_c10, cnt_recive_c11, cnt_recive_c12, 
        cnt_recive_c4, N_431, N_433, cnt_sende, cnt_recive_n15, 
        cnt_send_n27, cnt_send_n26, cnt_send_n20, cnt_send_n15, 
        cnt_send_n9, cnt_send_n8, cnt_send_n3, cnt_send_n2, 
        un12_cnt_send_15, cnt_send_c19, cnt_send_c14, cnt_send_c8, 
        cnt_send_c7, cnt_send_c2, cnt_send_c1, cnt_send_c3, 
        cnt_send_c9, cnt_send_c26, cnt_send_c25, cnt_recive_n14, 
        cnt_recive_n13, cnt_recive_n6, cnt_recive_n5, 
        cnt_send_n13, cnt_send_n6, un5_idle_recive_13, 
        un5_idle_recive_12, un5_idle_recive_10, un5_idle_recive_9, 
        un5_idle_recive_8, un5_idle_recive_6, cnt_recive_c5, 
        cnt_send_c12, cnt_send_c5, N_1593, N_259, 
        \data_all_4[78]\, N_141, N_133, N_129, N_125, N_815_2, 
        N_1615, \un52_data_all[78]\, N_655_2, \data_all_2[78]\, 
        \un46_data_all[80]\, N_434, N_1617, N_1653, N_432, N_1636, 
        N_429, N_847_2_i, N_1628, N_729, N_728, N_721, N_720, 
        N_713, N_712, N_1770_1, N_1770, N_589_i, un12_cnt_send_29, 
        N_591_i, N_590_i, N_592_i, N_594_i, un12_cnt_send_20, 
        un12_cnt_send_19, un12_cnt_send_16, un12_cnt_send_17, 
        un12_cnt_send_11, un12_cnt_send_6, un12_cnt_send_7, 
        un12_cnt_send_4, un12_cnt_send_5, N_450_i, N_587_i, 
        N_452_i, N_1711, N_1711_1, N_859, N_1797, N_1888, N_1865, 
        N_349, N_1540, N_1539, N_347, N_1538, N_1537, N_345, 
        N_1536, N_1535, N_343, N_1534, N_1533, N_341, N_339, 
        N_333, N_1524, N_1523, N_331, N_1522, N_1521, N_329, 
        N_1520, N_1519, N_301, N_299, N_297, N_287, N_285, N_1480, 
        N_1479, N_277, N_878, N_877, N_275, N_1476, N_875, N_273, 
        N_874, N_1475, N_271, N_269, N_267, N_265, N_255, N_253, 
        N_847, N_846, N_251, N_243, N_837, N_836, N_239, N_833, 
        N_832, N_237, N_831, N_830, N_235, N_829, N_828, N_233, 
        N_827, N_826, N_223, N_817, N_816, N_221, N_815, N_814, 
        N_219, N_813, N_812, N_217, N_811, N_810, N_207, N_795, 
        N_794, N_205, N_793, N_792, N_203, N_791, N_790, N_201, 
        N_789, N_788, N_199, N_787, N_786, N_197, N_785, N_784, 
        N_195, N_783, N_782, N_165, N_161, N_749, N_748, N_159, 
        N_747, N_746, N_157, N_745, N_744, N_145, N_733, N_732, 
        N_143, N_731, N_730, N_139, N_727, N_726, N_127, N_113, 
        N_701, N_700, N_111, N_699, N_698, N_109, N_107, N_105, 
        N_693, N_692, N_97, N_685, N_684, N_95, N_683, N_682, 
        N_93, N_681, N_680, N_91, N_679, N_678, N_81, N_669, 
        N_668, N_79, N_667, N_666, N_77, N_665, N_664, N_75, 
        N_663, N_662, N_49, N_631, N_630, N_47, N_629, N_628, 
        N_45, N_627, N_626, N_37, N_619, N_618, N_1668, N_1634, 
        N_1811, N_1807, N_1804, N_1803, N_1800, N_1799, N_1837, 
        N_1827, N_1824, N_1825, N_1822, N_1820, N_1818, N_1819, 
        N_567_3, N_631_3, N_462, N_467, N_470, N_1584, N_1579, 
        N_1574, N_982, N_474, N_1572, N_476, N_1582, N_478, 
        N_1573, N_479, N_1569, N_480, N_1580, N_1469, N_510, 
        N_511, N_512, N_513, N_515, N_516, N_518, N_521, N_524, 
        N_525, N_526, N_527, N_528, N_529, N_530, N_552, N_553, 
        N_554, N_555, N_557, N_558, N_559, N_560, N_563, N_566, 
        N_568, N_569, N_570, N_572, N_582, N_584, N_585, N_586, 
        N_587, N_588, N_590, N_591, N_594, N_602, N_604, N_605, 
        N_609, N_611, N_612, N_613, N_1635, N_457, N_1633, N_395, 
        N_362, N_364, \data_send_buffer_4[0]\, 
        \data_send_buffer_4[1]\, \data_send_buffer_4[2]\, 
        \data_send_buffer_4[4]\, \data_send_buffer_4[7]\, N_1665, 
        N_1855, N_1854, N_1843, N_1848, N_1853, N_1842, N_1838, 
        N_1849, N_1841, N_1858, N_1850, N_1852, N_1847, N_1863, 
        N_1664, N_646, N_645, N_644, N_1663, N_1662, N_1661, 
        N_1659, N_1658, N_1657, N_1656, N_1655, N_615, N_1654, 
        N_1652, N_1651, N_1650, N_1649, N_1648, N_1647, N_440, 
        N_443, N_442, N_1614, N_1796, N_1613, N_1794, N_1612, 
        N_1792, N_1611, N_1790, N_1610, N_1788, N_336, N_1786, 
        N_1609, N_1784, N_1608, N_1782, N_1607, N_1780, N_326, 
        N_1778, N_322, N_1776, N_318, N_1774, N_314, N_1772, 
        N_310, N_306, N_1768, N_302, N_1766, N_300, N_1764, N_298, 
        N_1762, N_296, N_1760, N_292, N_1758, N_288, N_1757, 
        N_286, N_284, N_857, N_280, N_1606, N_1605, N_1604, 
        N_1603, N_1602, N_1747, N_1601, N_1745, N_1600, N_1743, 
        N_262, N_1741, N_258, N_1739, N_1599, N_1737, N_1598, 
        N_1735, N_1597, N_1733, N_163, N_169, N_171, N_240, N_238, 
        N_236, N_234, N_232, N_228, N_224, N_222, N_220, N_1721, 
        N_218, N_1719, N_216, N_1717, N_212, N_1715, N_208, 
        N_1713, N_206, N_204, N_1709, N_202, N_200, N_198, N_196, 
        N_194, N_257, N_261, N_263, N_182, N_1696, N_178, N_1694, 
        N_176, N_1692, N_289, N_291, N_293, N_295, N_166, N_164, 
        N_1596, N_1595, N_1594, N_154, N_150, N_146, N_319, N_323, 
        N_325, N_327, N_138, N_134, \data_send_buffer_4[3]\, 
        \data_send_buffer_4[5]\, N_31, N_1105, N_1104, N_1053, 
        N_1052, N_1051, N_1049, N_1048, N_1047, N_1046, 
        \single_recive_0.N_174\, N_983, N_1860, 
        \single_recive_0.N_170\, \single_recive_0.N_173\, 
        \single_recive_0.N_171\, \single_recive_0.N_172\, 
        \single_recive_0.N_169\, N_458, \data_all_4[28]\, N_861, 
        \un39_data_send_buffer[6]\, \un38_data_send_buffer[6]\, 
        \data_send_buffer_4[6]\, cnt_send_c28, N_981, N_647_3, 
        N_487_3, N_679_3, N_711_3, N_551_3, N_743_3, N_775_3, 
        N_807_3, N_871_3, N_967_4, N_1095_3, N_1466, cnt_send_n1, 
        cnt_send_n28, cnt_send_n29, cnt_send_n30, cnt_send_c24, 
        cnt_send_c23, cnt_send_c22, cnt_send_c21, cnt_send_c17, 
        cnt_send_c16, cnt_send_c13, cnt_send_c11, cnt_send_c10, 
        cnt_send_c4, cnt_recive_c7, cnt_recive_c8, cnt_send_n4, 
        cnt_send_n5, cnt_send_n7, cnt_send_n10, cnt_send_n11, 
        cnt_recive_n8, cnt_recive_n9, cnt_send_n12, cnt_send_n14, 
        cnt_recive_n16, cnt_recive_n17, cnt_recive_n22, 
        cnt_recive_n23, cnt_recive_n24, cnt_recive_c20, 
        cnt_recive_c19, cnt_send_n16, cnt_send_n17, cnt_send_n18, 
        cnt_send_n19, cnt_send_n21, cnt_send_n22, cnt_send_n23, 
        cnt_send_n24, cnt_send_n25, cnt_recive_n21, 
        cnt_recive_c24, N_1043, cnt_recive_n18, cnt_recive_n19, 
        cnt_recive_n20, cnt_recive_n25, cnt_recive_n26, 
        cnt_recive_n27, cnt_recive_n28, cnt_recive_n29, 
        cnt_recive_n30, data_send_buffer_1_sqmuxa, 
        cnt_recive_end_19_0, cnt_recive_end_n6_tz, 
        cnt_recive_end_n2_tz, cnt_send_n7_tz, cnt_send_n16_tz, 
        cnt_send_n19_tz, cnt_send_n21_tz, cnt_send_c13_m6_0_a2_4, 
        cnt_send_c24_m6_0_a2_4, 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, 
        send_end_0_sqmuxa_i_a2_0_19, send_end_0_sqmuxa_i_a2_0_20, 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, 
        \data_send_buffer_4_1_a2_23_0_a2_0[7]\, 
        \data_send_buffer_4_1_a2_40_i_o4_2[7]_net_1\, 
        N_449_i_0_o4_0, \data_all_4_i_o2_i_o4_0[39]\, 
        \data_all_4_i_o2_i_o4_0[95]\, 
        \data_send_buffer_4_1_0_7[3]\, 
        \data_send_buffer_4_1_6[0]\, \data_send_buffer_4_1_7[0]\, 
        \data_send_buffer_4_1_7[2]\, N_1851, 
        data_send_buffer_4_1_a2_23_0_a2_out, 
        un18_data_send_bufferlto31_i_a2tt_N_5_mux, 
        \data_send_buffer_4_1_1_a1_3[0]\, 
        \data_send_buffer_4_1_1_a0_3[0]\, 
        \data_send_buffer_RNO_20[0]_net_1\, 
        data_send_buffer_4_1_6tt_0_N_2, 
        data_send_buffer_4_1_6tt_0_N_3, 
        data_send_buffer_4_1_a2_35_0_a4_stt_7_N_5_mux, 
        N_387_i_0_o2_N_5_mux, N_383_i_0_o4_N_5_mux, 
        data_all_4_i_o2_i_o4_127_N_5_mux, 
        \data_send_buffer_RNO_26[1]_net_1\, 
        \data_send_buffer_4_1_1_a1_3[7]\, 
        \data_send_buffer_4_1_1_a0_3[7]\, 
        data_all_4_i_i_o2_144_N_5_mux, N_397_i_0_o4_N_5_mux, 
        \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]_net_1\, 
        \cnt_recive_RNI57MV5[0]_net_1\, 
        \data_send_buffer_RNO_16[3]_net_1\, 
        \data_send_buffer_4_1_0_11_a1_2[5]\, 
        \data_send_buffer_4_1_0_11_a0_2[5]\, 
        \data_send_buffer_RNO_22[3]_net_1\, 
        \data_send_buffer_RNO_26[5]_net_1\, 
        \data_send_buffer_RNO_25[2]_net_1\, 
        \data_send_buffer_RNO_28[4]_net_1\, 
        \data_send_buffer_RNO_17[5]_net_1\, 
        \data_send_buffer_4_1_5_a0_5[0]\, 
        \data_send_buffer_RNO_11[7]_net_1\, 
        data_all_4_i_88_N_9_mux, \data_all_RNO_1[88]_net_1\, 
        d_N_3_mux, \data_send_buffer_RNO_19[0]_net_1\, 
        \data_send_buffer_RNO_25[3]_net_1\, 
        \data_send_buffer_RNO_3[3]_net_1\, N_1667, 
        \data_send_buffer_RNO_21[7]_net_1\, 
        \data_send_buffer_4_1_5_tz[0]\, receive_end2lto6_1, 
        \data_send_buffer_4_1_0_11_a1_2_0[5]\, 
        \data_send_buffer_4_1_0_11_a0_2_0[5]\, 
        send_end_0_sqmuxa_i_a2_0_19_1, 
        send_end_0_sqmuxa_i_a2_0_19_3, 
        send_end_0_sqmuxa_i_a2_0_19_4, 
        send_end_0_sqmuxa_i_a2_0_19_5, 
        send_end_0_sqmuxa_i_a2_0_20_1, 
        send_end_0_sqmuxa_i_a2_0_20_2, 
        send_end_0_sqmuxa_i_a2_0_20_4, 
        send_end_0_sqmuxa_i_a2_0_20_6, 
        send_end_0_sqmuxa_i_a2_0_20_7, 
        send_end_0_sqmuxa_i_a2_0_20_9, 
        send_end_0_sqmuxa_i_a2_0_20_10, 
        send_end_0_sqmuxa_i_a2_0_20_11, 
        \data_send_buffer_4_1_1_a0_3_0[7]\, 
        \data_send_buffer_4_1_1_a1_3_0[7]\, 
        \data_send_buffer_4_1_1_a0_3_0[0]\, 
        \data_send_buffer_4_1_1_a0_3_1[0]\, 
        \data_send_buffer_4_1_1_a1_3_0[0]\, 
        \data_send_buffer_4_1_1_a1_3_1[0]\, 
        \data_send_buffer_4_1_5_a0_5_2[0]\, 
        \data_send_buffer_4_1_5_a0_5_3[0]\, 
        \data_send_buffer_4_1_5_a1_5_3[0]\, 
        \data_send_buffer_4_1_5_a1_5_4[0]\, 
        cnt_send_c24_m6_0_a2_4_2, cnt_send_c24_m6_0_a2_4_4, 
        cnt_send_c24_m6_0_a2_4_5, cnt_send_c24_m6_0_a2_4_6, 
        cnt_send_c13_m6_0_a2_4_2, cnt_send_c13_m6_0_a2_4_4, 
        cnt_send_c13_m6_0_a2_4_5, cnt_send_c13_m6_0_a2_4_6, 
        send_end_0_sqmuxa_i_a2_m3_e_0, cnt_recive_c10_m6_0_a2_0, 
        cnt_recive_c10_m6_0_a2_1, cnt_recive_c10_m6_0_a2_5, 
        N_1840, \data_all_4_i_o2_0_i_o2_0_11_0[111]\, 
        \data_all_4_i_o2_0_i_o2_0_11_1[111]\, un5_idle_recive_1, 
        un5_idle_recive_3, un5_idle_recive_4_0, un5_idle_recive_5, 
        un5_idle_recive_6_0, un5_idle_recive_7_0, 
        un5_idle_recive_8_0, un5_idle_recive_10_0, 
        un5_idle_recive_15, un5_idle_recive_16, 
        un5_idle_recive_17, un5_idle_recive_18, 
        cnt_send_c10_m5_0_a2_0, cnt_send_c10_m5_0_a2_1, 
        cnt_send_c10_m5_0_a2_4, cnt_send_c10_m5_0_a2_5, 
        \data_send_buffer_4_1_0_12_0[5]\, 
        send_end_0_sqmuxa_i_a2_m3_e_1, 
        \data_all_4_i_o2_0_i_o2_0_12_1[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_3[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_4[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_5[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_6[111]\, 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]_net_1\, 
        \data_all_4_i_o2_0_i_o2_0_12_8[111]_net_1\, 
        cnt_send_c18_m6_0_a2_1, cnt_send_c18_m6_0_a2_2, 
        cnt_send_c18_m6_0_a2_4, cnt_send_c18_m6_0_a2_5, 
        cnt_send_c18_m6_0_a2_7, cnt_send_c26_m5_0_a2_2, 
        cnt_send_c26_m5_0_a2_4, cnt_send_c26_m5_0_a2_6, 
        cnt_send_c15_m3_0_a2_0, cnt_send_c15_m3_0_a2_1, 
        cnt_send_c15_m3_0_a2_4, \data_send_buffer_4_1_19_0[7]\, 
        \data_send_buffer_4_1_4_0[0]\, cnt_delay_37_0, 
        data_send_buffer_4_1_a2_2_7_m2_e_0, 
        data_send_buffer_4_1_a2_2_7_m2_e_2, 
        data_send_buffer_4_1_1_1_m3_0_0, 
        data_send_buffer_4_1_1_1_m3_0_1, un12_cnt_delay_0, 
        un12_cnt_delay_1_0, un12_cnt_delay_4, un12_cnt_delay_5, 
        data_send_buffer_4_1_a2_24_0_a2_7_m2_e_2, 
        data_send_buffer_4_1_a2_19tt_7_m3_e_0, 
        send_end_0_sqmuxa_i_a2_m3_e_0_0, 
        data_all_4_i_o2_i_o4_159_m2_e_1, 
        data_all_4_i_o2_i_o4_159_m2_e_3, 
        data_all_4_i_88_m4_0_a2_1, N_383_i_0_o4_m2_e_0, 
        N_383_i_0_o4_m2_e_1, N_383_i_0_o4_m2_e_3, 
        N_387_i_0_o2_m2_e_1, data_all_4_i_o2_i_o4_127_m2_e_1, 
        data_all_4_i_o2_i_o4_127_m2_e_3, N_391_i_0_o4_m2_e_0, 
        N_391_i_0_o4_m2_e_2, N_381_i_0_o4_m2_e_1, 
        N_381_i_0_o4_m2_e_3, data_all_4_i_i_o2_144_m2_e_0, 
        data_all_4_i_i_o2_144_m2_e_2, N_397_i_0_o4_m2_e_3, 
        data_all_4_i_o2_0_47_m2_e_0, data_all_4_i_o2_0_47_m2_e_2, 
        N_385_i_0_o4_m2_e_3, data_all_4_i_o2_i_o4_111_m2_e_0, 
        data_all_4_i_o2_i_o4_111_m2_e_2, cnt_send_95_1, 
        cnt_send_95_2, cnt_send_95_4, cnt_send_95_5, 
        cnt_send_95_7, cnt_send_95_8, 
        data_all_4_i_i_a4_142_m4_e_0, cnt_send_c28_m6_0_a2_3, 
        cnt_send_c28_m6_0_a2_5, cnt_send_c28_m6_0_a2_6, 
        cnt_send_c11_m6_0_a2_2, cnt_send_c11_m6_0_a2_3, 
        cnt_send_c11_m6_0_a2_4, cnt_send_c11_m6_0_a2_5, 
        cnt_send_c11_m6_0_a2_7, 
        \data_send_buffer_4_1_a2_36_0_a4_7_m2_e_1\, 
        data_send_buffer_4_1_a2_18_2_m2_0_a2_0, 
        data_send_buffer_4_1_a2_18_2_m2_0_a2_3, 
        data_send_buffer_4_1_a2_18_4_m3_0_a2_0, 
        data_send_buffer_4_1_a2_18_4_m3_0_a2_3, 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_0, 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2, 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_3, 
        un5_idle_recive_12_0, data_all_4_i_i_a2_34_m1_e_1, 
        data_send_buffer_4_1_a2_19_1_m2_e_0, 
        data_send_buffer_4_1_a2_19_1_m2_e_1, 
        send_end_0_sqmuxa_i_a4_0, 
        data_send_buffer_4_1_a2_14_2_m1_e_1, 
        data_send_buffer_4_1_a2_14_4_m1_e_0, 
        data_send_buffer_4_1_a2_14_0_m2_0_a2_0, 
        \data_send_buffer_4_1_0_a4_19_1[5]\, 
        \data_send_buffer_4_1_0_0_a1_0[3]\, 
        \data_send_buffer_4_1_0_a1_1[7]\, 
        un38_data_send_buffer_1135_1, 
        data_send_buffer_4_1_a2_2_m2_e_2, 
        data_all_4_i_i_a4_142_m4_0, data_all_4_i_i_a4_143_m4_0, 
        data_send_buffer_4_1_a2_23_0_a4_7_m2_e_1, cnt_send_99_0, 
        \data_send_buffer_4_1_a2_40_i_o4_0[7]\, 
        data_send_buffer_4_1_a2_6_4_m1_0_a2_0, 
        data_send_buffer_4_1_7_0_m2_0_a2_0, 
        \data_send_buffer_4_1_a0_0[3]\, 
        data_send_buffer_4_1_7_4_m2_0_a2_1, 
        \data_send_buffer_4_1_0_a4_14_0[5]\, 
        data_send_buffer_4_1_0_7_5_m2_0_a2_1, 
        \data_send_buffer_4_1_a2_39_0_a4_1[7]\, 
        \data_send_buffer_4_1_0_a0_1[3]\, 
        \data_send_buffer_4_1_0_a0_2[3]\, 
        \data_send_buffer_4_1_0_a0_4[3]\, 
        \data_send_buffer_4_1_a2_1[1]\, 
        \data_send_buffer_4_1_a2_2[1]\, 
        \data_send_buffer_4_1_a2_4[1]\, 
        data_send_buffer_4_1_a2_19_7_m6_0_a2_0, 
        data_send_buffer_4_1_a2_19_7_m6_0_a2_2, 
        \data_all_4_i_i_o4_0[14]\, \data_all_4_i_i_o4_2[14]\, 
        \data_all_4_i_o2_i_o4_1[39]\, 
        \data_all_4_i_o2_i_o4_2[39]\, cnt_recive_c14_m6_0_a2_2, 
        cnt_recive_c14_m6_0_a2_4, cnt_recive_c14_m6_0_a2_5, 
        cnt_recive_c14_m6_0_a2_7, 
        un46_data_all_0_a2_1_a4_80_m2_e_2, send_end_0_sqmuxa_i_0, 
        send_end_0_sqmuxa_i_1, send_end_0_sqmuxa_i_2, 
        send_end_0_sqmuxa_i_4, send_end_0_sqmuxa_i_5, 
        send_end_0_sqmuxa_i_6, send_end_0_sqmuxa_i_7, 
        send_end_0_sqmuxa_i_8, send_end_0_sqmuxa_i_10, 
        send_end_0_sqmuxa_i_11, send_end_0_sqmuxa_i_12, 
        send_end_0_sqmuxa_i_14, send_end_0_sqmuxa_i_17, 
        send_end_0_sqmuxa_i_20, send_end_0_sqmuxa_i_21, 
        send_end_0_sqmuxa_i_22, send_end_0_sqmuxa_i_23, 
        send_end_0_sqmuxa_i_24, send_end_0_sqmuxa_i_25, 
        send_end_0_sqmuxa_i_28, send_end_0_sqmuxa_i_29, 
        \data_send_buffer_4_1_0_a4_0[5]\, cnt_recive_161_0, 
        \data_all_4_i_i_a4_0[14]\, \data_all_4_i_i_a4_0[60]\, 
        \data_all_4_i_i_a4_0[6]\, \data_all_4_i_i_a4_0[7]\, 
        \data_all_4_i_0[122]\, \data_all_4_i_0[123]\, 
        \data_all_4_i_0[32]\, \data_all_4_i_0[4]\, 
        \data_all_4_i_0[5]\, \data_all_4_i_i_a4_0[117]\, 
        \data_all_4_i_i_a4_0[21]\, \data_all_4_i_i_a4_0[17]\, 
        \data_all_4_i_i_a4_0[85]\, \data_all_4_i_i_a4_0[83]\, 
        \data_all_4_i_i_a4_0[116]\, \data_all_4_i_i_a4_0[84]\, 
        \data_all_4_i_i_a4_0[52]\, \data_all_4_i_i_a4_0[23]\, 
        \data_all_4_i_i_a4_0[16]\, \data_all_4_i_i_a4_0[115]\, 
        \data_all_4_i_i_a4_0[18]\, \data_all_4_i_i_a4_0[81]\, 
        \data_all_4_i_i_a4_0[20]\, \data_all_4_i_i_a4_0[82]\, 
        \data_all_4_i_i_a4_0[53]\, \data_all_4_i_i_a4_0[80]\, 
        \data_all_4_0[28]\, \data_all_4_i_0[43]\, 
        \data_all_4_i_0[41]\, \data_all_4_i_0[24]\, 
        \data_all_4_i_0[25]\, \data_all_4_i_0[40]\, 
        \data_all_4_i_0[26]\, \data_all_4_i_0[42]\, 
        \data_all_4_i_0[94]\, \data_all_4_i_0[89]\, 
        \data_send_buffer_4_1_0_0[5]\, 
        \data_send_buffer_4_1_0_1[5]\, 
        \data_send_buffer_4_1_0_4[5]\, 
        \data_send_buffer_4_1_0_14[5]\, 
        \data_send_buffer_4_1_0_17[5]\, \data_send_buffer_4_1[3]\, 
        \data_send_buffer_4_2[3]\, \data_send_buffer_4_3[3]\, 
        \data_send_buffer_4_4[3]\, \data_send_buffer_4_5[3]\, 
        \data_send_buffer_4_6[3]\, \data_send_buffer_4_7[3]\, 
        \data_send_buffer_4_9[3]\, \data_send_buffer_4_11[3]\, 
        \data_send_buffer_4_13[3]\, \data_send_buffer_4_14[3]\, 
        \data_send_buffer_4_15[3]\, \data_send_buffer_4_1_0[0]\, 
        \data_send_buffer_4_1_2[0]\, \data_send_buffer_4_1_4[0]\, 
        \data_send_buffer_4_1_5_0[0]\, 
        \data_send_buffer_4_1_6_0[0]\, 
        \data_send_buffer_4_1_9[0]\, \data_send_buffer_4_1_11[0]\, 
        \data_send_buffer_4_1_12[0]\, 
        \data_send_buffer_4_1_13[0]\, \data_all_4_i_0[113]\, 
        \data_all_4_i_0[50]\, \data_all_4_i_0[112]\, 
        \data_all_4_i_0[48]\, \data_send_buffer_4_1_0[2]\, 
        \data_send_buffer_4_1_1[2]\, \data_send_buffer_4_1_5[2]\, 
        \data_send_buffer_4_1_6[2]\, 
        \data_send_buffer_4_1_7_0[2]\, 
        \data_send_buffer_4_1_8[2]\, \data_send_buffer_4_1_11[2]\, 
        \data_send_buffer_4_1_12[2]\, 
        \data_send_buffer_4_1_14[2]\, 
        \data_send_buffer_4_1_16[2]\, \data_send_buffer_4_1_1[4]\, 
        \data_send_buffer_4_1_2[4]\, \data_send_buffer_4_1_5[4]\, 
        \data_send_buffer_4_1_7_0[4]\, 
        \data_send_buffer_4_1_8[4]\, 
        \data_send_buffer_4_1_9[4]_net_1\, 
        \data_send_buffer_4_1_10[4]\, 
        \data_send_buffer_4_1_11[4]\, 
        \data_send_buffer_4_1_12[4]\, 
        \data_send_buffer_4_1_16[4]\, \data_send_buffer_4_1_0[7]\, 
        \data_send_buffer_4_1_1_0[7]\, 
        \data_send_buffer_4_1_3[7]\, \data_send_buffer_4_1_4[7]\, 
        \data_send_buffer_4_1_5[7]\, \data_send_buffer_4_1_7[7]\, 
        \data_send_buffer_4_1_8[7]\, \data_send_buffer_4_1_10[7]\, 
        \data_send_buffer_4_1_11[7]\, 
        \data_send_buffer_4_1_12[7]\, 
        \data_send_buffer_4_1_13[7]\, 
        \data_send_buffer_4_1_17[7]\, \data_send_buffer_4_1_0[1]\, 
        \data_send_buffer_4_1_2[1]\, \data_send_buffer_4_1_4[1]\, 
        \data_send_buffer_4_1_6[1]\, \data_send_buffer_4_1_7[1]\, 
        \data_send_buffer_4_1_10[1]\, 
        \data_send_buffer_4_1_14[1]\, 
        \data_send_buffer_4_1_15[1]\, data_all_4_i_i_a4_out, 
        data_all_4_i_i_a4_out_0, data_all_4_i_i_a4_out_1, 
        data_all_4_i_i_a4_out_2, cnt_send_c4_out, 
        data_send_buffer_4_1_a2_26_0_a4_out, 
        data_all_4_i_i_a4_out_3, data_all_4_i_i_a4_out_4, 
        data_all_4_i_i_a4_out_5, data_all_4_i_i_a4_out_6, 
        data_send_buffer_4_1_a2_34_0_a4_out, 
        data_send_buffer_4_1_a2_38_0_a4_out, 
        data_send_buffer_4_1_12_out, 
        data_send_buffer_4_1_0_a4_15_out, 
        data_send_buffer_4_1_0_a4_16_out, 
        data_send_buffer_4_1_a2_16_out_1, 
        data_send_buffer_4_1_17_out, 
        data_send_buffer_4_1_17_out_0, 
        data_send_buffer_4_1_a2_38_a2_0_out, 
        data_send_buffer_4_1_a2_16_out_2, 
        data_send_buffer_4_1_a2_21_a2_0_out, 
        data_send_buffer_4_1_a2_13_out, 
        data_send_buffer_4_1_14_s_out, 
        data_send_buffer_4_1_17_out_2, 
        data_send_buffer_4_1_a2_3_out, 
        data_send_buffer_4_1_a2_0_out, idle_recive_down_i_0, 
        N_398_i, N_575, N_1836, N_1826, 
        \data_send_buffer_4_1_0_16[5]\, 
        \data_send_buffer_4_1_0_15[5]\, 
        \data_send_buffer_4_1_16[1]\, 
        data_send_buffer_4_1_a2_24_0_a2_7_m2_e_1, 
        \data_send_buffer_4_1_0_3[5]\, 
        \data_send_buffer_4_1_0_6[5]\, 
        \data_send_buffer_4_1_0_8[5]\, 
        \data_send_buffer_4_1_0_12[5]\, 
        \data_send_buffer_4_1_12[1]\, cnt_recive_c13, 
        cnt_recive_c9, cnt_recive_c23, cnt_recive_c22, 
        cnt_recive_c18, cnt_recive_c17, cnt_recive_c16, 
        cnt_recive_c15, cnt_recive_c25, cnt_recive_c26, 
        cnt_recive_c27, cnt_recive_c28, cnt_recive_n15_tz, 
        cnt_recive_n22_tz, cnt_recive_c17_m6_0_a2_4, 
        cnt_recive_c6_m2_0_a2_2, cnt_recive_c6_m2_0_a2_1, 
        cnt_recive_c17_m6_0_a2_4_4, cnt_recive_c17_m6_0_a2_4_3, 
        cnt_recive_c17_m6_0_a2_4_5, cnt_recive_c19_m6_0_a2_3, 
        cnt_recive_c19_m6_0_a2_3_5, cnt_recive_c19_m6_0_a2_3_4, 
        cnt_recive_c10_m6_0_a2_6, cnt_recive_c24_m6_0_a2_7, 
        cnt_recive_c19_m6_0_a2_3_3, cnt_recive_c17_m6_0_a2_4_2, 
        cnt_recive_c24_m6_0_a2_2, cnt_recive_c24_m6_0_a2_3, 
        cnt_recive_c24_m6_0_a2_6, \send_end\, 
        \idle_recive_down_RNIIQRK\, 
        \data_all_4_i_o2_0_i_o2_0_0[111]\, cnt_sende_0, 
        \cnt_send_0[4]_net_1\, \cnt_send_0[2]_net_1\, 
        \cnt_send_0[1]_net_1\, \cnt_send_0[0]_net_1\ : std_logic;

    for all : single_recive
	Use entity work.single_recive(DEF_ARCH);
    for all : signal_send
	Use entity work.signal_send(DEF_ARCH);
begin 


    \data_send_buffer_RNO_25[5]\ : NOR2B
      port map(A => \data_all[133]_net_1\, B => N_1581, Y => 
        N_1836);
    
    send_end_RNO_40 : XOR2
      port map(A => \cnt_recive[17]_net_1\, B => 
        \cnt_send[17]_net_1\, Y => un12_cnt_send_17);
    
    \data_all_RNO_1[120]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_701);
    
    \cnt_recive_RNI2N7M1[2]\ : NOR2A
      port map(A => N_815_2, B => N_398, Y => N_1770_1);
    
    \data_send_buffer_RNO_19[2]\ : NOR2B
      port map(A => \data_all[138]_net_1\, B => N_1585, Y => 
        N_554);
    
    \data_all_RNO_0[33]\ : NOR2A
      port map(A => N_1633, B => \data_all[33]_net_1\, Y => 
        N_1479);
    
    send_end : DFN1C0
      port map(D => N_413, CLK => sys_clk_c, CLR => sys_rest_c, Q
         => \send_end\);
    
    \cnt_recive_RNISS971[24]\ : NOR3C
      port map(A => \cnt_recive[23]_net_1\, B => 
        \cnt_recive[24]_net_1\, C => \cnt_recive[21]_net_1\, Y
         => cnt_recive_c24_m6_0_a2_2);
    
    \data_all_RNO_0[107]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[107]_net_1\, Y => N_726);
    
    \cnt_recive_RNI57MV5_0[2]\ : OR2A
      port map(A => N_387_i_0_o2_N_5_mux, B => N_429, Y => N_443);
    
    \cnt_recive[14]\ : DFN1E0C0
      port map(D => cnt_recive_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[14]_net_1\);
    
    \cnt_send[8]\ : DFN1E1C0
      port map(D => cnt_send_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[8]_net_1\);
    
    \data_all[19]\ : DFN1E0C0
      port map(D => N_1594, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[19]_net_1\);
    
    \data_all_RNO_1[2]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, Y => N_1536);
    
    \data_all_RNO_0[98]\ : OA1C
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[98]_net_1\, Y => N_744);
    
    \cnt_recive_RNO[2]\ : XA1B
      port map(A => cnt_recive_c1, B => \cnt_recive[2]_net_1\, C
         => N_398, Y => cnt_recive_n2);
    
    send_end_RNO_10 : XO1
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_send[9]_net_1\, C => un12_cnt_send_15, Y => 
        send_end_0_sqmuxa_i_11);
    
    \data_all_RNO_1[158]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => N_1635, 
        C => \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_619);
    
    \cnt_delay_RNIH4I1[5]\ : NOR2B
      port map(A => cnt_delay_c4, B => \cnt_delay[5]_net_1\, Y
         => cnt_delay_c5);
    
    \data_send_buffer_RNO_22[2]\ : NOR2B
      port map(A => \data_all[42]_net_1\, B => N_1582, Y => N_566);
    
    \data_send_buffer_RNO_21[4]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_14_4_m1_e_0, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_1843, Y
         => N_525);
    
    \data_all_RNO[113]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1617, C => 
        \data_all_4_i_0[113]\, Y => N_127);
    
    \cnt_send_0_RNIFIO51[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_23_0_a2_out, B => 
        N_398, Y => N_1842);
    
    \data_send_buffer_RNO_2[6]\ : NOR3B
      port map(A => un38_data_send_buffer_1135_1, B => 
        \data_send_buffer_4_1_a2_2[1]\, C => I_20_1, Y => 
        \un38_data_send_buffer[6]\);
    
    \data_send_buffer_RNO_34[0]\ : NOR2A
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \data_send_buffer_4_1_5_a0_5_2[0]\);
    
    \data_all_4_i_o2_0_i_o2_0_12_7[111]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_4[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_3[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_7[111]_net_1\);
    
    \cnt_recive_end_RNO[2]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n2_tz, Y => cnt_recive_end_n2);
    
    \data_send_buffer_RNO_6[6]\ : NOR3A
      port map(A => \data_all[6]_net_1\, B => I_12_1, C => 
        \cnt_send_0[0]_net_1\, Y => un38_data_send_buffer_1135_1);
    
    \data_send_buffer_RNO_11[5]\ : AO1
      port map(A => \data_all[117]_net_1\, B => N_1584, C => 
        \data_send_buffer_RNO_17[5]_net_1\, Y => 
        \data_send_buffer_4_1_0_14[5]\);
    
    \data_all_RNO_0[72]\ : NOR2
      port map(A => \data_all[72]_net_1\, B => 
        \un46_data_all[80]\, Y => N_794);
    
    \data_send_buffer_RNO_11[6]\ : MX2
      port map(A => N_1651, B => N_1650, S => 
        \cnt_send_0[1]_net_1\, Y => N_679_3);
    
    \cnt_send_RNO[26]\ : XA1B
      port map(A => cnt_send_c25, B => \cnt_send[26]_net_1\, C
         => N_398, Y => cnt_send_n26);
    
    \cnt_send_RNIITGR[4]\ : NOR2B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[4]_net_1\, 
        Y => cnt_send_c18_m6_0_a2_4);
    
    \cnt_recive_end_RNIL5IA1[6]\ : NOR3C
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        cnt_recive_end_c4, C => \cnt_recive_end[6]_net_1\, Y => 
        cnt_recive_end_c6);
    
    \cnt_send[12]\ : DFN1E1C0
      port map(D => cnt_send_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[12]_net_1\);
    
    send_end_RNO_19 : XO1
      port map(A => \cnt_recive[24]_net_1\, B => 
        \cnt_send[24]_net_1\, C => un12_cnt_send_19, Y => 
        send_end_0_sqmuxa_i_1);
    
    \cnt_send_RNI6AHL1[5]\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => \cnt_send[5]_net_1\, 
        C => cnt_send_c13_m6_0_a2_4_4, Y => 
        cnt_send_c13_m6_0_a2_4_6);
    
    \cnt_recive_RNO[20]\ : XA1B
      port map(A => cnt_recive_c19, B => \cnt_recive[20]_net_1\, 
        C => N_398, Y => cnt_recive_n20);
    
    \data_all_RNO[27]\ : NOR2A
      port map(A => N_1657, B => N_398, Y => N_295);
    
    \data_all[35]\ : DFN1E0C0
      port map(D => N_178, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[35]_net_1\);
    
    \cnt_recive_end_RNO_0[9]\ : NOR2B
      port map(A => receive_end2lto8, B => cnt_recive_end_c7, Y
         => cnt_recive_end_19_0);
    
    \data_all_RNO_1[58]\ : NOR2A
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[2]\, Y => N_829);
    
    \data_all_RNO_0[140]\ : NOR3A
      port map(A => \single_recive_0.N_172\, B => N_431, C => 
        N_449_i_0_o4_0, Y => N_1766);
    
    \data_all[155]\ : DFN1E0C0
      port map(D => N_1611, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[155]_net_1\);
    
    \data_all_RNO[12]\ : NOR2
      port map(A => N_645, B => N_398, Y => N_325);
    
    \cnt_recive_RNIPDST_1[2]\ : OR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => N_440);
    
    \data_all_RNO_0[79]\ : NOR2
      port map(A => \data_all[79]_net_1\, B => 
        \un46_data_all[80]\, Y => N_782);
    
    \data_all_RNO[98]\ : NOR3
      port map(A => N_744, B => N_398, C => N_745, Y => N_157);
    
    \cnt_delay[4]\ : DFN1E1C0
      port map(D => cnt_delay_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[4]_net_1\);
    
    send_end_RNO_26 : XOR2
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_recive[26]_net_1\, Y => N_591_i);
    
    \data_all_RNO_0[41]\ : AO1A
      port map(A => \data_all[41]_net_1\, B => N_1628, C => N_398, 
        Y => \data_all_4_i_0[41]\);
    
    \data_all[112]\ : DFN1E0C0
      port map(D => N_129, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[112]_net_1\);
    
    \cnt_recive_RNIVJST[5]\ : NOR2
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => un5_idle_recive_13);
    
    \data_all_RNO_0[15]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[15]_net_1\, S => N_1636, Y => N_1664);
    
    \data_all_RNO[54]\ : NOR3
      port map(A => N_836, B => N_398, C => N_837, Y => N_243);
    
    \data_all_RNO_0[157]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \single_recive_0.N_171\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1794);
    
    \cnt_recive_RNIFB5I2[2]\ : NOR3C
      port map(A => un5_idle_recive_10, B => un5_idle_recive_9, C
         => un5_idle_recive_8_0, Y => un5_idle_recive_15);
    
    send_end_RNO_7 : OR3
      port map(A => send_end_0_sqmuxa_i_12, B => N_450_i, C => 
        send_end_0_sqmuxa_i_20, Y => send_end_0_sqmuxa_i_25);
    
    \data_send_buffer_RNO_26[5]\ : MX2C
      port map(A => \data_all[77]_net_1\, B => 
        \data_all[109]_net_1\, S => \cnt_send_0[2]_net_1\, Y => 
        \data_send_buffer_RNO_26[5]_net_1\);
    
    \data_send_buffer_RNO_25[7]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_16_out_2, B => N_1853, 
        Y => N_479);
    
    \data_all_RNO[26]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_395, C => 
        \data_all_4_i_0[26]\, Y => N_297);
    
    \data_all[102]\ : DFN1E0C0
      port map(D => N_258, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[102]_net_1\);
    
    \data_all_RNO[61]\ : AO1
      port map(A => \data_all[61]_net_1\, B => N_1049, C => 
        N_1709, Y => N_204);
    
    \data_send_buffer_RNO_22[7]\ : NOR2B
      port map(A => \data_all[47]_net_1\, B => N_1582, Y => N_476);
    
    \cnt_recive[27]\ : DFN1E0C0
      port map(D => cnt_recive_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[27]_net_1\);
    
    \data_send_buffer_RNO_2[3]\ : OR3
      port map(A => \data_send_buffer_4_6[3]\, B => N_1803, C => 
        \data_send_buffer_4_11[3]\, Y => 
        \data_send_buffer_4_15[3]\);
    
    \data_send_buffer_RNO_17[1]\ : NOR2B
      port map(A => \data_all[57]_net_1\, B => N_1570, Y => N_580);
    
    \cnt_recive_RNIS39K1[15]\ : NOR3C
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_recive[15]_net_1\, C => cnt_recive_c17_m6_0_a2_4_2, 
        Y => cnt_recive_c17_m6_0_a2_4_5);
    
    \data_all_RNO[90]\ : NOR2
      port map(A => N_1660, B => N_398, Y => N_173);
    
    \cnt_delay[0]\ : DFN1E1C0
      port map(D => N_1465, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_delaye, Q => \cnt_delay[0]_net_1\);
    
    \data_all_RNO_1[137]\ : NOR3
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_recive_buffer[1]\, Y => N_667);
    
    \data_all_RNO[130]\ : NOR3
      port map(A => N_680, B => N_398, C => N_681, Y => N_93);
    
    \data_all_RNO[106]\ : NOR3
      port map(A => N_728, B => N_398, C => N_729, Y => N_141);
    
    \data_all[87]\ : DFN1E0C0
      port map(D => N_240, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[87]_net_1\);
    
    single_recive_0 : single_recive
      port map(cnt_recive_0 => \cnt_recive[0]_net_1\, 
        data_recive_buffer(7) => \data_recive_buffer[7]\, 
        data_recive_buffer(6) => \data_recive_buffer[6]\, 
        data_recive_buffer(5) => \data_recive_buffer[5]\, 
        data_recive_buffer(4) => \data_recive_buffer[4]\, 
        data_recive_buffer(3) => \data_recive_buffer[3]\, 
        data_recive_buffer(2) => \data_recive_buffer[2]\, 
        data_recive_buffer(1) => \data_recive_buffer[1]\, 
        data_recive_buffer(0) => \data_recive_buffer[0]\, 
        sys_rest_c => sys_rest_c, sys_clk_c => sys_clk_c, N_1615
         => N_1615, N_169 => \single_recive_0.N_169\, N_170 => 
        \single_recive_0.N_170\, N_171 => \single_recive_0.N_171\, 
        N_172 => \single_recive_0.N_172\, N_173 => 
        \single_recive_0.N_173\, N_174 => \single_recive_0.N_174\, 
        N_1052 => N_1052, N_1053 => N_1053, un5_idle_recive => 
        un5_idle_recive, cnt_recive_end_0_sqmuxa => 
        cnt_recive_end_0_sqmuxa, N_398 => N_398, idle_recive => 
        idle_recive, rx_uart_c => rx_uart_c);
    
    \cnt_send_RNIS7HR[7]\ : NOR2B
      port map(A => \cnt_send[9]_net_1\, B => \cnt_send[7]_net_1\, 
        Y => cnt_send_c11_m6_0_a2_2);
    
    \data_send_buffer_RNO_11[1]\ : OR3
      port map(A => \data_send_buffer_4_1_2[1]\, B => N_575, C
         => N_586, Y => \data_send_buffer_4_1_12[1]\);
    
    \data_send_buffer_RNO_22[3]\ : MX2C
      port map(A => \data_all[75]_net_1\, B => 
        \data_all[107]_net_1\, S => \cnt_send_0[2]_net_1\, Y => 
        \data_send_buffer_RNO_22[3]_net_1\);
    
    \data_all_RNO[73]\ : NOR3
      port map(A => N_792, B => N_398, C => N_793, Y => N_205);
    
    \data_send_buffer_RNO_13[5]\ : NOR3B
      port map(A => N_1634, B => \data_send_buffer_4_1_0_a4_0[5]\, 
        C => N_1646, Y => N_1668);
    
    \data_all_RNO_0[22]\ : NOR2A
      port map(A => \data_all[22]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_0);
    
    \cnt_recive_RNIPDST_3[2]\ : NOR2B
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => cnt_recive_c6_m2_0_a2_1);
    
    \data_all_RNO_1[33]\ : NOR2
      port map(A => N_1633, B => \data_recive_buffer[1]\, Y => 
        N_1480);
    
    \data_all_RNO[0]\ : NOR3
      port map(A => N_1539, B => N_398, C => N_1540, Y => N_349);
    
    \cnt_send_RNIGRGR[4]\ : NOR2B
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \data_send_buffer_4_1_1_a1_3_1[0]\);
    
    \cnt_recive_RNO[8]\ : XA1B
      port map(A => cnt_recive_c7, B => \cnt_recive[8]_net_1\, C
         => N_398, Y => cnt_recive_n8);
    
    \data_all_RNO_0[138]\ : OA1B
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_all[138]_net_1\, Y => N_664);
    
    \data_all_RNO_1[0]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_1540);
    
    \data_all_RNO_0[123]\ : AO1D
      port map(A => \data_all[123]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[123]\);
    
    \data_all_RNO_0[63]\ : NOR2B
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \single_recive_0.N_169\, Y => N_1713);
    
    receive_end_RNIPMBC : AO1
      port map(A => un12_receive_end, B => \receive_end\, C => 
        N_398, Y => cnt_delaye);
    
    \data_all[92]\ : DFN1E0C0
      port map(D => N_169, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[92]_net_1\);
    
    \data_send_buffer_RNO_6[4]\ : NOR2A
      port map(A => \data_all[4]_net_1\, B => N_36, Y => N_530);
    
    \data_all_RNO_0[114]\ : NOR2A
      port map(A => N_1617, B => \data_all[114]_net_1\, Y => 
        N_712);
    
    \data_all_4_i_o2_0_i_o2_0_7_RNO_1[111]\ : OR2
      port map(A => \cnt_recive[25]_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_1[111]\);
    
    \data_send_buffer_RNO_19[1]\ : AO1B
      port map(A => data_send_buffer_4_1_a2_19_1_m2_e_1, B => 
        N_1865, C => \data_send_buffer_RNO_26[1]_net_1\, Y => 
        \data_send_buffer_4_1_0[1]\);
    
    \cnt_send_RNO[17]\ : XA1B
      port map(A => cnt_send_c16, B => \cnt_send[17]_net_1\, C
         => N_398, Y => cnt_send_n17);
    
    \data_all_RNO[83]\ : MX2
      port map(A => \single_recive_0.N_173\, B => 
        \data_all_4_i_i_a4_0[83]\, S => N_442, Y => N_232);
    
    \data_all_RNO[118]\ : MX2
      port map(A => \single_recive_0.N_170\, B => 
        data_all_4_i_i_a4_out_3, S => N_1617, Y => N_1606);
    
    \data_all[146]\ : DFN1E0C0
      port map(D => N_326, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[146]_net_1\);
    
    \cnt_recive_RNO_0[19]\ : NOR2B
      port map(A => cnt_recive_c17, B => \cnt_recive[18]_net_1\, 
        Y => cnt_recive_c18);
    
    \data_all[47]\ : DFN1E0C0
      port map(D => N_257, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[47]_net_1\);
    
    \data_all_RNO_0[112]\ : AO1A
      port map(A => \data_all[112]_net_1\, B => N_1617, C => 
        N_398, Y => \data_all_4_i_0[112]\);
    
    \data_all_RNO_0[29]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[29]_net_1\, S => N_395, Y => N_1658);
    
    \data_send_buffer_RNO_10[5]\ : NOR2B
      port map(A => \data_all[53]_net_1\, B => N_1574, Y => 
        N_1825);
    
    \cnt_recive_RNIU9DK1[25]\ : NOR3A
      port map(A => un5_idle_recive_3, B => 
        \cnt_recive[25]_net_1\, C => \cnt_recive[26]_net_1\, Y
         => un5_idle_recive_5);
    
    \cnt_recive_RNIRFST[3]\ : NOR2
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => data_all_4_i_o2_0_47_m2_e_0);
    
    send_end_RNO_25 : XOR2
      port map(A => \cnt_recive[5]_net_1\, B => 
        \cnt_send[5]_net_1\, Y => un12_cnt_send_5);
    
    \cnt_recive_end[0]\ : DFN1C0
      port map(D => cnt_recive_end_n0, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[0]_net_1\);
    
    idle_recive_fall : DFN1C0
      port map(D => idle_recive_fall_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_recive_fall\);
    
    receive_end_RNO : INV
      port map(A => N_398, Y => N_398_i);
    
    \cnt_send_RNI34991[0]\ : OR2
      port map(A => I_12_1, B => \cnt_send[0]_net_1\, Y => 
        \data_send_buffer_4_1_a2_40_i_o4_0[7]\);
    
    \cnt_recive_RNI7T6Q[27]\ : NOR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => un5_idle_recive_1);
    
    \data_all_RNO_0[100]\ : NOR3B
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_172\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1735);
    
    \data_all_RNO[95]\ : NOR2
      port map(A => N_1663, B => N_398, Y => N_163);
    
    \cnt_send_RNO[3]\ : XA1B
      port map(A => cnt_send_c2, B => \cnt_send[3]_net_1\, C => 
        N_398, Y => cnt_send_n3);
    
    \cnt_send_RNO_0[13]\ : NOR2B
      port map(A => cnt_send_c11, B => \cnt_send[12]_net_1\, Y
         => cnt_send_c12);
    
    \data_send_buffer_RNO_29[4]\ : NOR3A
      port map(A => \data_all[4]_net_1\, B => \cnt_send[4]_net_1\, 
        C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_18_4_m3_0_a2_0);
    
    \data_send_buffer_RNO_16[0]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_18_0_m2_0_a2_3, B => 
        N_1888, Y => N_613);
    
    \cnt_recive_RNO[22]\ : NOR2A
      port map(A => cnt_recive_n22_tz, B => N_398, Y => 
        cnt_recive_n22);
    
    send_end_RNO_5 : OR3
      port map(A => send_end_0_sqmuxa_i_6, B => 
        send_end_0_sqmuxa_i_5, C => N_587_i, Y => 
        send_end_0_sqmuxa_i_22);
    
    \data_send_buffer_RNO_0[6]\ : MX2
      port map(A => \un39_data_send_buffer[6]\, B => 
        \un38_data_send_buffer[6]\, S => N_31, Y => N_861);
    
    \data_all_RNO_1[129]\ : NOR3A
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[1]\, Y => N_683);
    
    \data_all[52]\ : DFN1E0C0
      port map(D => N_196, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[52]_net_1\);
    
    send_end_RNO_4 : OR3
      port map(A => send_end_0_sqmuxa_i_8, B => 
        send_end_0_sqmuxa_i_7, C => send_end_0_sqmuxa_i_17, Y => 
        send_end_0_sqmuxa_i_23);
    
    \data_all_RNO[77]\ : NOR3
      port map(A => N_784, B => N_398, C => N_785, Y => N_197);
    
    \data_all[99]\ : DFN1E0C0
      port map(D => N_1597, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[99]_net_1\);
    
    \cnt_recive_end[7]\ : DFN1C0
      port map(D => cnt_recive_end_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto7);
    
    \cnt_recive[23]\ : DFN1E0C0
      port map(D => cnt_recive_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[23]_net_1\);
    
    \data_all_RNO[156]\ : AO1
      port map(A => \data_all[156]_net_1\, B => N_1047, C => 
        N_1792, Y => N_1612);
    
    send_end_RNO_12 : XO1
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_send[22]_net_1\, C => un12_cnt_send_5, Y => 
        send_end_0_sqmuxa_i_8);
    
    \cnt_recive_RNI3IQC1[0]\ : NOR2A
      port map(A => \cnt_recive[0]_net_1\, B => N_440, Y => 
        N_383_i_0_o4_m2_e_1);
    
    \cnt_recive_RNI3IQC1_3[1]\ : NOR3
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[0]_net_1\, Y => 
        N_381_i_0_o4_m2_e_1);
    
    \data_send_buffer_RNO_9[4]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_0_out, B => N_1863, Y
         => N_511);
    
    \cnt_recive_RNIJBT34[0]\ : OR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_431);
    
    send_end_RNO_1 : OR3
      port map(A => send_end_0_sqmuxa_i_22, B => 
        send_end_0_sqmuxa_i_21, C => send_end_0_sqmuxa_i_25, Y
         => send_end_0_sqmuxa_i_28);
    
    \data_all_RNO_1[76]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[4]\, Y => N_787);
    
    \data_all_RNO[87]\ : MX2
      port map(A => \single_recive_0.N_169\, B => 
        data_all_4_i_i_a4_out_4, S => N_442, Y => N_240);
    
    \cnt_send_RNINAEF1[4]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_0, B => 
        send_end_0_sqmuxa_i_a2_m3_e_1, Y => 
        send_end_0_sqmuxa_i_a2_m3_e_0_0);
    
    \data_all_RNO[109]\ : AO1
      port map(A => \data_all[109]_net_1\, B => N_1105, C => 
        N_1745, Y => N_1601);
    
    \data_all_RNO[76]\ : NOR3
      port map(A => N_786, B => N_398, C => N_787, Y => N_199);
    
    \cnt_send_0_RNIKDP01[4]\ : NOR3B
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_4_1_a2_39_0_a4_1[7]\);
    
    \cnt_recive_end_RNO[8]\ : XA1
      port map(A => cnt_recive_end_c7, B => receive_end2lto8, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n8);
    
    \cnt_delay_RNO_0[8]\ : NOR2A
      port map(A => \cnt_delay[7]_net_1\, B => N_398, Y => 
        cnt_delay_37_0);
    
    \data_all[110]\ : DFN1E0C0
      port map(D => N_133, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[110]_net_1\);
    
    \data_send_buffer_4_1_a2_13[4]\ : AND2
      port map(A => \data_send_buffer_4_1_a2_36_0_a4_7_m2_e_1\, B
         => data_send_buffer_4_1_a2_13_out, Y => N_524);
    
    \data_all_RNO_0[143]\ : NOR2A
      port map(A => \data_all[143]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_143_m4_0);
    
    \data_send_buffer_RNO_22[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_18_4_m3_0_a2_3, B => 
        N_1888, Y => N_529);
    
    \data_all_RNO[64]\ : NOR3
      port map(A => N_816, B => N_398, C => N_817, Y => N_223);
    
    \cnt_recive_RNI1L4Q[15]\ : NOR2
      port map(A => \cnt_recive[15]_net_1\, B => 
        \cnt_recive[16]_net_1\, Y => un5_idle_recive_8);
    
    \data_all[59]\ : DFN1E0C0
      port map(D => N_233, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[59]_net_1\);
    
    \data_all_RNO_0[150]\ : NOR2B
      port map(A => \single_recive_0.N_170\, B => 
        data_all_4_i_i_o2_144_N_5_mux, Y => N_1786);
    
    \data_all[100]\ : DFN1E0C0
      port map(D => N_1598, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[100]_net_1\);
    
    \data_all_RNO[145]\ : AO1
      port map(A => \data_all[145]_net_1\, B => N_1860, C => 
        N_1776, Y => N_322);
    
    un20_data_send_buffer_1_I_17 : XNOR2
      port map(A => \cnt_send[3]_net_1\, B => 
        \un20_data_send_buffer_1.N_3\, Y => I_17_1);
    
    \cnt_send_RNIOKSL4[2]\ : NOR2B
      port map(A => cnt_send_c11_m6_0_a2_7, B => cnt_send_c2, Y
         => cnt_send_c11);
    
    \cnt_recive_RNI5BLS5_5[1]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_1, B => N_434, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_381_i_0_o4_m2_e_3);
    
    \cnt_send_0[0]\ : DFN1E1C0
      port map(D => N_1466, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send_0[0]_net_1\);
    
    \cnt_send_RNINLAP6[22]\ : NOR2B
      port map(A => cnt_send_c21, B => \cnt_send[22]_net_1\, Y
         => cnt_send_c22);
    
    send_end_RNO_30 : XOR2
      port map(A => \cnt_recive[11]_net_1\, B => 
        \cnt_send[11]_net_1\, Y => un12_cnt_send_11);
    
    \data_all_RNO[86]\ : MX2
      port map(A => \single_recive_0.N_170\, B => 
        data_all_4_i_i_a4_out_1, S => N_442, Y => N_238);
    
    \data_all_4_i_o2_0_i_o2_0_12_7_RNO[111]\ : OR3A
      port map(A => un5_idle_recive_8, B => 
        \cnt_recive[22]_net_1\, C => \cnt_recive[21]_net_1\, Y
         => \data_all_4_i_o2_0_i_o2_0_12_4[111]\);
    
    \data_all_RNO_0[75]\ : NOR2
      port map(A => \data_all[75]_net_1\, B => 
        \un46_data_all[80]\, Y => N_788);
    
    \cnt_delay_RNO[8]\ : AX1C
      port map(A => cnt_delay_c6, B => cnt_delay_37_0, C => N_919, 
        Y => cnt_delay_n8);
    
    \data_send_buffer_RNO_23[6]\ : MX2
      port map(A => \data_all[118]_net_1\, B => 
        \data_all[126]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1648);
    
    \data_send_buffer_RNO_3[6]\ : AO1
      port map(A => N_1855, B => N_1888, C => 
        \cnt_send[28]_net_1\, Y => N_31);
    
    \cnt_delay_RNO[5]\ : XA1B
      port map(A => cnt_delay_c4, B => \cnt_delay[5]_net_1\, C
         => N_398, Y => cnt_delay_n5);
    
    \data_send_buffer_RNO_32[0]\ : NOR3C
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \data_send_buffer_4_1_1_a0_3_0[0]\, C => 
        \data_send_buffer_4_1_1_a0_3_1[0]\, Y => 
        \data_send_buffer_4_1_1_a0_3[0]\);
    
    \data_send_buffer[1]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[1]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[1]_net_1\);
    
    \data_all_RNO[32]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_1633, C => 
        \data_all_4_i_0[32]\, Y => N_287);
    
    \data_all[84]\ : DFN1E0C0
      port map(D => N_234, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[84]_net_1\);
    
    \cnt_send_RNIA20Q[11]\ : NOR3C
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[11]_net_1\, C => \cnt_send[5]_net_1\, Y => 
        cnt_send_c11_m6_0_a2_3);
    
    \data_all_RNO[41]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1628, C => 
        \data_all_4_i_0[41]\, Y => N_269);
    
    \cnt_recive_RNI3IQC1[1]\ : OR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        \data_all_4_i_i_o4_0[14]\);
    
    \data_all_RNO[2]\ : NOR3
      port map(A => N_1535, B => N_398, C => N_1536, Y => N_345);
    
    send_end_RNO_39 : XOR2
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_send[7]_net_1\, Y => un12_cnt_send_7);
    
    \cnt_send[28]\ : DFN1E1C0
      port map(D => cnt_send_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[28]_net_1\);
    
    \data_send_buffer_RNO_34[7]\ : NOR2A
      port map(A => \data_all[143]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_1_a1_3_0[7]\);
    
    \data_all_RNO_0[90]\ : MX2C
      port map(A => \data_recive_buffer[2]\, B => 
        \data_all[90]_net_1\, S => N_1618, Y => N_1660);
    
    \data_all_RNO_0[53]\ : NOR2A
      port map(A => \data_all[53]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[53]\);
    
    \cnt_delay_RNI02R1[8]\ : AO1B
      port map(A => un12_receive_endlt7, B => un12_cnt_delay_3, C
         => \cnt_delay[8]_net_1\, Y => un12_receive_end);
    
    \data_all_RNO[142]\ : AO1A
      port map(A => \cnt_recive_RNI57MV5[0]_net_1\, B => 
        data_all_4_i_i_a4_142_m4_0, C => N_1770, Y => N_310);
    
    \cnt_recive_RNI84JF5[11]\ : NOR2B
      port map(A => cnt_recive_c10, B => \cnt_recive[11]_net_1\, 
        Y => cnt_recive_c11);
    
    \data_send_buffer_RNO_20[3]\ : NOR2B
      port map(A => \data_all[83]_net_1\, B => N_1579, Y => 
        N_1804);
    
    \data_all[121]\ : DFN1E0C0
      port map(D => N_111, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[121]_net_1\);
    
    \data_all[88]\ : DFN1E0C0
      port map(D => N_177, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[88]_net_1\);
    
    \data_send_buffer_RNO_18[7]\ : NOR3B
      port map(A => \data_all[15]_net_1\, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_398, Y
         => \data_send_buffer_4_1_0_a1_1[7]\);
    
    \cnt_recive_RNINBST[2]\ : OR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_362);
    
    \data_all_RNO_1[78]\ : NOR3B
      port map(A => \cnt_recive[3]_net_1\, B => N_815_2, C => 
        \cnt_recive[4]_net_1\, Y => \un52_data_all[78]\);
    
    \cnt_send_RNIAITJ[4]\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => 
        \cnt_send[4]_net_1\, Y => send_end_0_sqmuxa_i_a2_m3_e_0);
    
    \data_send_buffer_RNO_3[7]\ : OR3
      port map(A => \data_send_buffer_4_1_1_0[7]\, B => 
        \data_send_buffer_RNO_11[7]_net_1\, C => N_1469, Y => 
        \data_send_buffer_4_1_4[7]\);
    
    \cnt_send_RNO[15]\ : XA1B
      port map(A => cnt_send_c14, B => \cnt_send[15]_net_1\, C
         => N_398, Y => cnt_send_n15);
    
    \data_all_RNO[7]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[7]\, B => 
        \single_recive_0.N_169\, S => N_397_i_0_o4_N_5_mux, Y => 
        N_138);
    
    \data_send_buffer_RNO_29[5]\ : NOR2A
      port map(A => \data_send_buffer_4_1_0_a4_0[5]\, B => N_1888, 
        Y => \data_send_buffer_4_1_0_a4_19_1[5]\);
    
    \data_send_buffer_RNO_7[4]\ : AO1
      port map(A => \data_all[52]_net_1\, B => N_1574, C => N_528, 
        Y => \data_send_buffer_4_1_12[4]\);
    
    \data_send_buffer_RNO_33[7]\ : NOR2A
      port map(A => \data_all[31]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_1_a0_3_0[7]\);
    
    \data_all_RNO_0[139]\ : OA1B
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_all[139]_net_1\, Y => N_662);
    
    \cnt_recive_RNI5BLS5[1]\ : NOR3A
      port map(A => N_391_i_0_o4_m2_e_0, B => N_433, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_391_i_0_o4_m2_e_2);
    
    \data_send_buffer_RNO_5[6]\ : NOR2B
      port map(A => N_1840, B => N_775_3, Y => N_1095_3);
    
    \data_all_RNO_1[114]\ : NOR2
      port map(A => N_1617, B => \data_recive_buffer[2]\, Y => 
        N_713);
    
    \cnt_send_0[1]\ : DFN1E1C0
      port map(D => cnt_send_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send_0[1]_net_1\);
    
    \data_send_buffer_RNO_28[0]\ : NOR3A
      port map(A => \data_all[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_0);
    
    \data_all_RNO[159]\ : AO1
      port map(A => \data_all[159]_net_1\, B => N_1047, C => 
        N_1796, Y => N_1614);
    
    \data_all[44]\ : DFN1E0C0
      port map(D => N_263, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[44]_net_1\);
    
    \data_all_RNO_0[86]\ : NOR2A
      port map(A => \data_all[86]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_1);
    
    \cnt_delay_RNIQH11[4]\ : OAI1
      port map(A => \cnt_delay[4]_net_1\, B => un12_cnt_delay_1, 
        C => \cnt_delay[5]_net_1\, Y => un12_receive_endlt7);
    
    \data_send_buffer_RNO_2[4]\ : OR3
      port map(A => N_510, B => N_511, C => 
        \data_send_buffer_4_1_5[4]\, Y => 
        \data_send_buffer_4_1_10[4]\);
    
    \data_send_buffer_RNO_14[0]\ : NOR3C
      port map(A => \data_send_buffer_RNO_20[0]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => N_1841, Y => 
        \data_send_buffer_4_1_6[0]\);
    
    \data_all_RNO[28]\ : OA1A
      port map(A => N_395, B => \data_all[28]_net_1\, C => 
        \data_all_4_0[28]\, Y => \data_all_4[28]\);
    
    \cnt_recive_RNIPC4Q[11]\ : NOR2
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[11]_net_1\, Y => un5_idle_recive_10);
    
    \data_all_RNO[53]\ : MX2
      port map(A => \single_recive_0.N_171\, B => 
        \data_all_4_i_i_a4_0[53]\, S => N_457, Y => N_198);
    
    \cnt_recive_RNI2B1O1[4]\ : NOR2B
      port map(A => \cnt_recive[4]_net_1\, B => 
        cnt_recive_c19_m6_0_a2_3_3, Y => 
        cnt_recive_c19_m6_0_a2_3_5);
    
    \data_all[4]\ : DFN1E0C0
      port map(D => N_341, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[4]_net_1\);
    
    \data_all[117]\ : DFN1E0C0
      port map(D => N_1605, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[117]_net_1\);
    
    \data_all[48]\ : DFN1E0C0
      port map(D => N_255, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[48]_net_1\);
    
    \data_all_RNO_0[25]\ : AO1A
      port map(A => \data_all[25]_net_1\, B => N_395, C => N_398, 
        Y => \data_all_4_i_0[25]\);
    
    \data_all_RNO_0[103]\ : NOR3B
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_169\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1741);
    
    \cnt_send_RNIF2GK5[16]\ : NOR3C
      port map(A => cnt_send_c13_m6_0_a2_4, B => 
        cnt_send_c15_m3_0_a2_4, C => \cnt_send[16]_net_1\, Y => 
        cnt_send_c16);
    
    \cnt_recive_RNI5BLS5[4]\ : OR2
      port map(A => \data_all_4_i_o2_i_o4_1[39]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        \data_all_4_i_o2_i_o4_2[39]\);
    
    \data_all[37]\ : DFN1E0C0
      port map(D => N_277, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[37]_net_1\);
    
    \cnt_recive_RNI57MV5[4]\ : OR3
      port map(A => \data_all_4_i_o2_i_o4_0[95]\, B => 
        \cnt_recive[4]_net_1\, C => N_431, Y => N_1618);
    
    \data_all[145]\ : DFN1E0C0
      port map(D => N_322, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[145]_net_1\);
    
    \data_all[107]\ : DFN1E0C0
      port map(D => N_139, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[107]_net_1\);
    
    \cnt_send_RNIQ6CC1[3]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => 
        cnt_send_c18_m6_0_a2_1, C => cnt_send_c18_m6_0_a2_2, Y
         => cnt_send_c18_m6_0_a2_5);
    
    \cnt_recive_RNIPDST_4[2]\ : NOR2
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => un5_idle_recive_8_0);
    
    \cnt_send_RNO_1[11]\ : NOR3C
      port map(A => cnt_send_c10_m5_0_a2_1, B => 
        cnt_send_c10_m5_0_a2_0, C => cnt_send_c10_m5_0_a2_4, Y
         => cnt_send_c10_m5_0_a2_5);
    
    \data_send_buffer_RNO[0]\ : OR3
      port map(A => \data_send_buffer_4_1_13[0]\, B => 
        \data_send_buffer_4_1_11[0]\, C => 
        \data_send_buffer_4_1_12[0]\, Y => 
        \data_send_buffer_4[0]\);
    
    \data_all_RNO[20]\ : MX2
      port map(A => \single_recive_0.N_172\, B => 
        \data_all_4_i_i_a4_0[20]\, S => N_443, Y => N_1595);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_2[111]\ : NOR2A
      port map(A => N_397_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        N_397_i_0_o4_N_5_mux);
    
    \cnt_send_RNI8L8U7[0]\ : NOR3C
      port map(A => cnt_send_c28_m6_0_a2_6, B => 
        cnt_send_c13_m6_0_a2_4, C => cnt_send_c3, Y => 
        cnt_send_c28);
    
    \cnt_recive_RNIOCST[4]\ : NOR2
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => un5_idle_recive_12_0);
    
    \data_send_buffer_RNO_28[3]\ : NOR2
      port map(A => N_398, B => I_12_1, Y => 
        \data_send_buffer_4_1_0_a0_1[3]\);
    
    \cnt_send_RNIUK1N1_0[0]\ : NOR2B
      port map(A => cnt_send_c1, B => N_1851, Y => cnt_send_c3);
    
    \data_send_buffer_4_1_9[4]\ : OR2
      port map(A => N_526, B => N_527, Y => 
        \data_send_buffer_4_1_9[4]_net_1\);
    
    \cnt_send_RNI89991[1]\ : NOR2A
      port map(A => N_1849, B => \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_26_0_a4_out);
    
    \cnt_recive_RNI4JQC1_0[3]\ : OR2
      port map(A => \cnt_recive[3]_net_1\, B => N_364, Y => 
        \data_all_4_i_o2_i_o4_0[39]\);
    
    \cnt_recive[30]\ : DFN1E0C0
      port map(D => cnt_recive_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[30]_net_1\);
    
    \cnt_recive[19]\ : DFN1E0C0
      port map(D => cnt_recive_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[19]_net_1\);
    
    \cnt_recive_RNI2FAF1[2]\ : OR3A
      port map(A => \cnt_recive[1]_net_1\, B => N_1615, C => 
        \cnt_recive[2]_net_1\, Y => N_1635);
    
    receive_end_RNO_0 : AOI1
      port map(A => receive_end2lt9, B => receive_end2lto9, C => 
        N_398, Y => receive_end_1_sqmuxa);
    
    \data_all_RNO[3]\ : NOR3
      port map(A => N_1533, B => N_398, C => N_1534, Y => N_343);
    
    \data_all[119]\ : DFN1E0C0
      port map(D => N_280, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[119]_net_1\);
    
    \data_send_buffer_4_1_a2_16[4]\ : AND2
      port map(A => N_1569, B => \data_all[68]_net_1\, Y => N_527);
    
    \cnt_send[13]\ : DFN1E1C0
      port map(D => cnt_send_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[13]_net_1\);
    
    \cnt_send_RNIHJ7C[11]\ : NOR2
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[12]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_1);
    
    send_end_RNO_16 : XO1
      port map(A => \cnt_send[12]_net_1\, B => 
        \cnt_recive[12]_net_1\, C => un12_cnt_send_16, Y => 
        send_end_0_sqmuxa_i_5);
    
    \data_all_RNO_0[36]\ : NOR3A
      port map(A => \data_all[36]_net_1\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]_net_1\, C => 
        N_398, Y => N_1696);
    
    \data_all_RNO[127]\ : AO1
      port map(A => \data_all[127]_net_1\, B => N_1104, C => 
        N_1757, Y => N_288);
    
    \data_send_buffer_RNO_15[2]\ : NOR2B
      port map(A => \data_all[146]_net_1\, B => N_984, Y => N_553);
    
    \cnt_recive_RNI2FAF1_0[2]\ : OR2B
      port map(A => N_655_2, B => \cnt_recive[2]_net_1\, Y => 
        N_847_2_i);
    
    \data_all[109]\ : DFN1E0C0
      port map(D => N_1601, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[109]_net_1\);
    
    \data_all_4_i_o2_0_i_o2_0_12_8[111]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_6[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_5[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_8[111]_net_1\);
    
    \cnt_send_RNIDP5J6[21]\ : NOR3C
      port map(A => \cnt_send[20]_net_1\, B => cnt_send_c19, C
         => \cnt_send[21]_net_1\, Y => cnt_send_c21);
    
    \cnt_send[11]\ : DFN1E1C0
      port map(D => cnt_send_n11, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[11]_net_1\);
    
    \data_all_RNO[140]\ : AO1
      port map(A => \data_all[140]_net_1\, B => N_1046, C => 
        N_1766, Y => N_302);
    
    \cnt_recive_RNO_1[30]\ : NOR2A
      port map(A => \cnt_recive[30]_net_1\, B => N_398, Y => 
        N_1043);
    
    \cnt_recive_RNIPDST[1]\ : NOR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => N_383_i_0_o4_m2_e_0);
    
    \cnt_send_RNO_2[28]\ : NOR2A
      port map(A => cnt_send_c13_m6_0_a2_4, B => N_398, Y => 
        cnt_send_95_7);
    
    \data_send_buffer_RNO_7[5]\ : AO1
      port map(A => \data_all[141]_net_1\, B => N_1585, C => 
        \data_send_buffer_4_1_0_0[5]\, Y => 
        \data_send_buffer_4_1_0_4[5]\);
    
    \data_send_buffer_RNO_13[4]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[92]_net_1\, Y => N_515);
    
    \data_all_RNO[57]\ : NOR3
      port map(A => N_830, B => N_398, C => N_831, Y => N_237);
    
    \data_all_RNO_0[88]\ : NOR2A
      port map(A => \data_all[88]_net_1\, B => N_398, Y => 
        d_N_3_mux);
    
    \cnt_send_RNO_1[30]\ : NOR2A
      port map(A => \cnt_send[30]_net_1\, B => N_398, Y => N_981);
    
    \cnt_recive_end_RNO[3]\ : XA1
      port map(A => cnt_recive_end_c2, B => receive_end2lto3, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n3);
    
    \cnt_recive_RNO[21]\ : XA1B
      port map(A => cnt_recive_c20, B => \cnt_recive[21]_net_1\, 
        C => N_398, Y => cnt_recive_n21);
    
    \data_all_RNO_0[92]\ : MX2C
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[92]_net_1\, S => N_1618, Y => N_1662);
    
    \data_all_RNO_0[153]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[153]_net_1\, Y => N_628);
    
    \data_all_RNO[44]\ : NOR2
      port map(A => N_615, B => N_398, Y => N_263);
    
    \data_all_RNO[25]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_395, C => 
        \data_all_4_i_0[25]\, Y => N_299);
    
    \cnt_recive_RNI8C01C[27]\ : NOR2B
      port map(A => cnt_recive_c26, B => \cnt_recive[27]_net_1\, 
        Y => cnt_recive_c27);
    
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
    
    \data_send_buffer_RNO_31[2]\ : NOR3B
      port map(A => \data_all[154]_net_1\, B => 
        \data_send_buffer_4_1_1_a1_3_1[0]\, C => 
        \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_2_m2_e_2);
    
    \data_all_RNO_0[111]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \single_recive_0.N_169\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1747);
    
    \data_send_buffer_RNO_2[2]\ : OR3
      port map(A => \data_send_buffer_4_1_7_0[2]\, B => N_572, C
         => \data_send_buffer_4_1_12[2]\, Y => 
        \data_send_buffer_4_1_16[2]\);
    
    \data_all[122]\ : DFN1E0C0
      port map(D => N_109, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[122]_net_1\);
    
    send_end_RNO_32 : XOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_recive[20]_net_1\, Y => un12_cnt_send_20);
    
    \data_all[103]\ : DFN1E0C0
      port map(D => N_262, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[103]_net_1\);
    
    \data_all_RNO_0[43]\ : AO1A
      port map(A => \data_all[43]_net_1\, B => N_1628, C => N_398, 
        Y => \data_all_4_i_0[43]\);
    
    \data_all_RNO[56]\ : NOR3
      port map(A => N_832, B => N_398, C => N_833, Y => N_239);
    
    \cnt_recive_RNIEKB8D[10]\ : NOR3C
      port map(A => un5_idle_recive_17, B => un5_idle_recive_16, 
        C => un5_idle_recive_18, Y => un5_idle_recive);
    
    \cnt_delay[2]\ : DFN1E1C0
      port map(D => cnt_delay_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[2]_net_1\);
    
    \data_all_RNO_1[88]\ : MX2C
      port map(A => \data_recive_buffer[0]\, B => 
        \data_all[88]_net_1\, S => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        \data_all_RNO_1[88]_net_1\);
    
    \data_all_RNO_0[14]\ : NOR2A
      port map(A => \data_all[14]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[14]\);
    
    send_end_RNO_3 : OR3
      port map(A => N_589_i, B => send_end_0_sqmuxa_i_11, C => 
        N_452_i, Y => send_end_0_sqmuxa_i_24);
    
    \data_all_RNO_0[99]\ : NOR3B
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_173\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1733);
    
    \data_all_RNO[133]\ : AO1
      port map(A => \data_all[133]_net_1\, B => N_1048, C => 
        N_1760, Y => N_296);
    
    \cnt_recive_RNIEI0S[13]\ : NOR2B
      port map(A => \cnt_recive[13]_net_1\, B => 
        \cnt_recive[6]_net_1\, Y => cnt_recive_c14_m6_0_a2_2);
    
    \data_all_RNO_0[17]\ : NOR2A
      port map(A => \data_all[17]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[17]\);
    
    \data_send_buffer_RNO_20[2]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[90]_net_1\, Y => N_557);
    
    \data_all_RNO_1[49]\ : NOR2
      port map(A => N_457, B => \data_recive_buffer[1]\, Y => 
        N_847);
    
    \data_all_RNO[78]\ : NOR2A
      port map(A => \data_all_2[78]\, B => N_398, Y => 
        \data_all_4[78]\);
    
    idle_recive_down_RNIIQRK : NOR2A
      port map(A => idle_recive_down_i_0, B => N_398, Y => 
        \idle_recive_down_RNIIQRK\);
    
    \data_all_RNO_1[106]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[2]\, Y => N_729);
    
    \cnt_recive_RNI5FJ66[0]\ : OA1B
      port map(A => N_431, B => N_449_i_0_o4_0, C => N_398, Y => 
        N_1046);
    
    \cnt_recive[0]\ : DFN1E0C0
      port map(D => N_458, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[0]_net_1\);
    
    \cnt_recive_end[2]\ : DFN1C0
      port map(D => cnt_recive_end_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto2);
    
    \data_send_buffer_RNO_1[5]\ : OR3
      port map(A => N_1818, B => \data_send_buffer_4_1_0_4[5]\, C
         => \data_send_buffer_4_1_0_8[5]\, Y => 
        \data_send_buffer_4_1_0_15[5]\);
    
    \data_send_buffer_RNO[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_16[5]\, B => 
        \data_send_buffer_4_1_0_15[5]\, C => 
        \data_send_buffer_4_1_0_17[5]\, Y => 
        \data_send_buffer_4[5]\);
    
    send_end_RNO_15 : XO1
      port map(A => \cnt_send[13]_net_1\, B => 
        \cnt_recive[13]_net_1\, C => un12_cnt_send_11, Y => 
        send_end_0_sqmuxa_i_6);
    
    \cnt_send_RNIGA2D_0[28]\ : NOR2
      port map(A => \cnt_send[28]_net_1\, B => N_398, Y => N_1838);
    
    \cnt_recive_RNO[15]\ : NOR2A
      port map(A => cnt_recive_n15_tz, B => N_398, Y => 
        cnt_recive_n15);
    
    \data_all_RNO_1[3]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[3]\, Y => N_1534);
    
    \data_send_buffer_4_1_a2_15[4]\ : AND2
      port map(A => N_1573, B => \data_all[100]_net_1\, Y => 
        N_526);
    
    \data_all_RNO_0[38]\ : NOR2A
      port map(A => N_1633, B => \data_all[38]_net_1\, Y => N_875);
    
    \cnt_recive_end[5]\ : DFN1C0
      port map(D => cnt_recive_end_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[5]_net_1\);
    
    \data_send_buffer_4_1_a2_40_i_o4_2[7]\ : OR2
      port map(A => I_17_1, B => I_20_1, Y => 
        \data_send_buffer_4_1_a2_40_i_o4_2[7]_net_1\);
    
    \data_all_RNO_1[59]\ : NOR2A
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[3]\, Y => N_827);
    
    \data_all_RNO[63]\ : AO1
      port map(A => \data_all[63]_net_1\, B => N_1049, C => 
        N_1713, Y => N_208);
    
    \cnt_recive_RNIS41O1[11]\ : OR2B
      port map(A => un5_idle_recive_10, B => un5_idle_recive_12, 
        Y => \data_all_4_i_o2_0_i_o2_0_11_0[111]\);
    
    \cnt_send_0_RNILKC92[2]\ : NOR2B
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_38_0_a4_out, Y => N_1584);
    
    send_end_RNO_27 : XOR2
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_send[6]_net_1\, Y => un12_cnt_send_6);
    
    \data_send_buffer_RNO_6[7]\ : NOR3C
      port map(A => N_1851, B => N_1858, C => 
        \data_all[111]_net_1\, Y => N_474);
    
    \cnt_recive_RNO[18]\ : XA1B
      port map(A => cnt_recive_c17, B => \cnt_recive[18]_net_1\, 
        C => N_398, Y => cnt_recive_n18);
    
    \data_send_buffer_RNO_7[0]\ : NOR2B
      port map(A => \data_all[152]_net_1\, B => N_1576, Y => 
        N_594);
    
    \cnt_send_RNI877M3[8]\ : NOR2B
      port map(A => cnt_send_c7, B => \cnt_send[8]_net_1\, Y => 
        cnt_send_c8);
    
    \data_send_buffer[6]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[6]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[6]_net_1\);
    
    \cnt_send_RNIEHK57[4]\ : NOR3C
      port map(A => cnt_send_c13_m6_0_a2_4, B => 
        cnt_send_c15_m3_0_a2_4, C => cnt_send_c24_m6_0_a2_4, Y
         => cnt_send_c24);
    
    \cnt_recive_RNI3IQC1_0[1]\ : NOR3B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        data_all_4_i_o2_i_o4_127_m2_e_1);
    
    \data_all_RNO[88]\ : MX2B
      port map(A => d_N_3_mux, B => \data_all_RNO_1[88]_net_1\, S
         => data_all_4_i_88_N_9_mux, Y => N_177);
    
    \data_all_RNO[70]\ : AO1
      port map(A => \data_all[70]_net_1\, B => N_1051, C => 
        N_1719, Y => N_218);
    
    \cnt_recive_RNI6M491[20]\ : NOR3C
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_recive[20]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        cnt_recive_c24_m6_0_a2_3);
    
    \data_send_buffer_RNO_18[4]\ : NOR2A
      port map(A => \data_all[148]_net_1\, B => 
        \cnt_send[0]_net_1\, Y => data_send_buffer_4_1_a2_0_out);
    
    \cnt_flag[1]\ : DFN1C0
      port map(D => \cnt_flag_5[1]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_flag[1]_net_1\);
    
    \data_send_buffer_RNO_13[1]\ : NOR2B
      port map(A => \data_all[17]_net_1\, B => N_982, Y => N_585);
    
    \cnt_send_RNINR1F2_0[1]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_38_a2_0_out, B => 
        N_1848, C => N_398, Y => N_1574);
    
    \cnt_recive_RNIL9ST_1[1]\ : NOR2
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => N_391_i_0_o4_m2_e_0);
    
    \data_all[86]\ : DFN1E0C0
      port map(D => N_238, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[86]_net_1\);
    
    \data_all[83]\ : DFN1E0C0
      port map(D => N_232, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[83]_net_1\);
    
    \data_all[34]\ : DFN1E0C0
      port map(D => N_176, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[34]_net_1\);
    
    \cnt_send_RNIDOGR[0]\ : NOR2B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => cnt_send_c1);
    
    \cnt_recive[21]\ : DFN1E0C0
      port map(D => cnt_recive_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[21]_net_1\);
    
    receive_end_RNO_3 : AO1
      port map(A => receive_end2lto3, B => receive_end2lto2, C
         => \cnt_recive_end[5]_net_1\, Y => receive_end2lto6_1);
    
    \cnt_recive_end_RNO_0[2]\ : AX1C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_n2_tz);
    
    \data_all[11]\ : DFN1E0C0
      port map(D => N_327, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[11]_net_1\);
    
    \data_all_RNO_0[66]\ : OA1C
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[66]_net_1\, Y => N_812);
    
    \data_all_RNO_0[3]\ : NOR2
      port map(A => \data_all[3]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1533);
    
    \cnt_recive_RNI25MPA[11]\ : NOR2B
      port map(A => cnt_recive_c24_m6_0_a2_7, B => 
        cnt_recive_c17_m6_0_a2_4, Y => cnt_recive_c24);
    
    \cnt_recive_end_RNO[0]\ : NOR2A
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        \cnt_recive_end[0]_net_1\, Y => cnt_recive_end_n0);
    
    \data_send_buffer_RNO_17[2]\ : NOR3B
      port map(A => data_send_buffer_4_1_7_0_m2_0_a2_0, B => 
        N_1841, C => \data_send_buffer_RNO_25[2]_net_1\, Y => 
        \data_send_buffer_4_1_7[2]\);
    
    data_send_buffer_4_1_a2_36_0_a4_7_m2_e_1 : NOR2A
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        N_398, Y => \data_send_buffer_4_1_a2_36_0_a4_7_m2_e_1\);
    
    \data_all_RNO[80]\ : MX2
      port map(A => N_1053, B => \data_all_4_i_i_a4_0[80]\, S => 
        N_442, Y => N_222);
    
    \data_all[10]\ : DFN1E0C0
      port map(D => N_329, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[10]_net_1\);
    
    \data_all[38]\ : DFN1E0C0
      port map(D => N_275, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[38]_net_1\);
    
    \data_all[118]\ : DFN1E0C0
      port map(D => N_1606, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[118]_net_1\);
    
    \cnt_delay_RNO[7]\ : XA1B
      port map(A => cnt_delay_c6, B => \cnt_delay[7]_net_1\, C
         => N_398, Y => cnt_delay_n7);
    
    \data_send_buffer_RNO_28[5]\ : NOR3B
      port map(A => \cnt_send_0[2]_net_1\, B => 
        \data_send_buffer_4_1_0_11_a1_2_0[5]\, C => 
        \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_4_1_0_11_a1_2[5]\);
    
    receive_end : DFN1E0C0
      port map(D => N_398_i, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => receive_end_1_sqmuxa, Q => \receive_end\);
    
    \cnt_recive_RNI5BLS5[0]\ : NOR3B
      port map(A => N_383_i_0_o4_m2_e_1, B => N_383_i_0_o4_m2_e_0, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_383_i_0_o4_m2_e_3);
    
    \data_all[108]\ : DFN1E0C0
      port map(D => N_1600, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[108]_net_1\);
    
    \cnt_send_RNINR1F2[1]\ : NOR3C
      port map(A => N_1849, B => \cnt_send[1]_net_1\, C => N_1842, 
        Y => N_1579);
    
    \data_all[46]\ : DFN1E0C0
      port map(D => N_259, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[46]_net_1\);
    
    \data_all[43]\ : DFN1E0C0
      port map(D => N_265, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[43]_net_1\);
    
    \data_all_4_i_o2_0_i_o2_0_7_RNO_0[111]\ : OR3
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_recive[26]_net_1\, C => 
        \data_all_4_i_o2_0_i_o2_0_12_1[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_3[111]\);
    
    \data_all[5]\ : DFN1E0C0
      port map(D => N_339, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[5]_net_1\);
    
    \data_send_buffer_RNO_12[6]\ : MX2
      port map(A => N_551_3, B => N_567_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_711_3);
    
    \cnt_delay_RNO[6]\ : XA1B
      port map(A => cnt_delay_c5, B => \cnt_delay[6]_net_1\, C
         => N_398, Y => cnt_delay_n6);
    
    \data_all_RNO[75]\ : NOR3
      port map(A => N_788, B => N_398, C => N_789, Y => N_201);
    
    \data_all_RNO[67]\ : NOR3
      port map(A => N_810, B => N_398, C => N_811, Y => N_217);
    
    \cnt_recive_RNI3GFV9[22]\ : NOR3C
      port map(A => \cnt_recive[21]_net_1\, B => cnt_recive_c20, 
        C => \cnt_recive[22]_net_1\, Y => cnt_recive_c22);
    
    \data_send_buffer_RNO_12[0]\ : NOR3C
      port map(A => \data_all[64]_net_1\, B => N_1849, C => 
        N_1853, Y => N_611);
    
    \cnt_send_RNO[18]\ : XA1B
      port map(A => cnt_send_c17, B => \cnt_send[18]_net_1\, C
         => N_398, Y => cnt_send_n18);
    
    \data_all_RNO[104]\ : NOR3
      port map(A => N_732, B => N_398, C => N_733, Y => N_145);
    
    \data_all[72]\ : DFN1E0C0
      port map(D => N_207, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[72]_net_1\);
    
    \data_all_RNO[138]\ : NOR3
      port map(A => N_664, B => N_398, C => N_665, Y => N_77);
    
    \data_send_buffer_RNO_21[3]\ : NOR2B
      port map(A => \data_all[19]_net_1\, B => N_982, Y => N_1807);
    
    \data_all_RNO_0[134]\ : NOR3B
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \single_recive_0.N_170\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1762);
    
    \cnt_send_RNO_2[27]\ : NOR2B
      port map(A => cnt_send_c1, B => cnt_send_c13_m6_0_a2_4, Y
         => cnt_send_c26_m5_0_a2_6);
    
    \cnt_send_RNIPSD33[3]\ : NOR3C
      port map(A => cnt_send_c18_m6_0_a2_5, B => 
        cnt_send_c18_m6_0_a2_4, C => cnt_send_c1, Y => 
        cnt_send_c18_m6_0_a2_7);
    
    \data_send_buffer_RNO_14[7]\ : AO1
      port map(A => \data_all[23]_net_1\, B => N_982, C => N_476, 
        Y => \data_send_buffer_4_1_3[7]\);
    
    \cnt_send[25]\ : DFN1E1C0
      port map(D => cnt_send_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[25]_net_1\);
    
    \data_send_buffer_RNO_20[4]\ : OA1
      port map(A => data_send_buffer_4_1_7_4_m2_0_a2_1, B => 
        data_send_buffer_4_1_a2_6_4_m1_0_a2_0, C => N_1841, Y => 
        \data_send_buffer_4_1_2[4]\);
    
    \cnt_send_RNIUK1N1[0]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_1, B => N_1840, Y
         => N_1854);
    
    \data_send_buffer_RNO_30[0]\ : NOR3B
      port map(A => \data_all[120]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_5_a1_5_3[0]\);
    
    \data_send_buffer_RNO_25[4]\ : NOR2B
      port map(A => \data_all[28]_net_1\, B => N_1850, Y => 
        data_send_buffer_4_1_a2_6_4_m1_0_a2_0);
    
    \data_all[120]\ : DFN1E0C0
      port map(D => N_113, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[120]_net_1\);
    
    \data_all_RNO_0[132]\ : NOR3B
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \single_recive_0.N_172\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1758);
    
    \data_send_buffer_RNO_4[2]\ : OR3
      port map(A => N_563, B => N_559, C => N_553, Y => 
        \data_send_buffer_4_1_6[2]\);
    
    \data_send_buffer_RNO_3[4]\ : AO1
      port map(A => \data_all[84]_net_1\, B => N_1579, C => N_518, 
        Y => \data_send_buffer_4_1_11[4]\);
    
    \data_all_RNO[85]\ : MX2
      port map(A => \single_recive_0.N_171\, B => 
        \data_all_4_i_i_a4_0[85]\, S => N_442, Y => N_236);
    
    \data_all_RNO[99]\ : AO1
      port map(A => \data_all[99]_net_1\, B => N_983, C => N_1733, 
        Y => N_1597);
    
    \cnt_send_RNO[10]\ : XA1B
      port map(A => cnt_send_c9, B => \cnt_send[10]_net_1\, C => 
        N_398, Y => cnt_send_n10);
    
    \data_send_buffer_RNO_1[1]\ : OR3
      port map(A => \data_send_buffer_4_1_4[1]\, B => 
        data_send_buffer_4_1_14_s_out, C => N_591, Y => 
        \data_send_buffer_4_1_14[1]\);
    
    \data_send_buffer_RNO_0[4]\ : OR3
      port map(A => \data_send_buffer_4_1_10[4]\, B => 
        \data_send_buffer_4_1_11[4]\, C => 
        \data_send_buffer_4_1_8[4]\, Y => 
        data_send_buffer_4_1_17_out_0);
    
    \data_all_RNO[126]\ : AO1
      port map(A => \data_all[126]_net_1\, B => N_1104, C => 
        N_859, Y => N_286);
    
    \data_all_RNO_1[8]\ : NOR2
      port map(A => N_1636, B => \data_recive_buffer[0]\, Y => 
        N_1524);
    
    \data_all_RNO[66]\ : NOR3
      port map(A => N_812, B => N_398, C => N_813, Y => N_219);
    
    \data_send_buffer_RNO_26[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_18_2_m2_0_a2_0, B => 
        send_end_0_sqmuxa_i_a2_m3_e_1, C => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2, Y => 
        data_send_buffer_4_1_a2_18_2_m2_0_a2_3);
    
    \data_send_buffer_RNO_13[7]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[95]_net_1\, Y => N_467);
    
    \data_send_buffer_RNO_4[6]\ : MX2
      port map(A => N_807_3, B => N_871_3, S => 
        \cnt_send[3]_net_1\, Y => N_967_4);
    
    \data_send_buffer_RNO_37[0]\ : NOR2A
      port map(A => \data_all[136]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_1_a1_3_0[0]\);
    
    \cnt_recive_RNIVCO64[25]\ : NOR3C
      port map(A => un5_idle_recive_5, B => un5_idle_recive_4_0, 
        C => un5_idle_recive_12_0, Y => un5_idle_recive_17);
    
    \data_send_buffer_RNO_7[7]\ : AO1
      port map(A => \data_all[151]_net_1\, B => N_984, C => 
        \data_send_buffer_4_1_3[7]\, Y => 
        \data_send_buffer_4_1_5[7]\);
    
    \data_all_RNO_1[38]\ : NOR2
      port map(A => \data_recive_buffer[6]\, B => N_1633, Y => 
        N_1476);
    
    \data_all[114]\ : DFN1E0C0
      port map(D => N_125, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[114]_net_1\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    \cnt_recive[25]\ : DFN1E0C0
      port map(D => cnt_recive_n25, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[25]_net_1\);
    
    \cnt_send_RNIDRO71[12]\ : NOR3C
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[12]_net_1\, C => cnt_send_c13_m6_0_a2_4_2, Y
         => cnt_send_c13_m6_0_a2_4_5);
    
    \data_all_RNO_0[68]\ : NOR3B
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_172\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1715);
    
    \data_all_RNO_0[126]\ : NOR2B
      port map(A => N_1711_1, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_859);
    
    \data_all_RNO_0[117]\ : NOR2A
      port map(A => \data_all[117]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[117]\);
    
    \cnt_recive_RNI57MV5_1[2]\ : OR2A
      port map(A => N_387_i_0_o2_N_5_mux, B => N_434, Y => N_442);
    
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
    
    \data_all_4_i_o2_0_i_o2_0_12_8_RNO[111]\ : OR3A
      port map(A => un5_idle_recive_9, B => 
        \cnt_recive[24]_net_1\, C => \cnt_recive[23]_net_1\, Y
         => \data_all_4_i_o2_0_i_o2_0_12_6[111]\);
    
    un20_data_send_buffer_1_I_13 : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \un20_data_send_buffer_1.N_4\);
    
    \data_all[79]\ : DFN1E0C0
      port map(D => N_195, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[79]_net_1\);
    
    \data_all_RNO_0[74]\ : NOR2
      port map(A => \data_all[74]_net_1\, B => 
        \un46_data_all[80]\, Y => N_790);
    
    \cnt_send_RNIGRGR_0[4]\ : NOR2A
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[4]_net_1\, 
        Y => \data_send_buffer_4_1_1_a0_3_1[0]\);
    
    send_end_RNO_36 : XO1
      port map(A => \cnt_recive[21]_net_1\, B => 
        \cnt_send[21]_net_1\, C => un12_cnt_send_17, Y => 
        send_end_0_sqmuxa_i_4);
    
    \data_send_buffer_RNO_15[1]\ : NOR2B
      port map(A => \data_all[153]_net_1\, B => N_1576, Y => 
        N_574);
    
    \cnt_send_RNIPT9C[27]\ : NOR2
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_send[22]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_2);
    
    \data_send_buffer_RNO_9[2]\ : OR3
      port map(A => \data_send_buffer_4_1_1[2]\, B => N_566, C
         => N_558, Y => \data_send_buffer_4_1_7_0[2]\);
    
    \data_all[22]\ : DFN1E0C0
      port map(D => N_164, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[22]_net_1\);
    
    \data_all_RNO_0[77]\ : NOR2
      port map(A => \data_all[77]_net_1\, B => 
        \un46_data_all[80]\, Y => N_784);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_1[111]\ : OR2
      port map(A => \data_all_4_i_i_o4_2[14]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1636);
    
    \data_all_RNO_0[95]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[95]_net_1\, S => N_1618, Y => N_1663);
    
    \cnt_recive_RNICUG25[6]\ : NOR3C
      port map(A => cnt_recive_c10_m6_0_a2_6, B => 
        cnt_recive_c10_m6_0_a2_5, C => cnt_recive_c1, Y => 
        cnt_recive_c10);
    
    \data_all[131]\ : DFN1E0C0
      port map(D => N_91, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[131]_net_1\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_4[111]\ : NOR2A
      port map(A => un46_data_all_0_a2_1_a4_80_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        \un46_data_all[80]\);
    
    \data_all_RNO[117]\ : MX2
      port map(A => \single_recive_0.N_171\, B => 
        \data_all_4_i_i_a4_0[117]\, S => N_1617, Y => N_1605);
    
    send_end_RNO_0 : OR3
      port map(A => send_end_0_sqmuxa_i_24, B => 
        send_end_0_sqmuxa_i_23, C => N_398, Y => 
        send_end_0_sqmuxa_i_29);
    
    \cnt_recive[7]\ : DFN1E0C0
      port map(D => cnt_recive_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[7]_net_1\);
    
    \data_all[62]\ : DFN1E0C0
      port map(D => N_206, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[62]_net_1\);
    
    send_end_RNO_21 : XO1
      port map(A => \cnt_send[14]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => send_end_0_sqmuxa_i_0, Y => 
        send_end_0_sqmuxa_i_12);
    
    \cnt_recive_end[9]\ : DFN1C0
      port map(D => cnt_recive_end_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto9);
    
    \data_all_RNO[154]\ : NOR3
      port map(A => N_626, B => N_398, C => N_627, Y => N_45);
    
    \cnt_send_RNIGRGR_1[4]\ : NOR2
      port map(A => \cnt_send[4]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => \data_send_buffer_4_1_a2_23_0_a2_0[7]\);
    
    sys_clk_pad : CLKBUF
      port map(PAD => sys_clk, Y => sys_clk_c);
    
    \data_send_buffer_RNO_16[3]\ : NOR3B
      port map(A => \data_send_buffer_4_1_0_0_a1_0[3]\, B => 
        N_1865, C => N_1888, Y => 
        \data_send_buffer_RNO_16[3]_net_1\);
    
    send_end_RNO_28 : XOR2
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_recive[25]_net_1\, Y => N_592_i);
    
    \data_all_RNO[43]\ : OA1B
      port map(A => \data_recive_buffer[3]\, B => N_1628, C => 
        \data_all_4_i_0[43]\, Y => N_265);
    
    \cnt_recive_RNI5BLS5_4[1]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_0, B => N_434, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        un46_data_all_0_a2_1_a4_80_m2_e_2);
    
    \cnt_recive_RNISVMA2[3]\ : NOR2A
      port map(A => un5_idle_recive_12_0, B => 
        \data_all_4_i_o2_i_o4_0[39]\, Y => 
        data_all_4_i_i_a2_34_m1_e_1);
    
    \data_all_RNO_0[80]\ : NOR2A
      port map(A => \data_all[80]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[80]\);
    
    \data_all_RNO_1[121]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_699);
    
    \data_send_buffer_RNO_19[3]\ : AO1
      port map(A => \data_all[131]_net_1\, B => N_1581, C => 
        N_1811, Y => \data_send_buffer_4_3[3]\);
    
    \data_all_RNO_0[56]\ : NOR2
      port map(A => \data_all[56]_net_1\, B => 
        N_383_i_0_o4_N_5_mux, Y => N_832);
    
    \cnt_recive[12]\ : DFN1E0C0
      port map(D => cnt_recive_n12, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[12]_net_1\);
    
    \data_all_RNO[58]\ : NOR3
      port map(A => N_828, B => N_398, C => N_829, Y => N_235);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_3[111]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_127_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        data_all_4_i_o2_i_o4_127_N_5_mux);
    
    sys_rest_pad : CLKBUF
      port map(PAD => sys_rest, Y => sys_rest_c);
    
    \data_all[29]\ : DFN1E0C0
      port map(D => N_293, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[29]_net_1\);
    
    \data_all_RNO_0[9]\ : NOR2A
      port map(A => N_1636, B => \data_all[9]_net_1\, Y => N_1521);
    
    \cnt_recive_RNO[26]\ : XA1B
      port map(A => cnt_recive_c25, B => \cnt_recive[26]_net_1\, 
        C => N_398, Y => cnt_recive_n26);
    
    \cnt_recive_RNI4NQJ3[4]\ : NOR2B
      port map(A => cnt_recive_c19_m6_0_a2_3_5, B => 
        cnt_recive_c19_m6_0_a2_3_4, Y => cnt_recive_c19_m6_0_a2_3);
    
    \data_send_buffer_RNO_33[0]\ : NOR3B
      port map(A => \data_send_buffer_4_1_1_a1_3_0[0]\, B => 
        \data_send_buffer_4_1_1_a1_3_1[0]\, C => 
        \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_4_1_1_a1_3[0]\);
    
    \data_all[127]\ : DFN1E0C0
      port map(D => N_288, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[127]_net_1\);
    
    \cnt_send_RNICD8N1[18]\ : NOR2B
      port map(A => cnt_send_c24_m6_0_a2_4_6, B => 
        cnt_send_c24_m6_0_a2_4_5, Y => cnt_send_c24_m6_0_a2_4);
    
    \cnt_send_0_RNILKC92[4]\ : NOR3C
      port map(A => N_1840, B => 
        \data_send_buffer_4_1_a2_39_0_a4_1[7]\, C => N_1838, Y
         => N_1585);
    
    \cnt_recive_RNIRJJ83[5]\ : NOR3C
      port map(A => cnt_recive_c6_m2_0_a2_2, B => 
        cnt_recive_c6_m2_0_a2_1, C => cnt_recive_c1, Y => 
        cnt_recive_c6);
    
    \data_all[91]\ : DFN1E0C0
      port map(D => N_171, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[91]_net_1\);
    
    \data_all_RNO_1[72]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[0]\, Y => N_795);
    
    \cnt_recive_RNIPDST_2[2]\ : OR2
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_429);
    
    \cnt_recive_end[3]\ : DFN1C0
      port map(D => cnt_recive_end_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto3);
    
    \data_send_buffer_RNO_8[7]\ : NOR2B
      port map(A => \data_all[103]_net_1\, B => N_1573, Y => 
        N_478);
    
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
      port map(A => \data_send_buffer_4_1_5_0[0]\, B => N_594, C
         => N_604, Y => \data_send_buffer_4_1_11[0]\);
    
    \data_all_RNO_0[24]\ : AO1A
      port map(A => \data_all[24]_net_1\, B => N_395, C => N_398, 
        Y => \data_all_4_i_0[24]\);
    
    \cnt_recive_RNI7HGN3[11]\ : NOR3C
      port map(A => cnt_recive_c17_m6_0_a2_4_4, B => 
        cnt_recive_c17_m6_0_a2_4_3, C => 
        cnt_recive_c17_m6_0_a2_4_5, Y => cnt_recive_c17_m6_0_a2_4);
    
    send_end_RNO_35 : XOR2
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_recive[23]_net_1\, Y => N_594_i);
    
    \data_all_RNO[50]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_457, C => 
        \data_all_4_i_0[50]\, Y => N_251);
    
    \data_all_4_i_o2_0_i_o2_0_RNI5FJ66_3[111]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_398, Y
         => N_1105);
    
    \cnt_send_0_RNIKDP01_0[4]\ : NOR3
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        un18_data_send_bufferlto31_i_a2tt_N_5_mux);
    
    \data_all_RNO_0[146]\ : NOR2B
      port map(A => \single_recive_0.N_174\, B => 
        data_all_4_i_i_o2_144_N_5_mux, Y => N_1778);
    
    \data_all_RNO[129]\ : NOR3
      port map(A => N_682, B => N_398, C => N_683, Y => N_95);
    
    \data_send_buffer_RNO_15[3]\ : NOR3B
      port map(A => data_send_buffer_4_1_7_0_m2_0_a2_0, B => 
        N_1841, C => \data_send_buffer_RNO_22[3]_net_1\, Y => 
        \data_send_buffer_4_1_0_7[3]\);
    
    \data_all_RNO[101]\ : AO1
      port map(A => \data_all[101]_net_1\, B => N_983, C => 
        N_1737, Y => N_1599);
    
    \data_all_RNO_0[27]\ : MX2
      port map(A => \data_recive_buffer[3]\, B => 
        \data_all[27]_net_1\, S => N_395, Y => N_1657);
    
    \cnt_send_RNO[11]\ : XA1B
      port map(A => cnt_send_c10, B => \cnt_send[11]_net_1\, C
         => N_398, Y => cnt_send_n11);
    
    \cnt_send[24]\ : DFN1E1C0
      port map(D => cnt_send_n24, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[24]_net_1\);
    
    \data_all[0]\ : DFN1E0C0
      port map(D => N_349, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[0]_net_1\);
    
    \data_send_buffer_RNO_11[2]\ : AO1
      port map(A => \data_all[50]_net_1\, B => N_1574, C => N_570, 
        Y => \data_send_buffer_4_1_12[2]\);
    
    \data_send_buffer_RNO_9[3]\ : AO1
      port map(A => \data_all[155]_net_1\, B => N_1576, C => 
        \data_send_buffer_4_3[3]\, Y => \data_send_buffer_4_6[3]\);
    
    \cnt_recive_end[1]\ : DFN1C0
      port map(D => cnt_recive_end_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[1]_net_1\);
    
    \data_all[6]\ : DFN1E0C0
      port map(D => N_134, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[6]_net_1\);
    
    \data_all_RNO_3[88]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \data_all_4_i_o2_i_o4_0[95]\, 
        Y => data_all_4_i_88_m4_0_a2_1);
    
    \cnt_send_RNINAEF1[1]\ : NOR3B
      port map(A => \cnt_send[1]_net_1\, B => 
        \data_send_buffer_4_1_a2_23_0_a2_0[7]\, C => 
        \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_23_0_a4_7_m2_e_1);
    
    \cnt_send_RNIHL9C[21]\ : NOR2
      port map(A => \cnt_send[20]_net_1\, B => 
        \cnt_send[21]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_4);
    
    \data_all_RNO_1[79]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[7]\, Y => N_783);
    
    \cnt_recive[3]\ : DFN1E0C0
      port map(D => cnt_recive_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[3]_net_1\);
    
    \data_all[129]\ : DFN1E0C0
      port map(D => N_95, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[129]_net_1\);
    
    \cnt_send_0_RNI5AAS1[4]\ : NOR2B
      port map(A => un18_data_send_bufferlto31_i_a2tt_N_5_mux, B
         => N_1840, Y => N_1855);
    
    \cnt_send[18]\ : DFN1E1C0
      port map(D => cnt_send_n18, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[18]_net_1\);
    
    \data_all_RNO[9]\ : NOR3
      port map(A => N_1521, B => N_398, C => N_1522, Y => N_331);
    
    \data_all[51]\ : DFN1E0C0
      port map(D => N_194, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[51]_net_1\);
    
    \cnt_send_RNIH7CCE[28]\ : AO1D
      port map(A => N_1665, B => N_1667, C => N_1646, Y => N_36);
    
    \data_all_RNO[47]\ : NOR2
      port map(A => N_1656, B => N_398, Y => N_257);
    
    signal_send_0 : signal_send
      port map(data_send_buffer(7) => \data_send_buffer[7]_net_1\, 
        data_send_buffer(6) => \data_send_buffer[6]_net_1\, 
        data_send_buffer(5) => \data_send_buffer[5]_net_1\, 
        data_send_buffer(4) => \data_send_buffer[4]_net_1\, 
        data_send_buffer(3) => \data_send_buffer[3]_net_1\, 
        data_send_buffer(2) => \data_send_buffer[2]_net_1\, 
        data_send_buffer(1) => \data_send_buffer[1]_net_1\, 
        data_send_buffer(0) => \data_send_buffer[0]_net_1\, 
        cnt_delay_0 => \cnt_delay[0]_net_1\, tx_uart_c => 
        tx_uart_c, sys_rest_c => sys_rest_c, sys_clk_c => 
        sys_clk_c, un5_idle_recive => un5_idle_recive, 
        end_flag_RNI256BD => end_flag_RNI256BD, idle_send => 
        idle_send, un12_cnt_delay_0 => un12_cnt_delay_0, vld_send
         => \vld_send\);
    
    \data_send_buffer_RNO_24[2]\ : NOR2B
      port map(A => \data_all[34]_net_1\, B => N_1580, Y => N_570);
    
    \data_all_RNO[143]\ : AO1A
      port map(A => \cnt_recive_RNI57MV5[0]_net_1\, B => 
        data_all_4_i_i_a4_143_m4_0, C => N_1772, Y => N_314);
    
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
    
    \data_all_RNO_0[30]\ : MX2A
      port map(A => N_1635, B => \data_all[30]_net_1\, S => N_395, 
        Y => N_1654);
    
    \cnt_recive_end_RNO[7]\ : XA1
      port map(A => cnt_recive_end_c6, B => receive_end2lto7, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n7);
    
    \cnt_send_RNO[7]\ : NOR2A
      port map(A => cnt_send_n7_tz, B => N_398, Y => cnt_send_n7);
    
    \data_all[50]\ : DFN1E0C0
      port map(D => N_251, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[50]_net_1\);
    
    \cnt_recive_RNO[30]\ : AX1C
      port map(A => cnt_recive_c28, B => cnt_recive_161_0, C => 
        N_1043, Y => cnt_recive_n30);
    
    \cnt_recive_RNI6E9K1[17]\ : NOR3A
      port map(A => un5_idle_recive_8, B => 
        \cnt_recive[17]_net_1\, C => \cnt_recive[18]_net_1\, Y
         => un5_idle_recive_7_0);
    
    \cnt_recive[1]\ : DFN1E0C0
      port map(D => N_19, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \cnt_recive[1]_net_1\);
    
    \cnt_send_RNIMJLK[0]\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => N_398, Y => N_1466);
    
    \cnt_send_RNITBL33[18]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_0_20_10, B => 
        send_end_0_sqmuxa_i_a2_0_20_9, C => 
        send_end_0_sqmuxa_i_a2_0_20_11, Y => 
        send_end_0_sqmuxa_i_a2_0_20);
    
    idle_send_down_RNIU78E : OR2
      port map(A => \idle_send_down\, B => N_398, Y => cnt_sende);
    
    \data_all_RNO_0[58]\ : NOR2
      port map(A => \data_all[58]_net_1\, B => 
        N_383_i_0_o4_N_5_mux, Y => N_828);
    
    \cnt_recive_RNI57MV5_2[2]\ : OR2A
      port map(A => N_387_i_0_o2_N_5_mux, B => N_432, Y => N_1617);
    
    \data_all_RNO_0[110]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[110]_net_1\, Y => N_720);
    
    \data_all_RNO[55]\ : MX2
      port map(A => \single_recive_0.N_169\, B => 
        data_all_4_i_i_a4_out_2, S => N_457, Y => N_200);
    
    \data_send_buffer_RNO_25[0]\ : NOR2A
      port map(A => \data_all[8]_net_1\, B => N_398, Y => 
        data_send_buffer_4_1_a2_14_0_m2_0_a2_0);
    
    \data_all[132]\ : DFN1E0C0
      port map(D => N_292, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[132]_net_1\);
    
    \cnt_send_RNIOR8C[25]\ : NOR2
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_19_3);
    
    \cnt_send_0_RNI0HJV[2]\ : NOR3
      port map(A => \cnt_send_0[2]_net_1\, B => 
        \cnt_send[3]_net_1\, C => N_398, Y => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2);
    
    \cnt_delay_RNIIJQ1[6]\ : NOR2B
      port map(A => cnt_delay_c5, B => \cnt_delay[6]_net_1\, Y
         => cnt_delay_c6);
    
    \data_all_RNO[46]\ : NOR2A
      port map(A => N_1653, B => N_398, Y => N_259);
    
    \data_all[123]\ : DFN1E0C0
      port map(D => N_107, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[123]_net_1\);
    
    \data_send_buffer_RNO_22[5]\ : NOR2B
      port map(A => \data_all[149]_net_1\, B => N_984, Y => 
        N_1826);
    
    \data_all_4_i_o2_0_i_o2_0_8_RNO_0[111]\ : OR3A
      port map(A => un5_idle_recive_6, B => 
        \cnt_recive[17]_net_1\, C => \cnt_recive[18]_net_1\, Y
         => \data_all_4_i_o2_0_i_o2_0_12_5[111]\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI5FJ66_1[111]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_398, Y
         => N_1047);
    
    \cnt_send_RNINQS93[28]\ : NOR2B
      port map(A => cnt_send_c28_m6_0_a2_5, B => 
        cnt_send_c24_m6_0_a2_4, Y => cnt_send_c28_m6_0_a2_6);
    
    \data_send_buffer_RNO_16[4]\ : NOR2B
      port map(A => \data_all[60]_net_1\, B => N_1570, Y => N_516);
    
    send_end_RNO : NOR3
      port map(A => send_end_0_sqmuxa_i_29, B => 
        send_end_0_sqmuxa_i_28, C => N_1797, Y => N_413);
    
    \data_send_buffer_RNO_0[3]\ : OR3
      port map(A => \data_send_buffer_RNO_3[3]_net_1\, B => 
        \data_send_buffer_4_5[3]\, C => \data_send_buffer_4_9[3]\, 
        Y => \data_send_buffer_4_14[3]\);
    
    \data_all_RNO[11]\ : NOR2A
      port map(A => N_644, B => N_398, Y => N_327);
    
    \data_send_buffer_RNO_24[3]\ : NOR3C
      port map(A => \data_send_buffer_4_1_0_a0_2[3]\, B => 
        \data_send_buffer_4_1_0_a0_1[3]\, C => N_1634, Y => 
        \data_send_buffer_4_1_0_a0_4[3]\);
    
    \data_all_RNO_1[66]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[2]\, Y => N_813);
    
    \data_all_RNO_1[97]\ : NOR3A
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[1]\, Y => N_747);
    
    \data_send_buffer_RNO_27[5]\ : NOR3A
      port map(A => \data_send_buffer_4_1_0_11_a0_2_0[5]\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \data_send_buffer_4_1_0_11_a0_2[5]\);
    
    \data_all_RNO_0[82]\ : NOR2A
      port map(A => \data_all[82]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[82]\);
    
    send_end_RNO_17 : XOR2
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_send[0]_net_1\, Y => N_587_i);
    
    \data_all_RNO[151]\ : AO1
      port map(A => \data_all[151]_net_1\, B => N_1860, C => 
        N_1788, Y => N_1610);
    
    \data_all_RNO_1[10]\ : NOR2
      port map(A => N_1636, B => \data_recive_buffer[2]\, Y => 
        N_1520);
    
    \data_send_buffer[4]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[4]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[4]_net_1\);
    
    \data_all_RNO_1[110]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        N_847_2_i, C => \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, 
        Y => N_721);
    
    \cnt_send_RNID0E21[0]\ : XA1B
      port map(A => \cnt_send[1]_net_1\, B => \cnt_send[0]_net_1\, 
        C => N_398, Y => cnt_send_n1);
    
    vld_send_RNO : OA1B
      port map(A => un12_cnt_delay, B => cnt_flag_0_sqmuxa_1, C
         => N_398, Y => vld_send_0_sqmuxa);
    
    \data_all_RNO_0[106]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[106]_net_1\, Y => N_728);
    
    \data_send_buffer_RNO_24[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_7_0_m2_0_a2_0, B => 
        \data_send_buffer_RNO_28[4]_net_1\, Y => 
        data_send_buffer_4_1_7_4_m2_0_a2_1);
    
    \data_all_RNO_0[46]\ : MX2A
      port map(A => N_847_2_i, B => \data_all[46]_net_1\, S => 
        N_1628, Y => N_1653);
    
    \cnt_send_RNIS3S66[19]\ : NOR3C
      port map(A => cnt_send_c13_m6_0_a2_4, B => 
        cnt_send_c18_m6_0_a2_7, C => \cnt_send[19]_net_1\, Y => 
        cnt_send_c19);
    
    \data_all_RNO[68]\ : AO1
      port map(A => \data_all[68]_net_1\, B => N_1051, C => 
        N_1715, Y => N_212);
    
    \data_all_RNO_0[89]\ : AO1A
      port map(A => \data_all[89]_net_1\, B => N_1618, C => N_398, 
        Y => \data_all_4_i_0[89]\);
    
    \data_send_buffer_RNO_26[1]\ : OR3A
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => N_398, C => data_send_buffer_4_1_1_1_m3_0_1, Y => 
        \data_send_buffer_RNO_26[1]_net_1\);
    
    \data_send_buffer_RNO_24[1]\ : NOR3B
      port map(A => \data_send_buffer_4_1_a2_1[1]\, B => 
        \data_send_buffer_4_1_a2_2[1]\, C => I_20_1, Y => 
        \data_send_buffer_4_1_a2_4[1]\);
    
    \data_all_RNO[116]\ : MX2
      port map(A => \single_recive_0.N_172\, B => 
        \data_all_4_i_i_a4_0[116]\, S => N_1617, Y => N_1604);
    
    \data_send_buffer_RNO_20[1]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[89]_net_1\, Y => N_579);
    
    \data_send_buffer_RNO_19[6]\ : MX2
      port map(A => \data_all[54]_net_1\, B => 
        \data_all[62]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1650);
    
    \data_all_RNO[29]\ : NOR2A
      port map(A => N_1658, B => N_398, Y => N_293);
    
    \cnt_recive[8]\ : DFN1E0C0
      port map(D => cnt_recive_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[8]_net_1\);
    
    \data_send_buffer_RNO_6[1]\ : OR3
      port map(A => N_585, B => N_573, C => N_574, Y => 
        \data_send_buffer_4_1_4[1]\);
    
    \cnt_recive_RNIR3O63[10]\ : NOR3C
      port map(A => un5_idle_recive_13, B => un5_idle_recive_12, 
        C => un5_idle_recive_10_0, Y => un5_idle_recive_16);
    
    \data_send_buffer_RNO_1[3]\ : OR3
      port map(A => \data_send_buffer_4_4[3]\, B => N_1799, C => 
        \data_send_buffer_4_7[3]\, Y => 
        \data_send_buffer_4_13[3]\);
    
    \data_all_RNO[148]\ : AO1
      port map(A => \data_all[148]_net_1\, B => N_1860, C => 
        N_1782, Y => N_1608);
    
    \data_send_buffer_RNO_29[7]\ : NOR2B
      port map(A => N_1849, B => \data_all[71]_net_1\, Y => 
        data_send_buffer_4_1_a2_16_out_2);
    
    \data_all_RNO[60]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[60]\, B => 
        \single_recive_0.N_172\, S => N_383_i_0_o4_N_5_mux, Y => 
        N_202);
    
    \data_send_buffer_RNO_26[7]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_35_0_a4_stt_7_N_5_mux, 
        B => data_send_buffer_4_1_a2_2_7_m2_e_0, C => N_1840, Y
         => data_send_buffer_4_1_a2_2_7_m2_e_2);
    
    \data_all_RNO_0[131]\ : OA1C
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[131]_net_1\, Y => N_678);
    
    \cnt_send_RNO_1[28]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => cnt_send_95_1, C
         => cnt_send_95_4, Y => cnt_send_95_5);
    
    \cnt_recive[17]\ : DFN1E0C0
      port map(D => cnt_recive_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[17]_net_1\);
    
    \cnt_send_RNI9VDI[28]\ : NOR2B
      port map(A => cnt_send_95_1, B => \cnt_send[28]_net_1\, Y
         => cnt_send_c28_m6_0_a2_3);
    
    \data_all[15]\ : DFN1E0C0
      port map(D => N_319, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[15]_net_1\);
    
    \data_send_buffer_RNO_10[0]\ : OR3
      port map(A => \data_send_buffer_4_1_7[0]\, B => 
        \data_send_buffer_4_1_6[0]\, C => 
        \data_send_buffer_4_1_4[0]\, Y => 
        \data_send_buffer_4_1_6_0[0]\);
    
    \data_all_RNO_0[32]\ : AO1A
      port map(A => \data_all[32]_net_1\, B => N_1633, C => N_398, 
        Y => \data_all_4_i_0[32]\);
    
    \data_send_buffer_RNO_8[0]\ : NOR2B
      port map(A => \data_all[48]_net_1\, B => N_1574, Y => N_604);
    
    \data_all_RNO_0[60]\ : NOR2A
      port map(A => \data_all[60]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[60]\);
    
    \cnt_recive_end_RNIAQCU[4]\ : NOR2B
      port map(A => cnt_recive_end_c3, B => 
        \cnt_recive_end[4]_net_1\, Y => cnt_recive_end_c4);
    
    \cnt_delay_RNIQH11_0[4]\ : NOR3B
      port map(A => \cnt_delay[5]_net_1\, B => un12_cnt_delay_1, 
        C => \cnt_delay[4]_net_1\, Y => un12_cnt_delay_4);
    
    \cnt_send_RNI8FSH2[1]\ : NOR3B
      port map(A => N_1840, B => 
        data_send_buffer_4_1_a2_23_0_a4_7_m2_e_1, C => N_398, Y
         => N_982);
    
    \data_all[128]\ : DFN1E0C0
      port map(D => N_97, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[128]_net_1\);
    
    \cnt_recive_RNINBST_0[2]\ : OR2A
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => N_364);
    
    \data_send_buffer_RNO_17[0]\ : OA1B
      port map(A => \data_send_buffer_4_1_5_tz[0]\, B => 
        \data_send_buffer_4_1_4_0[0]\, C => N_398, Y => 
        \data_send_buffer_4_1_0[0]\);
    
    \data_send_buffer_RNO_20[7]\ : NOR3A
      port map(A => data_send_buffer_4_1_a2_19_7_m6_0_a2_0, B => 
        I_12_1, C => I_14_1, Y => 
        data_send_buffer_4_1_a2_19_7_m6_0_a2_2);
    
    \cnt_send_RNO[6]\ : XA1B
      port map(A => cnt_send_c5, B => \cnt_send[6]_net_1\, C => 
        N_398, Y => cnt_send_n6);
    
    \data_all[151]\ : DFN1E0C0
      port map(D => N_1610, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[151]_net_1\);
    
    \data_all_RNO[92]\ : NOR2
      port map(A => N_1662, B => N_398, Y => N_169);
    
    \data_all_RNO_0[156]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \single_recive_0.N_172\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1792);
    
    \cnt_recive_RNO[24]\ : XA1B
      port map(A => cnt_recive_c23, B => \cnt_recive[24]_net_1\, 
        C => N_398, Y => cnt_recive_n24);
    
    \data_all_RNO_0[11]\ : MX2
      port map(A => \data_recive_buffer[3]\, B => 
        \data_all[11]_net_1\, S => N_1636, Y => N_644);
    
    \cnt_recive_RNI4JQC1[3]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => N_362, Y => 
        \data_all_4_i_o2_i_o4_0[95]\);
    
    \data_all_RNO_0[39]\ : NOR2A
      port map(A => N_1633, B => \data_all[39]_net_1\, Y => 
        N_1475);
    
    \cnt_send_RNO[23]\ : XA1B
      port map(A => cnt_send_c22, B => \cnt_send[23]_net_1\, C
         => N_398, Y => cnt_send_n23);
    
    \cnt_recive_RNI5KQC1[3]\ : NOR3B
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        data_all_4_i_o2_i_o4_159_m2_e_1);
    
    \data_all_RNO_0[0]\ : NOR2
      port map(A => \data_all[0]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1539);
    
    idle_send_fall : DFN1C0
      port map(D => idle_send_fall_2, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_fall\);
    
    \data_all_RNO_1[75]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[3]\, Y => N_789);
    
    \data_all_RNO_0[48]\ : AO1A
      port map(A => \data_all[48]_net_1\, B => N_457, C => N_398, 
        Y => \data_all_4_i_0[48]\);
    
    \cnt_recive_RNO_0[17]\ : NOR2B
      port map(A => cnt_recive_c15, B => \cnt_recive[16]_net_1\, 
        Y => cnt_recive_c16);
    
    \cnt_recive_RNI5BLS5_0[1]\ : NOR3A
      port map(A => data_all_4_i_i_o2_144_m2_e_0, B => N_433, C
         => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_i_o2_144_m2_e_2);
    
    \cnt_send_RNILBMG1[1]\ : NOR3B
      port map(A => \cnt_send[1]_net_1\, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_398, Y
         => N_1852);
    
    \cnt_recive_RNO_0[24]\ : NOR2B
      port map(A => cnt_recive_c22, B => \cnt_recive[23]_net_1\, 
        Y => cnt_recive_c23);
    
    \cnt_send[7]\ : DFN1E1C0
      port map(D => cnt_send_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[7]_net_1\);
    
    \cnt_recive_RNO[29]\ : XA1B
      port map(A => cnt_recive_c28, B => \cnt_recive[29]_net_1\, 
        C => N_398, Y => cnt_recive_n29);
    
    \data_all_RNO_0[125]\ : NOR2B
      port map(A => \single_recive_0.N_171\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_857);
    
    \data_all_RNO[65]\ : NOR3
      port map(A => N_814, B => N_398, C => N_815, Y => N_221);
    
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
    
    \data_send_buffer_RNO_17[4]\ : NOR2B
      port map(A => \data_all[36]_net_1\, B => N_1580, Y => N_528);
    
    \data_send_buffer_RNO_21[7]\ : NOR2
      port map(A => N_1667, B => N_1665, Y => 
        \data_send_buffer_RNO_21[7]_net_1\);
    
    send_end_RNO_41 : XOR2
      port map(A => \cnt_recive[29]_net_1\, B => 
        \cnt_send[29]_net_1\, Y => un12_cnt_send_29);
    
    \cnt_send_RNO_0[10]\ : NOR2B
      port map(A => cnt_send_c8, B => \cnt_send[9]_net_1\, Y => 
        cnt_send_c9);
    
    send_end_RNI5FJ66 : NOR2
      port map(A => data_all_4_i_i_o2_144_N_5_mux, B => N_398, Y
         => N_1860);
    
    \data_all_RNO_0[113]\ : AO1A
      port map(A => \data_all[113]_net_1\, B => N_1617, C => 
        N_398, Y => \data_all_4_i_0[113]\);
    
    \cnt_recive_RNIPDST_0[2]\ : OR2A
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_434);
    
    \data_send_buffer_RNO_17[6]\ : MX2
      port map(A => \data_all[22]_net_1\, B => 
        \data_all[30]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1652);
    
    \data_send_buffer_RNO_13[2]\ : NOR2B
      port map(A => \data_all[18]_net_1\, B => N_982, Y => N_563);
    
    \data_send_buffer_4_1_a2_2_0[1]\ : NOR2
      port map(A => I_14_1, B => I_17_1, Y => 
        \data_send_buffer_4_1_a2_2[1]\);
    
    \cnt_send_RNI56991[2]\ : NOR2B
      port map(A => cnt_send_c1, B => \cnt_send[2]_net_1\, Y => 
        cnt_send_c2);
    
    \data_send_buffer_RNO_4[7]\ : NOR2B
      port map(A => \data_all[159]_net_1\, B => N_1576, Y => 
        N_462);
    
    \data_all[124]\ : DFN1E0C0
      port map(D => N_105, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[124]_net_1\);
    
    \cnt_delay[3]\ : DFN1E1C0
      port map(D => cnt_delay_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[3]_net_1\);
    
    \cnt_recive_RNIDSQC1[5]\ : NOR3C
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[5]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        cnt_recive_c6_m2_0_a2_2);
    
    \data_send_buffer_RNO_1[2]\ : OR3
      port map(A => N_569, B => \data_send_buffer_4_1_5[2]\, C
         => \data_send_buffer_4_1_8[2]\, Y => 
        \data_send_buffer_4_1_14[2]\);
    
    \data_all_RNO[119]\ : MX2
      port map(A => \single_recive_0.N_169\, B => 
        data_all_4_i_i_a4_out, S => N_1617, Y => N_280);
    
    \cnt_recive_RNICR3EC[28]\ : NOR2B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        Y => cnt_recive_c28);
    
    \cnt_recive[13]\ : DFN1E0C0
      port map(D => cnt_recive_n13, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[13]_net_1\);
    
    send_end_RNO_11 : XOR2
      port map(A => \cnt_send[1]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => N_452_i);
    
    \data_send_buffer_RNO_21[0]\ : NOR2B
      port map(A => \data_all[16]_net_1\, B => N_982, Y => N_605);
    
    send_end_RNO_9 : XOR2
      port map(A => \cnt_recive[28]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => N_589_i);
    
    un20_data_send_buffer_1_I_15 : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\);
    
    \data_all[2]\ : DFN1E0C0
      port map(D => N_345, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[2]_net_1\);
    
    \cnt_recive_RNINSAE3[20]\ : NOR3C
      port map(A => cnt_recive_c24_m6_0_a2_3, B => 
        cnt_recive_c24_m6_0_a2_2, C => cnt_recive_c1, Y => 
        cnt_recive_c24_m6_0_a2_6);
    
    \cnt_delay[1]\ : DFN1E1C0
      port map(D => cnt_delay_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[1]_net_1\);
    
    \cnt_send_RNI32KF2[26]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_0_19_5, B => 
        send_end_0_sqmuxa_i_a2_0_19_4, Y => 
        send_end_0_sqmuxa_i_a2_0_19);
    
    \data_send_buffer_RNO_9[6]\ : MX2
      port map(A => N_1647, B => N_631_3, S => 
        \cnt_send_0[1]_net_1\, Y => N_775_3);
    
    \data_send_buffer_RNO_13[0]\ : NOR3B
      port map(A => data_send_buffer_4_1_7_0_m2_0_a2_0, B => 
        N_1841, C => \data_send_buffer_RNO_19[0]_net_1\, Y => 
        \data_send_buffer_4_1_7[0]\);
    
    \cnt_recive_RNISVMA2_0[4]\ : NOR2B
      port map(A => cnt_recive_c3, B => \cnt_recive[4]_net_1\, Y
         => cnt_recive_c4);
    
    \cnt_recive[5]\ : DFN1E0C0
      port map(D => cnt_recive_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[5]_net_1\);
    
    \data_all_RNO[79]\ : NOR3
      port map(A => N_782, B => N_398, C => N_783, Y => N_195);
    
    \cnt_delay_RNINIG[1]\ : NOR2B
      port map(A => \cnt_delay[0]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => cnt_delay_c1);
    
    send_end_RNO_18 : XO1
      port map(A => \cnt_send[18]_net_1\, B => 
        \cnt_recive[18]_net_1\, C => un12_cnt_send_20, Y => 
        send_end_0_sqmuxa_i_2);
    
    \data_all_RNO_1[138]\ : NOR3
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_recive_buffer[2]\, Y => N_665);
    
    \data_all_RNO[5]\ : OA1C
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[5]\, C => \data_all_4_i_0[5]\, Y => 
        N_339);
    
    \cnt_recive_RNI7MQC1[2]\ : OR3A
      port map(A => \cnt_recive[4]_net_1\, B => 
        \cnt_recive[2]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        N_433);
    
    \data_all_RNO[31]\ : NOR2
      port map(A => N_1659, B => N_398, Y => N_289);
    
    \data_send_buffer_RNO_23[3]\ : NOR2A
      port map(A => \data_all[3]_net_1\, B => N_398, Y => 
        \data_send_buffer_4_1_0_0_a1_0[3]\);
    
    \cnt_send_RNIGA2D[28]\ : NOR2A
      port map(A => \cnt_send[28]_net_1\, B => N_398, Y => N_1665);
    
    \data_all_RNO_0[94]\ : AO1A
      port map(A => \data_all[94]_net_1\, B => N_1618, C => N_398, 
        Y => \data_all_4_i_0[94]\);
    
    \cnt_send_RNIJUGR[4]\ : NOR2B
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[4]_net_1\, 
        Y => cnt_send_c11_m6_0_a2_5);
    
    \cnt_recive[4]\ : DFN1E0C0
      port map(D => cnt_recive_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[4]_net_1\);
    
    \cnt_recive_RNICPP15[1]\ : NOR3A
      port map(A => N_387_i_0_o2_m2_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        N_387_i_0_o2_N_5_mux);
    
    \cnt_recive_RNI57MV5_1[0]\ : OR3A
      port map(A => data_all_4_i_o2_0_47_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_362, Y
         => N_395);
    
    \data_all_RNO_0[62]\ : NOR2B
      port map(A => N_1711_1, B => N_383_i_0_o4_N_5_mux, Y => 
        N_1711);
    
    \cnt_recive_RNI57MV5[0]\ : NOR3A
      port map(A => data_all_4_i_i_a4_142_m4_e_0, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        N_449_i_0_o4_0, Y => \cnt_recive_RNI57MV5[0]_net_1\);
    
    \data_send_buffer_RNO_19[0]\ : MX2C
      port map(A => \data_all[72]_net_1\, B => 
        \data_all[104]_net_1\, S => \cnt_send_0[2]_net_1\, Y => 
        \data_send_buffer_RNO_19[0]_net_1\);
    
    \cnt_send_0_RNIKCMJ7[2]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_19tt_7_m3_e_0, B => 
        send_end_0_sqmuxa_i_a2_0_20, C => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2, Y => N_1667);
    
    \data_send_buffer_RNO_32[7]\ : NOR3B
      port map(A => \data_send_buffer_4_1_1_a1_3_0[7]\, B => 
        \data_send_buffer_4_1_1_a1_3_1[0]\, C => 
        \cnt_send_0[1]_net_1\, Y => 
        \data_send_buffer_4_1_1_a1_3[7]\);
    
    \data_all_RNO_0[97]\ : OA1C
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[97]_net_1\, Y => N_746);
    
    \data_send_buffer_RNO_18[1]\ : NOR2B
      port map(A => \data_all[137]_net_1\, B => N_1585, Y => 
        N_576);
    
    \data_all_RNO[89]\ : OA1B
      port map(A => \data_recive_buffer[1]\, B => N_1618, C => 
        \data_all_4_i_0[89]\, Y => N_175);
    
    \cnt_send[9]\ : DFN1E1C0
      port map(D => cnt_send_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[9]_net_1\);
    
    \data_all_RNO[48]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_457, C => 
        \data_all_4_i_0[48]\, Y => N_255);
    
    \cnt_recive_RNI5BLS5_3[1]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_0, B => N_432, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_o2_i_o4_111_m2_e_2);
    
    \data_all_RNO_0[85]\ : NOR2A
      port map(A => \data_all[85]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[85]\);
    
    \cnt_recive_RNO_0[30]\ : NOR2A
      port map(A => \cnt_recive[29]_net_1\, B => N_398, Y => 
        cnt_recive_161_0);
    
    \cnt_recive_end_RNO[6]\ : NOR2B
      port map(A => cnt_recive_end_0_sqmuxa, B => 
        cnt_recive_end_n6_tz, Y => cnt_recive_end_n6);
    
    \cnt_send_0[2]\ : DFN1E1C0
      port map(D => cnt_send_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send_0[2]_net_1\);
    
    \data_all_RNO_0[145]\ : NOR2B
      port map(A => N_1052, B => data_all_4_i_i_o2_144_N_5_mux, Y
         => N_1776);
    
    \data_all_RNO_1[39]\ : NOR2
      port map(A => \data_recive_buffer[7]\, B => N_1633, Y => 
        N_874);
    
    \data_all_RNO_0[50]\ : AO1A
      port map(A => \data_all[50]_net_1\, B => N_457, C => N_398, 
        Y => \data_all_4_i_0[50]\);
    
    \cnt_send_RNI687C2[2]\ : NOR2B
      port map(A => N_1852, B => N_1848, Y => N_1570);
    
    \data_all[152]\ : DFN1E0C0
      port map(D => N_49, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[152]_net_1\);
    
    \cnt_send[15]\ : DFN1E1C0
      port map(D => cnt_send_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[15]_net_1\);
    
    \data_all[137]\ : DFN1E0C0
      port map(D => N_79, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[137]_net_1\);
    
    \data_all_RNO_1[54]\ : NOR2
      port map(A => \data_recive_buffer[6]\, B => N_457, Y => 
        N_837);
    
    \cnt_send_RNO_1[27]\ : NOR3C
      port map(A => cnt_send_c26_m5_0_a2_2, B => 
        \cnt_send_0[4]_net_1\, C => N_1851, Y => 
        cnt_send_c26_m5_0_a2_4);
    
    \cnt_send_RNO[14]\ : XA1B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, C
         => N_398, Y => cnt_send_n14);
    
    send_end_RNO_37 : XO1
      port map(A => \cnt_send[30]_net_1\, B => 
        \cnt_recive[30]_net_1\, C => un12_cnt_send_29, Y => 
        send_end_0_sqmuxa_i_0);
    
    \data_all_RNO_0[69]\ : NOR3B
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_171\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1717);
    
    \cnt_recive_end_RNISSKG1[7]\ : NOR2B
      port map(A => cnt_recive_end_c6, B => receive_end2lto7, Y
         => cnt_recive_end_c7);
    
    \data_all[95]\ : DFN1E0C0
      port map(D => N_163, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[95]_net_1\);
    
    \cnt_send_RNINP7C[15]\ : NOR2B
      port map(A => \cnt_send[15]_net_1\, B => 
        \cnt_send[14]_net_1\, Y => cnt_send_c15_m3_0_a2_0);
    
    \data_send_buffer_RNO_8[1]\ : NOR2B
      port map(A => \data_all[65]_net_1\, B => N_1569, Y => N_591);
    
    \cnt_recive_RNIL9ST_0[1]\ : NOR2A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, Y => data_all_4_i_i_o2_144_m2_e_0);
    
    \data_all_RNO_1[57]\ : NOR2A
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_831);
    
    \data_all_RNO_0[137]\ : OA1B
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_all[137]_net_1\, Y => N_666);
    
    \cnt_recive_RNIRE4Q[12]\ : NOR2B
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[13]_net_1\, Y => cnt_recive_c17_m6_0_a2_4_2);
    
    \cnt_recive_RNIAE0S[10]\ : NOR2B
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[5]_net_1\, Y => cnt_recive_c10_m6_0_a2_0);
    
    \data_send_buffer_RNO_5[5]\ : OR3
      port map(A => \data_send_buffer_4_1_0_1[5]\, B => N_1668, C
         => \data_send_buffer_4_1_0_6[5]\, Y => 
        \data_send_buffer_4_1_0_12[5]\);
    
    un1_cnt_flag_1_I_10 : XOR2
      port map(A => \cnt_flag[1]_net_1\, B => 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_TMP[0]\, Y => I_10);
    
    \data_all_RNO[40]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_1628, C => 
        \data_all_4_i_0[40]\, Y => N_271);
    
    \cnt_recive_RNIEVOU4[0]\ : NOR3B
      port map(A => data_all_4_i_o2_0_47_m2_e_0, B => 
        \cnt_recive[0]_net_1\, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_o2_0_47_m2_e_2);
    
    \data_all_RNO[124]\ : NOR3
      port map(A => N_692, B => N_398, C => N_693, Y => N_105);
    
    \cnt_send_RNIHSGR[2]\ : NOR2B
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_1851);
    
    \cnt_send_RNIL4Q71[8]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_19_3, B => 
        \cnt_send[9]_net_1\, C => \cnt_send[8]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_19_5);
    
    \data_send_buffer_RNO_3[1]\ : NOR2B
      port map(A => \data_all[73]_net_1\, B => N_1572, Y => N_587);
    
    \data_all_RNO_0[6]\ : NOR2A
      port map(A => \data_all[6]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[6]\);
    
    \data_all_RNO[137]\ : NOR3
      port map(A => N_666, B => N_398, C => N_667, Y => N_79);
    
    \cnt_send_RNI87VA2[2]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_m3_e_0_0, B => N_1840, 
        Y => N_1865);
    
    \cnt_recive_RNO[6]\ : XA1B
      port map(A => cnt_recive_c5, B => \cnt_recive[6]_net_1\, C
         => N_398, Y => cnt_recive_n6);
    
    \data_all_RNO[105]\ : NOR3
      port map(A => N_730, B => N_398, C => N_731, Y => N_143);
    
    \cnt_send_RNO[27]\ : XA1B
      port map(A => cnt_send_c26, B => \cnt_send[27]_net_1\, C
         => N_398, Y => cnt_send_n27);
    
    \cnt_recive_RNIENOR1[3]\ : NOR2B
      port map(A => cnt_recive_c2, B => \cnt_recive[3]_net_1\, Y
         => cnt_recive_c3);
    
    \data_send_buffer_RNO_2[1]\ : OR3
      port map(A => \data_send_buffer_4_1_7[1]\, B => 
        \data_send_buffer_4_1_6[1]\, C => 
        \data_send_buffer_4_1_12[1]\, Y => 
        \data_send_buffer_4_1_16[1]\);
    
    \data_send_buffer_RNO_29[2]\ : NOR3C
      port map(A => N_1854, B => \data_all[130]_net_1\, C => 
        N_1847, Y => N_555);
    
    \data_all[139]\ : DFN1E0C0
      port map(D => N_75, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[139]_net_1\);
    
    \data_all_RNO_0[71]\ : NOR3B
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_169\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1721);
    
    \cnt_send_0_RNINFDG3[4]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_0_19, B => 
        un18_data_send_bufferlto31_i_a2tt_N_5_mux, Y => 
        data_send_buffer_4_1_a2_19tt_7_m3_e_0);
    
    un1_cnt_flag_1_I_8 : XOR2
      port map(A => \cnt_flag[0]_net_1\, B => end_flag_RNI256BD, 
        Y => \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\);
    
    \data_all[55]\ : DFN1E0C0
      port map(D => N_200, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[55]_net_1\);
    
    \data_all_RNO_0[35]\ : NOR3A
      port map(A => \data_all[35]_net_1\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]_net_1\, C => 
        N_398, Y => N_1694);
    
    \cnt_recive_RNI5BLS5_6[1]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_1, B => N_432, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_385_i_0_o4_m2_e_3);
    
    \cnt_send_RNINR1F2_0[2]\ : NOR2B
      port map(A => N_1853, B => N_1849, Y => N_1569);
    
    idle_send_down_RNIU78E_0 : OR2
      port map(A => \idle_send_down\, B => N_398, Y => 
        cnt_sende_0);
    
    send_end_RNO_24 : XOR2
      port map(A => \cnt_recive[15]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => un12_cnt_send_15);
    
    \data_all_RNO[45]\ : NOR2A
      port map(A => N_1655, B => N_398, Y => N_261);
    
    \cnt_recive[20]\ : DFN1E0C0
      port map(D => cnt_recive_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[20]_net_1\);
    
    \data_send_buffer_RNO_18[2]\ : AO1A
      port map(A => N_1888, B => 
        data_send_buffer_4_1_a2_18_2_m2_0_a2_3, C => N_552, Y => 
        \data_send_buffer_4_1_0[2]\);
    
    \cnt_send_RNIJ5AT2[12]\ : NOR2B
      port map(A => cnt_send_c13_m6_0_a2_4_6, B => 
        cnt_send_c13_m6_0_a2_4_5, Y => cnt_send_c13_m6_0_a2_4);
    
    \data_send_buffer_RNO_21[5]\ : NOR3C
      port map(A => N_1850, B => \data_all[29]_net_1\, C => 
        N_1841, Y => N_1822);
    
    \data_send_buffer_RNO_21[6]\ : MX2
      port map(A => \data_all[86]_net_1\, B => 
        \data_all[94]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_567_3);
    
    \data_all_RNO[102]\ : AO1
      port map(A => \data_all[102]_net_1\, B => N_983, C => 
        N_1739, Y => N_258);
    
    \cnt_send_0_RNIUM0S[4]\ : NOR3A
      port map(A => \cnt_send_0[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1);
    
    \cnt_recive_RNINA4Q[11]\ : NOR2B
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[11]_net_1\, Y => cnt_recive_c17_m6_0_a2_4_3);
    
    \cnt_recive_RNI5BLS5_1[1]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_127_m2_e_1, B => N_432, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_o2_i_o4_127_m2_e_3);
    
    \data_all[71]\ : DFN1E0C0
      port map(D => N_220, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[71]_net_1\);
    
    \data_all[133]\ : DFN1E0C0
      port map(D => N_296, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[133]_net_1\);
    
    \cnt_recive_end[4]\ : DFN1C0
      port map(D => cnt_recive_end_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[4]_net_1\);
    
    \cnt_send_RNINR1F2[28]\ : NOR3C
      port map(A => N_1840, B => 
        data_send_buffer_4_1_a2_35_0_a4_stt_7_N_5_mux, C => 
        N_1838, Y => N_1581);
    
    \cnt_recive_RNO[0]\ : NOR2
      port map(A => \cnt_recive[0]_net_1\, B => N_398, Y => N_458);
    
    \data_all[70]\ : DFN1E0C0
      port map(D => N_218, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[70]_net_1\);
    
    \data_all_RNO_0[4]\ : AO1D
      port map(A => \data_all[4]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[4]\);
    
    \data_all_RNO_0[105]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[105]_net_1\, Y => N_730);
    
    \cnt_send_RNIGRGR[1]\ : NOR2A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => data_send_buffer_4_1_7_0_m2_0_a2_0);
    
    \data_all_RNO[34]\ : AO1A
      port map(A => N_1633, B => \single_recive_0.N_174\, C => 
        N_1692, Y => N_176);
    
    \data_send_buffer_RNO_10[6]\ : MX2
      port map(A => N_487_3, B => N_1652, S => 
        \cnt_send_0[1]_net_1\, Y => N_647_3);
    
    \cnt_send_0_RNIVN0S[4]\ : NOR3B
      port map(A => \cnt_send_0[4]_net_1\, B => 
        \cnt_send_0[1]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_24_0_a2_7_m2_e_1);
    
    \cnt_send_0_RNIFARU[4]\ : NOR3
      port map(A => \cnt_send[0]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_23_0_a2_out);
    
    \data_send_buffer_RNO_12[1]\ : NOR2B
      port map(A => \data_all[49]_net_1\, B => N_1574, Y => N_584);
    
    \data_all_RNO[22]\ : MX2
      port map(A => \single_recive_0.N_170\, B => 
        data_all_4_i_i_a4_out_0, S => N_443, Y => N_164);
    
    \cnt_recive_RNIM8C01[1]\ : NOR2
      port map(A => N_1615, B => \cnt_recive[1]_net_1\, Y => 
        N_655_2);
    
    \data_all_RNO_0[52]\ : NOR2A
      port map(A => \data_all[52]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[52]\);
    
    \data_all[17]\ : DFN1E0C0
      port map(D => N_150, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[17]_net_1\);
    
    \data_send_buffer_RNO_14[5]\ : OR3
      port map(A => N_1827, B => N_1822, C => N_1826, Y => 
        \data_send_buffer_4_1_0_6[5]\);
    
    \data_all_RNO_0[128]\ : OA1C
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[128]_net_1\, Y => N_684);
    
    \data_all_RNO_0[21]\ : NOR2A
      port map(A => \data_all[21]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[21]\);
    
    \data_all_RNO[155]\ : AO1
      port map(A => \data_all[155]_net_1\, B => N_1047, C => 
        N_1790, Y => N_1611);
    
    \cnt_send[14]\ : DFN1E1C0
      port map(D => cnt_send_n14, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[14]_net_1\);
    
    \cnt_recive_end_RNI66AO[3]\ : NOR2B
      port map(A => cnt_recive_end_c2, B => receive_end2lto3, Y
         => cnt_recive_end_c3);
    
    \data_send_buffer_RNO_17[7]\ : AO1
      port map(A => \data_all[127]_net_1\, B => N_1578, C => 
        N_479, Y => \data_send_buffer_4_1_8[7]\);
    
    \data_send_buffer_RNO_27[1]\ : NOR2B
      port map(A => \data_all[41]_net_1\, B => N_1582, Y => N_588);
    
    \data_send_buffer_RNO_9[1]\ : AO1
      port map(A => \data_all[121]_net_1\, B => N_1578, C => 
        N_580, Y => \data_send_buffer_4_1_7[1]\);
    
    \data_send_buffer[3]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[3]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[3]_net_1\);
    
    \cnt_delay_RNO[4]\ : XA1B
      port map(A => cnt_delay_c3, B => \cnt_delay[4]_net_1\, C
         => N_398, Y => cnt_delay_n4);
    
    \data_all_RNO[13]\ : NOR2A
      port map(A => N_646, B => N_398, Y => N_323);
    
    \data_send_buffer_RNO_0[7]\ : OR3
      port map(A => \data_send_buffer_4_1_4[7]\, B => N_462, C
         => \data_send_buffer_4_1_7[7]\, Y => 
        \data_send_buffer_4_1_13[7]\);
    
    \data_all_RNO_0[40]\ : AO1A
      port map(A => \data_all[40]_net_1\, B => N_1628, C => N_398, 
        Y => \data_all_4_i_0[40]\);
    
    \data_all[141]\ : DFN1E0C0
      port map(D => N_306, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[141]_net_1\);
    
    \cnt_delay_RNIVQG[1]\ : NOR2A
      port map(A => \cnt_delay[8]_net_1\, B => 
        \cnt_delay[1]_net_1\, Y => un12_cnt_delay_1_0);
    
    \data_all[150]\ : DFN1E0C0
      port map(D => N_336, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[150]_net_1\);
    
    \data_all[21]\ : DFN1E0C0
      port map(D => N_1596, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[21]_net_1\);
    
    \data_all[116]\ : DFN1E0C0
      port map(D => N_1604, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[116]_net_1\);
    
    \data_send_buffer_RNO_4[3]\ : AO1
      port map(A => \data_all[147]_net_1\, B => N_984, C => 
        \data_send_buffer_4_2[3]\, Y => \data_send_buffer_4_5[3]\);
    
    \cnt_recive_end_RNI3J7I[1]\ : NOR3C
      port map(A => \cnt_recive_end[0]_net_1\, B => 
        \cnt_recive_end[1]_net_1\, C => receive_end2lto2, Y => 
        cnt_recive_end_c2);
    
    \cnt_recive[9]\ : DFN1E0C0
      port map(D => cnt_recive_n9, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[9]_net_1\);
    
    \data_send_buffer_RNO_21[1]\ : AO1
      port map(A => \data_all[129]_net_1\, B => N_1581, C => 
        N_588, Y => \data_send_buffer_4_1_2[1]\);
    
    \data_send_buffer_RNO_17[3]\ : AO1A
      port map(A => \data_send_buffer_4_1_a2_40_i_o4_2[7]_net_1\, 
        B => \data_send_buffer_4_1_0_a0_4[3]\, C => 
        \data_send_buffer_RNO_25[3]_net_1\, Y => 
        \data_send_buffer_4_1[3]\);
    
    \data_all_RNO_0[59]\ : NOR2
      port map(A => \data_all[59]_net_1\, B => 
        N_383_i_0_o4_N_5_mux, Y => N_826);
    
    \cnt_send_RNO[19]\ : NOR2A
      port map(A => cnt_send_n19_tz, B => N_398, Y => 
        cnt_send_n19);
    
    \data_send_buffer_RNO_23[5]\ : OA1
      port map(A => \data_send_buffer_4_1_0_11_a0_2[5]\, B => 
        \data_send_buffer_4_1_0_11_a1_2[5]\, C => 
        data_send_buffer_4_1_a2_23_0_a2_out, Y => 
        \data_send_buffer_4_1_0_12_0[5]\);
    
    \data_all[82]\ : DFN1E0C0
      port map(D => N_228, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[82]_net_1\);
    
    \data_all[20]\ : DFN1E0C0
      port map(D => N_1595, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[20]_net_1\);
    
    \data_send_buffer_4_1_a2_13_s[4]\ : AND2
      port map(A => \data_all[44]_net_1\, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, Y => 
        data_send_buffer_4_1_a2_13_out);
    
    \data_all_RNO[6]\ : MX2
      port map(A => \data_all_4_i_i_a4_0[6]\, B => 
        \single_recive_0.N_170\, S => N_397_i_0_o4_N_5_mux, Y => 
        N_134);
    
    \data_all_RNO[59]\ : NOR3
      port map(A => N_826, B => N_398, C => N_827, Y => N_233);
    
    send_end_RNO_31 : XOR2
      port map(A => \cnt_recive[16]_net_1\, B => 
        \cnt_send[16]_net_1\, Y => un12_cnt_send_16);
    
    \data_all_RNO[121]\ : NOR3
      port map(A => N_698, B => N_398, C => N_699, Y => N_111);
    
    \data_all[106]\ : DFN1E0C0
      port map(D => N_141, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[106]_net_1\);
    
    \data_all_RNO_1[142]\ : NOR3A
      port map(A => N_1770_1, B => N_431, C => N_449_i_0_o4_0, Y
         => N_1770);
    
    \data_all[61]\ : DFN1E0C0
      port map(D => N_204, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[61]_net_1\);
    
    \cnt_send_RNIAJE83[7]\ : NOR3C
      port map(A => \cnt_send[6]_net_1\, B => cnt_send_c5, C => 
        \cnt_send[7]_net_1\, Y => cnt_send_c7);
    
    \data_send_buffer_RNO_15[5]\ : AO1A
      port map(A => N_398, B => \data_send_buffer_4_1_0_12_0[5]\, 
        C => N_1837, Y => \data_send_buffer_4_1_0_0[5]\);
    
    \data_all_RNO_0[130]\ : OA1C
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[130]_net_1\, Y => N_680);
    
    \cnt_delay_RNO[0]\ : NOR2
      port map(A => \cnt_delay[0]_net_1\, B => N_398, Y => N_1465);
    
    \data_all_RNO[152]\ : NOR3
      port map(A => N_630, B => N_398, C => N_631, Y => N_49);
    
    \cnt_send_RNI89991[2]\ : NOR3
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        C => \cnt_send[1]_net_1\, Y => N_1843);
    
    \data_all[60]\ : DFN1E0C0
      port map(D => N_202, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[60]_net_1\);
    
    \data_all_RNO_0[155]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \single_recive_0.N_173\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1790);
    
    send_end_RNO_8 : NOR2
      port map(A => \cnt_send[30]_net_1\, B => 
        \cnt_send[29]_net_1\, Y => send_end_0_sqmuxa_i_a4_0);
    
    \cnt_recive_RNISVMA2[4]\ : OR3
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \data_all_4_i_o2_i_o4_0[39]\, 
        Y => \data_all_4_i_o2_i_o4_1[39]\);
    
    \data_send_buffer_RNO_29[1]\ : NOR2A
      port map(A => \data_all[1]_net_1\, B => N_398, Y => 
        data_send_buffer_4_1_a2_19_1_m2_e_0);
    
    send_end_RNO_38 : XOR2
      port map(A => \cnt_send[4]_net_1\, B => 
        \cnt_recive[4]_net_1\, Y => un12_cnt_send_4);
    
    \cnt_send_RNI6NJC1_0[1]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_23_0_a2_out, B => 
        \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_21_a2_0_out);
    
    \cnt_send_0_RNIMT4V1[4]\ : NOR2B
      port map(A => cnt_send_c1, B => cnt_send_c4_out, Y => 
        cnt_send_c4);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_6[111]\ : NOR2A
      port map(A => data_all_4_i_i_o2_144_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        data_all_4_i_i_o2_144_N_5_mux);
    
    \cnt_send[26]\ : DFN1E1C0
      port map(D => cnt_send_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[26]_net_1\);
    
    \data_all_RNO_0[65]\ : OA1C
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[65]_net_1\, Y => N_814);
    
    \cnt_send_0_RNI93FS4[4]\ : NOR2B
      port map(A => cnt_send_c13_m6_0_a2_4, B => cnt_send_c4, Y
         => cnt_send_c13);
    
    \data_all_RNO[100]\ : AO1
      port map(A => \data_all[100]_net_1\, B => N_983, C => 
        N_1735, Y => N_1598);
    
    \data_all[138]\ : DFN1E0C0
      port map(D => N_77, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[138]_net_1\);
    
    \cnt_recive_RNO[13]\ : XA1B
      port map(A => cnt_recive_c12, B => \cnt_recive[13]_net_1\, 
        C => N_398, Y => cnt_recive_n13);
    
    \data_send_buffer_RNO_20[5]\ : NOR2B
      port map(A => \data_all[21]_net_1\, B => N_982, Y => N_1827);
    
    \data_send_buffer_RNO_12[2]\ : NOR2B
      port map(A => \data_all[114]_net_1\, B => N_1584, Y => 
        N_560);
    
    \data_send_buffer_RNO_11[4]\ : NOR2B
      port map(A => \data_all[116]_net_1\, B => N_1584, Y => 
        N_518);
    
    \data_all[42]\ : DFN1E0C0
      port map(D => N_267, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[42]_net_1\);
    
    \cnt_send_RNO[25]\ : XA1B
      port map(A => cnt_send_c24, B => \cnt_send[25]_net_1\, C
         => N_398, Y => cnt_send_n25);
    
    \cnt_send[30]\ : DFN1E1C0
      port map(D => cnt_send_n30, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[30]_net_1\);
    
    send_end_RNO_6 : OR3
      port map(A => send_end_0_sqmuxa_i_2, B => 
        send_end_0_sqmuxa_i_1, C => send_end_0_sqmuxa_i_14, Y => 
        send_end_0_sqmuxa_i_21);
    
    \cnt_recive_RNI5BLS5[3]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_1, B => N_362, 
        C => \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_o2_i_o4_159_m2_e_3);
    
    \data_send_buffer_RNO_8[5]\ : AO1
      port map(A => \data_all[157]_net_1\, B => N_1576, C => 
        \data_send_buffer_4_1_0_3[5]\, Y => 
        \data_send_buffer_4_1_0_8[5]\);
    
    \data_all_RNO_1[130]\ : NOR3A
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[2]\, Y => N_681);
    
    \data_all[89]\ : DFN1E0C0
      port map(D => N_175, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[89]_net_1\);
    
    \data_all_RNO[17]\ : MX2
      port map(A => N_1052, B => \data_all_4_i_i_a4_0[17]\, S => 
        N_443, Y => N_150);
    
    \data_send_buffer_RNO_26[0]\ : NOR2B
      port map(A => \data_all[56]_net_1\, B => 
        \cnt_send[2]_net_1\, Y => data_send_buffer_4_1_6tt_0_N_2);
    
    \data_send_buffer_RNO_7[6]\ : MX2
      port map(A => N_647_3, B => N_679_3, S => 
        \cnt_send_0[2]_net_1\, Y => N_807_3);
    
    \cnt_send_RNO_0[30]\ : NOR2A
      port map(A => \cnt_send[29]_net_1\, B => N_398, Y => 
        cnt_send_99_0);
    
    \cnt_send_RNIF70Q[13]\ : NOR3C
      port map(A => \cnt_send[11]_net_1\, B => 
        \cnt_send[13]_net_1\, C => \cnt_send[7]_net_1\, Y => 
        cnt_send_c13_m6_0_a2_4_4);
    
    \cnt_send_RNI7RBI[18]\ : NOR3C
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[18]_net_1\, C => \cnt_send[14]_net_1\, Y => 
        cnt_send_c18_m6_0_a2_2);
    
    \data_send_buffer_RNO_8[4]\ : NOR2B
      port map(A => \data_all[156]_net_1\, B => N_1576, Y => 
        N_510);
    
    \cnt_recive_RNI7V4M1[11]\ : NOR3C
      port map(A => \cnt_recive[12]_net_1\, B => 
        \cnt_recive[11]_net_1\, C => cnt_recive_c14_m6_0_a2_2, Y
         => cnt_recive_c14_m6_0_a2_5);
    
    \cnt_delay_RNIKTO[2]\ : NOR2B
      port map(A => cnt_delay_c1, B => \cnt_delay[2]_net_1\, Y
         => cnt_delay_c2);
    
    \cnt_send_RNI6UKU[18]\ : NOR3C
      port map(A => \cnt_send[16]_net_1\, B => 
        \cnt_send[18]_net_1\, C => cnt_send_c24_m6_0_a2_4_4, Y
         => cnt_send_c24_m6_0_a2_4_6);
    
    \cnt_recive_RNIRJ527[20]\ : NOR2B
      port map(A => cnt_recive_c24_m6_0_a2_6, B => 
        cnt_recive_c19_m6_0_a2_3, Y => cnt_recive_c24_m6_0_a2_7);
    
    \data_send_buffer_RNO_7[2]\ : OR3
      port map(A => \data_send_buffer_4_1_7[2]\, B => 
        \data_send_buffer_4_1_0[2]\, C => N_554, Y => 
        \data_send_buffer_4_1_5[2]\);
    
    \data_all_RNO_0[148]\ : NOR2B
      port map(A => data_all_4_i_i_o2_144_N_5_mux, B => 
        \single_recive_0.N_172\, Y => N_1782);
    
    \data_all[3]\ : DFN1E0C0
      port map(D => N_343, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[3]_net_1\);
    
    \cnt_recive_RNO[4]\ : XA1B
      port map(A => cnt_recive_c3, B => \cnt_recive[4]_net_1\, C
         => N_398, Y => cnt_recive_n4);
    
    \cnt_recive_RNIK3RQ5[17]\ : NOR3C
      port map(A => un5_idle_recive_7_0, B => un5_idle_recive_6_0, 
        C => un5_idle_recive_15, Y => un5_idle_recive_18);
    
    \data_all_RNO[136]\ : NOR3
      port map(A => N_668, B => N_398, C => N_669, Y => N_81);
    
    send_end_RNIGSEU1 : NOR2A
      port map(A => data_send_buffer_4_1_a2_24_0_a2_7_m2_e_2, B
         => N_398, Y => N_1863);
    
    \data_all_RNO_0[13]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[13]_net_1\, S => N_1636, Y => N_646);
    
    \data_send_buffer[0]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[0]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[0]_net_1\);
    
    \data_all_RNO_0[8]\ : NOR2A
      port map(A => N_1636, B => \data_all[8]_net_1\, Y => N_1523);
    
    \cnt_recive_RNI5BLS5[12]\ : NOR2B
      port map(A => cnt_recive_c11, B => \cnt_recive[12]_net_1\, 
        Y => cnt_recive_c12);
    
    \data_send_buffer_RNO_7[1]\ : AO1
      port map(A => \data_all[33]_net_1\, B => N_1580, C => N_590, 
        Y => data_send_buffer_4_1_14_s_out);
    
    \data_send_buffer_RNO_5[3]\ : OA1
      port map(A => data_send_buffer_4_1_0_a4_16_out, B => 
        data_send_buffer_4_1_0_a4_15_out, C => N_1853, Y => 
        \data_send_buffer_4_9[3]\);
    
    \data_all_RNO_0[5]\ : AO1D
      port map(A => \data_all[5]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[5]\);
    
    \cnt_flag_RNO[0]\ : NOR3A
      port map(A => 
        \un1_cnt_flag_1.DWACT_ADD_CI_0_partial_sum[0]\, B => 
        N_398, C => cnt_flag_0_sqmuxa, Y => \cnt_flag_5[0]\);
    
    \data_all_RNO_1[74]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[2]\, Y => N_791);
    
    \cnt_send_RNIBDKI1[28]\ : NOR2B
      port map(A => cnt_send_c28_m6_0_a2_3, B => cnt_send_95_4, Y
         => cnt_send_c28_m6_0_a2_5);
    
    un20_data_send_buffer_1_I_19 : NOR2A
      port map(A => \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\, 
        B => \cnt_send[3]_net_1\, Y => 
        \un20_data_send_buffer_1.N_2\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_0[111]\ : OR2
      port map(A => \data_all_4_i_o2_i_o4_2[39]\, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1633);
    
    \data_all_RNO[72]\ : NOR3
      port map(A => N_794, B => N_398, C => N_795, Y => N_207);
    
    \data_all[157]\ : DFN1E0C0
      port map(D => N_1613, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[157]_net_1\);
    
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
    
    \data_all_RNO[16]\ : MX2
      port map(A => N_1053, B => \data_all_4_i_i_a4_0[16]\, S => 
        N_443, Y => N_146);
    
    \data_all_RNO_1[77]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[5]\, Y => N_785);
    
    \data_send_buffer_RNO_16[5]\ : AO1
      port map(A => \data_all[45]_net_1\, B => N_1582, C => 
        N_1836, Y => \data_send_buffer_4_1_0_3[5]\);
    
    \data_send_buffer_RNO_15[7]\ : AO1
      port map(A => \data_all[55]_net_1\, B => N_1574, C => N_480, 
        Y => \data_send_buffer_4_1_11[7]\);
    
    \data_all[134]\ : DFN1E0C0
      port map(D => N_298, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[134]_net_1\);
    
    \data_send_buffer_RNO_12[7]\ : NOR3A
      port map(A => data_send_buffer_4_1_a2_19_7_m6_0_a2_2, B => 
        \data_send_buffer_RNO_21[7]_net_1\, C => 
        \data_send_buffer_4_1_a2_40_i_o4_2[7]_net_1\, Y => N_1469);
    
    \data_all_RNO[114]\ : NOR3
      port map(A => N_712, B => N_398, C => N_713, Y => N_125);
    
    \data_send_buffer_RNO_3[5]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[93]_net_1\, Y => N_1819);
    
    \data_all_RNO_0[42]\ : AO1A
      port map(A => \data_all[42]_net_1\, B => N_1628, C => N_398, 
        Y => \data_all_4_i_0[42]\);
    
    \cnt_send_RNIPS8C[15]\ : NOR2B
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => cnt_send_95_1);
    
    \cnt_recive_RNO[10]\ : XA1B
      port map(A => cnt_recive_c9, B => \cnt_recive[10]_net_1\, C
         => N_398, Y => cnt_recive_n10);
    
    idle_recive_down_RNIIQRK_0 : CLKINT
      port map(A => \idle_recive_down_RNIIQRK\, Y => 
        cnt_recive_1_sqmuxa);
    
    \data_all_RNO[82]\ : MX2
      port map(A => \single_recive_0.N_174\, B => 
        \data_all_4_i_i_a4_0[82]\, S => N_442, Y => N_228);
    
    \data_all_RNO[1]\ : NOR3
      port map(A => N_1537, B => N_398, C => N_1538, Y => N_347);
    
    \cnt_recive_RNI5USJB[26]\ : NOR2B
      port map(A => cnt_recive_c25, B => \cnt_recive[26]_net_1\, 
        Y => cnt_recive_c26);
    
    \data_all_RNO[150]\ : AO1
      port map(A => \data_all[150]_net_1\, B => N_1860, C => 
        N_1786, Y => N_336);
    
    \data_all[142]\ : DFN1E0C0
      port map(D => N_310, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[142]_net_1\);
    
    \data_send_buffer_RNO_12[3]\ : AO1
      port map(A => \data_all[43]_net_1\, B => N_1582, C => 
        N_1807, Y => \data_send_buffer_4_2[3]\);
    
    \cnt_send[4]\ : DFN1E1C0
      port map(D => cnt_send_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[4]_net_1\);
    
    \data_all[14]\ : DFN1E0C0
      port map(D => N_1593, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[14]_net_1\);
    
    \data_all[97]\ : DFN1E0C0
      port map(D => N_159, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[97]_net_1\);
    
    \cnt_send_0[4]\ : DFN1E1C0
      port map(D => cnt_send_n4, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send_0[4]_net_1\);
    
    \data_all[159]\ : DFN1E0C0
      port map(D => N_1614, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[159]_net_1\);
    
    \cnt_send[29]\ : DFN1E1C0
      port map(D => cnt_send_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[29]_net_1\);
    
    \data_all_RNO_0[129]\ : OA1C
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[129]_net_1\, Y => N_682);
    
    \data_all_RNO_0[49]\ : NOR2A
      port map(A => N_457, B => \data_all[49]_net_1\, Y => N_846);
    
    \cnt_recive_RNIK2391[19]\ : NOR3C
      port map(A => \cnt_recive[18]_net_1\, B => 
        \cnt_recive[19]_net_1\, C => \cnt_recive[3]_net_1\, Y => 
        cnt_recive_c19_m6_0_a2_3_3);
    
    \data_send_buffer[5]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[5]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[5]_net_1\);
    
    \data_all_RNO_1[107]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[3]\, Y => N_727);
    
    \data_all[18]\ : DFN1E0C0
      port map(D => N_154, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[18]_net_1\);
    
    \cnt_recive_RNIMG971[1]\ : NOR3A
      port map(A => \cnt_recive[1]_net_1\, B => N_1615, C => 
        N_398, Y => N_1711_1);
    
    \data_all_RNO[69]\ : AO1
      port map(A => \data_all[69]_net_1\, B => N_1051, C => 
        N_1717, Y => N_216);
    
    \cnt_send_RNI5E6G1[2]\ : XA1B
      port map(A => cnt_send_c1, B => \cnt_send[2]_net_1\, C => 
        N_398, Y => cnt_send_n2);
    
    \data_all_RNO[147]\ : AO1
      port map(A => \data_all[147]_net_1\, B => N_1860, C => 
        N_1780, Y => N_1607);
    
    rx_uart_pad : INBUF
      port map(PAD => rx_uart, Y => rx_uart_c);
    
    \cnt_recive_RNI0L5Q[19]\ : NOR2
      port map(A => \cnt_recive[20]_net_1\, B => 
        \cnt_recive[19]_net_1\, Y => un5_idle_recive_6);
    
    \data_all_RNO_0[108]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \single_recive_0.N_172\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1743);
    
    \data_send_buffer_RNO_30[2]\ : NOR3A
      port map(A => \data_all[2]_net_1\, B => 
        \cnt_send_0[4]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_18_2_m2_0_a2_0);
    
    \data_send_buffer_RNO_28[7]\ : NOR2A
      port map(A => \data_all[7]_net_1\, B => \cnt_send[0]_net_1\, 
        Y => data_send_buffer_4_1_a2_19_7_m6_0_a2_0);
    
    \cnt_recive[15]\ : DFN1E0C0
      port map(D => cnt_recive_n15, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[15]_net_1\);
    
    \cnt_recive_RNI8V859[20]\ : NOR2B
      port map(A => cnt_recive_c19, B => \cnt_recive[20]_net_1\, 
        Y => cnt_recive_c20);
    
    \data_all_RNO_0[55]\ : NOR2A
      port map(A => \data_all[55]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_2);
    
    \data_all[153]\ : DFN1E0C0
      port map(D => N_47, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[153]_net_1\);
    
    \data_all_RNO_0[133]\ : NOR3B
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \single_recive_0.N_171\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1760);
    
    \data_all[57]\ : DFN1E0C0
      port map(D => N_237, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[57]_net_1\);
    
    \cnt_send_0_RNI62K31[2]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_send_0[2]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_38_0_a4_out);
    
    \data_send_buffer_RNO_19[4]\ : NOR3C
      port map(A => N_1840, B => 
        data_send_buffer_4_1_a2_23_0_a4_7_m2_e_1, C => 
        \data_all_4_i_i_a4_0[20]\, Y => N_521);
    
    \data_all_RNO_0[84]\ : NOR2A
      port map(A => \data_all[84]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[84]\);
    
    \data_all_RNO[139]\ : NOR3
      port map(A => N_662, B => N_398, C => N_663, Y => N_75);
    
    \data_all_RNO[33]\ : NOR3
      port map(A => N_1479, B => N_398, C => N_1480, Y => N_285);
    
    \data_all[115]\ : DFN1E0C0
      port map(D => N_1603, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[115]_net_1\);
    
    \data_all_RNO_1[152]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[0]\, Y => N_631);
    
    \cnt_send_RNIH90Q[4]\ : NOR2B
      port map(A => cnt_send_c15_m3_0_a2_0, B => 
        \cnt_send[4]_net_1\, Y => cnt_send_c15_m3_0_a2_1);
    
    \cnt_send_RNO[16]\ : NOR2A
      port map(A => cnt_send_n16_tz, B => N_398, Y => 
        cnt_send_n16);
    
    \cnt_recive_RNI3OST_0[7]\ : NOR2
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_recive[8]_net_1\, Y => un5_idle_recive_12);
    
    \data_all_RNO_0[87]\ : NOR2A
      port map(A => \data_all[87]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_4);
    
    \data_all[105]\ : DFN1E0C0
      port map(D => N_143, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[105]_net_1\);
    
    \cnt_send[27]\ : DFN1E1C0
      port map(D => cnt_send_n27, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[27]_net_1\);
    
    \data_send_buffer_RNO_24[0]\ : OA1
      port map(A => \data_send_buffer_4_1_1_a0_3[0]\, B => 
        \data_send_buffer_4_1_1_a1_3[0]\, C => N_1840, Y => 
        \data_send_buffer_4_1_4_0[0]\);
    
    \data_all_RNO_1[9]\ : NOR2
      port map(A => N_1636, B => \data_recive_buffer[1]\, Y => 
        N_1522);
    
    \cnt_delay_RNIPPHDD[4]\ : NOR3B
      port map(A => un12_cnt_delay_5, B => un12_cnt_delay_4, C
         => un5_idle_recive, Y => un12_cnt_delay);
    
    \cnt_recive_RNINI4T3[11]\ : NOR3C
      port map(A => cnt_recive_c14_m6_0_a2_4, B => 
        cnt_recive_c10_m6_0_a2_1, C => cnt_recive_c14_m6_0_a2_5, 
        Y => cnt_recive_c14_m6_0_a2_7);
    
    \data_send_buffer_RNO_4[0]\ : NOR2B
      port map(A => \data_all[112]_net_1\, B => N_1584, Y => 
        N_602);
    
    \cnt_recive[26]\ : DFN1E0C0
      port map(D => cnt_recive_n26, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[26]_net_1\);
    
    \data_all_RNO_0[116]\ : NOR2A
      port map(A => \data_all[116]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[116]\);
    
    send_end_RNO_14 : OR3
      port map(A => un12_cnt_send_6, B => N_592_i, C => 
        send_end_0_sqmuxa_i_10, Y => send_end_0_sqmuxa_i_17);
    
    \data_all[32]\ : DFN1E0C0
      port map(D => N_287, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[32]_net_1\);
    
    \cnt_recive_RNO_0[15]\ : AX1C
      port map(A => cnt_recive_c5, B => cnt_recive_c14_m6_0_a2_7, 
        C => \cnt_recive[15]_net_1\, Y => cnt_recive_n15_tz);
    
    \data_all_RNO_1[139]\ : NOR3
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_recive_buffer[3]\, Y => N_663);
    
    \data_send_buffer_RNO_12[4]\ : NOR2B
      port map(A => N_1851, B => \data_all[124]_net_1\, Y => 
        data_send_buffer_4_1_a2_3_out);
    
    \data_all_RNO_0[149]\ : NOR2B
      port map(A => data_all_4_i_i_o2_144_N_5_mux, B => 
        \single_recive_0.N_171\, Y => N_1784);
    
    \cnt_recive_RNO[3]\ : XA1B
      port map(A => cnt_recive_c2, B => \cnt_recive[3]_net_1\, C
         => N_398, Y => cnt_recive_n3);
    
    \cnt_delay[8]\ : DFN1E1C0
      port map(D => cnt_delay_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[8]_net_1\);
    
    \cnt_recive_RNO[12]\ : XA1B
      port map(A => cnt_recive_c11, B => \cnt_recive[12]_net_1\, 
        C => N_398, Y => cnt_recive_n12);
    
    \cnt_send[0]\ : DFN1E1C0
      port map(D => N_1466, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_sende, Q => \cnt_send[0]_net_1\);
    
    \cnt_delay[5]\ : DFN1E1C0
      port map(D => cnt_delay_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[5]_net_1\);
    
    \data_all_RNO_0[73]\ : NOR2
      port map(A => \data_all[73]_net_1\, B => 
        \un46_data_all[80]\, Y => N_792);
    
    \data_all_RNO_0[158]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[158]_net_1\, Y => N_618);
    
    \data_all_RNO[111]\ : AO1
      port map(A => \data_all[111]_net_1\, B => N_1105, C => 
        N_1747, Y => N_1602);
    
    \cnt_send[2]\ : DFN1E1C0
      port map(D => cnt_send_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[2]_net_1\);
    
    \cnt_send_RNI9GSJ[17]\ : NOR2
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[5]_net_1\, Y => send_end_0_sqmuxa_i_a2_0_20_6);
    
    \data_all_RNO_0[34]\ : NOR3A
      port map(A => \data_all[34]_net_1\, B => 
        \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]_net_1\, C => 
        N_398, Y => N_1692);
    
    \data_all_RNO[37]\ : NOR3
      port map(A => N_877, B => N_398, C => N_878, Y => N_277);
    
    \data_all[9]\ : DFN1E0C0
      port map(D => N_331, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[9]_net_1\);
    
    \cnt_recive_RNICVHN3[7]\ : NOR2B
      port map(A => cnt_recive_c6, B => \cnt_recive[7]_net_1\, Y
         => cnt_recive_c7);
    
    receive_end_RNO_1 : AO1
      port map(A => receive_end2lt7, B => receive_end2lto7, C => 
        receive_end2lto8, Y => receive_end2lt9);
    
    \data_all_RNO_0[91]\ : MX2
      port map(A => \data_recive_buffer[3]\, B => 
        \data_all[91]_net_1\, S => N_1618, Y => N_1661);
    
    \data_send_buffer_RNO_13[6]\ : MX2
      port map(A => N_1649, B => N_1648, S => 
        \cnt_send_0[1]_net_1\, Y => N_743_3);
    
    \data_send_buffer_RNO_25[2]\ : MX2C
      port map(A => \data_all[74]_net_1\, B => 
        \data_all[106]_net_1\, S => \cnt_send_0[2]_net_1\, Y => 
        \data_send_buffer_RNO_25[2]_net_1\);
    
    \data_all_RNO_0[37]\ : NOR2A
      port map(A => N_1633, B => \data_all[37]_net_1\, Y => N_877);
    
    send_end_RNO_23 : XO1
      port map(A => \cnt_recive[2]_net_1\, B => 
        \cnt_send_0[2]_net_1\, C => un12_cnt_send_4, Y => 
        send_end_0_sqmuxa_i_20);
    
    \data_all[140]\ : DFN1E0C0
      port map(D => N_302, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[140]_net_1\);
    
    \cnt_send[1]\ : DFN1E1C0
      port map(D => cnt_send_n1, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[1]_net_1\);
    
    \data_all[75]\ : DFN1E0C0
      port map(D => N_201, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[75]_net_1\);
    
    \cnt_send_0_RNILKC92_0[2]\ : NOR2B
      port map(A => N_1842, B => 
        data_send_buffer_4_1_a2_34_0_a4_out, Y => N_1580);
    
    \data_send_buffer_RNO[2]\ : OR3
      port map(A => data_send_buffer_4_1_17_out_2, B => 
        \data_send_buffer_4_1_14[2]\, C => 
        \data_send_buffer_4_1_16[2]\, Y => 
        \data_send_buffer_4[2]\);
    
    \data_send_buffer_RNO_23[4]\ : NOR3C
      port map(A => N_1854, B => \data_all[132]_net_1\, C => 
        N_1847, Y => N_513);
    
    \data_send_buffer_RNO[6]\ : NOR2A
      port map(A => N_861, B => N_398, Y => 
        \data_send_buffer_4[6]\);
    
    \cnt_send_RNO_2[11]\ : NOR2B
      port map(A => \cnt_send[5]_net_1\, B => \cnt_send[9]_net_1\, 
        Y => cnt_send_c10_m5_0_a2_1);
    
    \data_send_buffer_RNO_1[7]\ : AO1
      port map(A => \data_all[79]_net_1\, B => N_1572, C => N_474, 
        Y => \data_send_buffer_4_1_12[7]\);
    
    \data_all[39]\ : DFN1E0C0
      port map(D => N_273, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[39]_net_1\);
    
    \data_all[158]\ : DFN1E0C0
      port map(D => N_37, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[158]_net_1\);
    
    \cnt_send[5]\ : DFN1E1C0
      port map(D => cnt_send_n5, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[5]_net_1\);
    
    \cnt_recive_RNO[25]\ : XA1B
      port map(A => cnt_recive_c24, B => \cnt_recive[25]_net_1\, 
        C => N_398, Y => cnt_recive_n25);
    
    \data_all_RNO_1[65]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[1]\, Y => N_815);
    
    \data_all_RNO[36]\ : AO1A
      port map(A => N_1633, B => \single_recive_0.N_172\, C => 
        N_1696, Y => N_182);
    
    \cnt_send_RNO[28]\ : AX1C
      port map(A => cnt_send_c2, B => cnt_send_95_8, C => N_1665, 
        Y => cnt_send_n28);
    
    \data_send_buffer_RNO_10[3]\ : NOR2B
      port map(A => \data_all[115]_net_1\, B => N_1584, Y => 
        N_1803);
    
    \data_all[94]\ : DFN1E0C0
      port map(D => N_165, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[94]_net_1\);
    
    \data_all_RNO[52]\ : MX2
      port map(A => \single_recive_0.N_172\, B => 
        \data_all_4_i_i_a4_0[52]\, S => N_457, Y => N_196);
    
    \data_all_RNICCSC[20]\ : NOR2A
      port map(A => \data_all[20]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[20]\);
    
    \data_all_RNO_1[136]\ : NOR3
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_recive_buffer[0]\, Y => N_669);
    
    send_end_RNI5FJ66_1 : NOR2
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => N_398, 
        Y => N_1104);
    
    \cnt_recive_RNO[28]\ : XA1B
      port map(A => cnt_recive_c27, B => \cnt_recive[28]_net_1\, 
        C => N_398, Y => cnt_recive_n28);
    
    \data_send_buffer_RNO_19[5]\ : NOR2B
      port map(A => \data_all[13]_net_1\, B => N_1843, Y => 
        \data_send_buffer_4_1_0_a4_14_0[5]\);
    
    \data_all_RNI11AG[7]\ : NOR2A
      port map(A => \data_all[7]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[7]\);
    
    \data_all[98]\ : DFN1E0C0
      port map(D => N_157, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[98]_net_1\);
    
    \data_send_buffer_RNO_18[0]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_14_0_m2_0_a2_0, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_1843, Y
         => N_609);
    
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
    
    \cnt_send[20]\ : DFN1E1C0
      port map(D => cnt_send_n20, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[20]_net_1\);
    
    \data_all_RNO[18]\ : MX2
      port map(A => \single_recive_0.N_174\, B => 
        \data_all_4_i_i_a4_0[18]\, S => N_443, Y => N_154);
    
    \data_all_RNO_0[23]\ : NOR2A
      port map(A => \data_all[23]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[23]\);
    
    \data_all_RNO_0[45]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[45]_net_1\, S => N_1628, Y => N_1655);
    
    \data_all_RNO[49]\ : NOR3
      port map(A => N_846, B => N_398, C => N_847, Y => N_253);
    
    \data_all[25]\ : DFN1E0C0
      port map(D => N_299, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[25]_net_1\);
    
    \data_all[126]\ : DFN1E0C0
      port map(D => N_286, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[126]_net_1\);
    
    \cnt_send_RNIP4HR[7]\ : NOR2
      port map(A => \cnt_send[7]_net_1\, B => \cnt_send[6]_net_1\, 
        Y => send_end_0_sqmuxa_i_a2_0_19_1);
    
    \cnt_delay_RNO[2]\ : XA1B
      port map(A => cnt_delay_c1, B => \cnt_delay[2]_net_1\, C
         => N_398, Y => cnt_delay_n2);
    
    \cnt_recive_RNIK2391[14]\ : NOR3C
      port map(A => \cnt_recive[14]_net_1\, B => 
        \cnt_recive[17]_net_1\, C => \cnt_recive[9]_net_1\, Y => 
        cnt_recive_c17_m6_0_a2_4_4);
    
    \data_all_RNO_0[109]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \single_recive_0.N_171\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1745);
    
    \data_all[54]\ : DFN1E0C0
      port map(D => N_243, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[54]_net_1\);
    
    \cnt_send_RNILCF22[28]\ : OR2
      port map(A => N_1855, B => \cnt_send[28]_net_1\, Y => 
        N_1634);
    
    \data_all[65]\ : DFN1E0C0
      port map(D => N_221, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[65]_net_1\);
    
    \cnt_delay_RNIHJ44[1]\ : NOR3C
      port map(A => un12_cnt_delay_1_0, B => un12_cnt_delay_0, C
         => un12_cnt_delay_3, Y => un12_cnt_delay_5);
    
    \data_all[154]\ : DFN1E0C0
      port map(D => N_45, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[154]_net_1\);
    
    \cnt_send_RNIHSGR_0[2]\ : NOR2A
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => N_1849);
    
    \cnt_recive_RNI9MEK1[30]\ : NOR3A
      port map(A => un5_idle_recive_1, B => 
        \cnt_recive[29]_net_1\, C => \cnt_recive[30]_net_1\, Y
         => un5_idle_recive_4_0);
    
    \data_all_RNO[146]\ : AO1
      port map(A => \data_all[146]_net_1\, B => N_1860, C => 
        N_1778, Y => N_326);
    
    \data_all_RNO[10]\ : NOR3
      port map(A => N_1519, B => N_398, C => N_1520, Y => N_329);
    
    \data_all_RNO[125]\ : AO1
      port map(A => \data_all[125]_net_1\, B => N_1104, C => 
        N_857, Y => N_284);
    
    \data_all[16]\ : DFN1E0C0
      port map(D => N_146, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[16]_net_1\);
    
    \data_all[13]\ : DFN1E0C0
      port map(D => N_323, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[13]_net_1\);
    
    \cnt_recive_RNO_0[14]\ : NOR2B
      port map(A => cnt_recive_c12, B => \cnt_recive[13]_net_1\, 
        Y => cnt_recive_c13);
    
    \data_all[58]\ : DFN1E0C0
      port map(D => N_235, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[58]_net_1\);
    
    \data_send_buffer_RNO_18[3]\ : NOR2B
      port map(A => \data_all[59]_net_1\, B => N_1570, Y => 
        N_1800);
    
    \cnt_send_RNO_4[11]\ : NOR3C
      port map(A => \cnt_send[7]_net_1\, B => \cnt_send[8]_net_1\, 
        C => \cnt_send_0[4]_net_1\, Y => cnt_send_c10_m5_0_a2_4);
    
    \data_send_buffer_RNO_28[4]\ : MX2C
      port map(A => \data_all[76]_net_1\, B => 
        \data_all[108]_net_1\, S => \cnt_send_0[2]_net_1\, Y => 
        \data_send_buffer_RNO_28[4]_net_1\);
    
    \data_all_RNO[103]\ : AO1
      port map(A => \data_all[103]_net_1\, B => N_983, C => 
        N_1741, Y => N_262);
    
    \data_send_buffer_RNO_23[1]\ : NOR3C
      port map(A => N_1851, B => N_1858, C => 
        \data_all[105]_net_1\, Y => N_586);
    
    \data_all[147]\ : DFN1E0C0
      port map(D => N_1607, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[147]_net_1\);
    
    \cnt_send_RNO_0[15]\ : NOR2B
      port map(A => cnt_send_c13, B => \cnt_send[14]_net_1\, Y
         => cnt_send_c14);
    
    vld_send : DFN1E0C0
      port map(D => vld_send_0_sqmuxa, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => vld_send_2_sqmuxa, Q => \vld_send\);
    
    \cnt_recive_RNIDR291[14]\ : NOR3C
      port map(A => \cnt_recive[10]_net_1\, B => 
        \cnt_recive[14]_net_1\, C => \cnt_recive[9]_net_1\, Y => 
        cnt_recive_c14_m6_0_a2_4);
    
    \cnt_recive_RNID6TP1[10]\ : OR3A
      port map(A => un5_idle_recive_13, B => 
        \cnt_recive[9]_net_1\, C => \cnt_recive[10]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_11_1[111]\);
    
    \cnt_recive_RNIB9LP2[5]\ : NOR2B
      port map(A => cnt_recive_c4, B => \cnt_recive[5]_net_1\, Y
         => cnt_recive_c5);
    
    \data_all_RNO_1[143]\ : NOR3A
      port map(A => \single_recive_0.N_169\, B => N_431, C => 
        N_449_i_0_o4_0, Y => N_1772);
    
    \data_all_RNO_0[64]\ : OA1C
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[64]_net_1\, Y => N_816);
    
    \cnt_recive_RNIPNUA1[10]\ : NOR3
      port map(A => \cnt_recive[9]_net_1\, B => 
        \cnt_recive[10]_net_1\, C => \cnt_recive[1]_net_1\, Y => 
        un5_idle_recive_10_0);
    
    \data_all_RNO_1[37]\ : NOR2
      port map(A => \data_recive_buffer[5]\, B => N_1633, Y => 
        N_878);
    
    \cnt_recive_RNO_0[10]\ : NOR2B
      port map(A => cnt_recive_c8, B => \cnt_recive[9]_net_1\, Y
         => cnt_recive_c9);
    
    \data_all_RNO_0[67]\ : OA1C
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[67]_net_1\, Y => N_810);
    
    \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]\ : NOR3A
      port map(A => data_all_4_i_i_a2_34_m1_e_1, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12_RNI57MV5[111]_net_1\);
    
    \cnt_send_0_RNI62K31_0[2]\ : NOR3A
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \cnt_send_0[2]_net_1\, C => \cnt_send[3]_net_1\, Y => 
        N_1850);
    
    \data_send_buffer_RNO_27[2]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_2_m2_e_2, B => N_1850, 
        C => N_398, Y => N_552);
    
    \data_all_RNO_0[124]\ : NOR2
      port map(A => \data_all[124]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_692);
    
    \data_all_RNO[122]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[2]\, C => \data_all_4_i_0[122]\, Y
         => N_109);
    
    \cnt_send_RNO_3[27]\ : NOR3C
      port map(A => \cnt_send[25]_net_1\, B => 
        \cnt_send[26]_net_1\, C => cnt_send_c15_m3_0_a2_0, Y => 
        cnt_send_c26_m5_0_a2_2);
    
    \cnt_send_RNI8UDI[27]\ : NOR3C
      port map(A => \cnt_send[26]_net_1\, B => 
        \cnt_send[27]_net_1\, C => \cnt_send[14]_net_1\, Y => 
        cnt_send_95_2);
    
    \cnt_recive_RNO[9]\ : XA1B
      port map(A => cnt_recive_c8, B => \cnt_recive[9]_net_1\, C
         => N_398, Y => cnt_recive_n9);
    
    \data_send_buffer_RNO_5[0]\ : AO1
      port map(A => \data_all[80]_net_1\, B => N_1579, C => 
        \data_send_buffer_4_1_6_0[0]\, Y => 
        \data_send_buffer_4_1_9[0]\);
    
    \data_all_RNO_0[122]\ : AO1D
      port map(A => \data_all[122]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, C => N_398, Y => 
        \data_all_4_i_0[122]\);
    
    \data_all_RNO[91]\ : NOR2A
      port map(A => N_1661, B => N_398, Y => N_171);
    
    \data_all_RNO[15]\ : NOR2
      port map(A => N_1664, B => N_398, Y => N_319);
    
    \data_all[149]\ : DFN1E0C0
      port map(D => N_1609, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[149]_net_1\);
    
    un20_data_send_buffer_1_I_16 : NOR2A
      port map(A => \un20_data_send_buffer_1.U1.DWACT_FINC_E[1]\, 
        B => \cnt_send[2]_net_1\, Y => 
        \un20_data_send_buffer_1.N_3\);
    
    \data_all_RNO_0[159]\ : NOR3B
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \single_recive_0.N_169\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1796);
    
    \cnt_recive_RNIIROR1[1]\ : OR2
      port map(A => \cnt_recive[1]_net_1\, B => N_433, Y => 
        N_449_i_0_o4_0);
    
    \data_send_buffer_RNO_22[6]\ : MX2
      port map(A => \data_all[102]_net_1\, B => 
        \data_all[110]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1649);
    
    \data_send_buffer_RNO_22[0]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_18_0_m2_0_a2_0, B => 
        send_end_0_sqmuxa_i_a2_m3_e_1, C => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2, Y => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_3);
    
    \cnt_recive_RNO[27]\ : XA1B
      port map(A => cnt_recive_c26, B => \cnt_recive[27]_net_1\, 
        C => N_398, Y => cnt_recive_n27);
    
    \data_send_buffer[2]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[2]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[2]_net_1\);
    
    \data_send_buffer_RNO_6[2]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_16_out_1, B => N_1853, 
        Y => N_569);
    
    \cnt_send_RNO_0[26]\ : NOR2B
      port map(A => cnt_send_c24, B => \cnt_send[25]_net_1\, Y
         => cnt_send_c25);
    
    \cnt_send_RNO[21]\ : NOR2A
      port map(A => cnt_send_n21_tz, B => N_398, Y => 
        cnt_send_n21);
    
    \data_send_buffer_RNO_24[7]\ : NOR2B
      port map(A => \data_all[119]_net_1\, B => N_1584, Y => 
        N_470);
    
    \data_all_RNO[62]\ : AO1
      port map(A => \data_all[62]_net_1\, B => N_1049, C => 
        N_1711, Y => N_206);
    
    \data_all_RNO_0[16]\ : NOR2A
      port map(A => \data_all[16]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[16]\);
    
    send_end_RNO_34 : XOR2
      port map(A => \cnt_send[27]_net_1\, B => 
        \cnt_recive[27]_net_1\, Y => N_590_i);
    
    \data_send_buffer_RNO_10[2]\ : NOR2A
      port map(A => \data_all[2]_net_1\, B => N_36, Y => N_572);
    
    \data_all_RNO[153]\ : NOR3
      port map(A => N_628, B => N_398, C => N_629, Y => N_47);
    
    \data_all[143]\ : DFN1E0C0
      port map(D => N_314, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[143]_net_1\);
    
    \cnt_send_RNO[9]\ : XA1B
      port map(A => cnt_send_c8, B => \cnt_send[9]_net_1\, C => 
        N_398, Y => cnt_send_n9);
    
    \cnt_send_RNI0E9J5[18]\ : NOR2B
      port map(A => send_end_0_sqmuxa_i_a2_0_20, B => 
        send_end_0_sqmuxa_i_a2_0_19, Y => N_1888);
    
    \cnt_send_RNIHSGR_1[2]\ : NOR2A
      port map(A => \cnt_send[2]_net_1\, B => \cnt_send[3]_net_1\, 
        Y => N_1848);
    
    \cnt_recive_end_RNO[9]\ : XA1
      port map(A => cnt_recive_end_19_0, B => receive_end2lto9, C
         => cnt_recive_end_0_sqmuxa, Y => cnt_recive_end_n9);
    
    \data_send_buffer_RNO_23[7]\ : NOR2B
      port map(A => \data_all[39]_net_1\, B => N_1580, Y => N_480);
    
    \cnt_send[16]\ : DFN1E1C0
      port map(D => cnt_send_n16, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[16]_net_1\);
    
    \cnt_recive_RNO[11]\ : XA1B
      port map(A => cnt_recive_c10, B => \cnt_recive[11]_net_1\, 
        C => N_398, Y => cnt_recive_n11);
    
    \data_all_RNO[149]\ : AO1
      port map(A => \data_all[149]_net_1\, B => N_1860, C => 
        N_1784, Y => N_1609);
    
    \cnt_send_0_RNIGKHN1[4]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_24_0_a2_7_m2_e_1, B
         => N_1840, Y => data_send_buffer_4_1_a2_24_0_a2_7_m2_e_2);
    
    \cnt_send_RNIFU1H2[4]\ : NOR3C
      port map(A => cnt_send_c1, B => cnt_send_c15_m3_0_a2_1, C
         => N_1851, Y => cnt_send_c15_m3_0_a2_4);
    
    \cnt_recive_RNO[7]\ : XA1B
      port map(A => cnt_recive_c6, B => \cnt_recive[7]_net_1\, C
         => N_398, Y => cnt_recive_n7);
    
    idle_recive_down : DFN1P0
      port map(D => idle_recive_down_3, CLK => sys_clk_c, PRE => 
        sys_rest_c, Q => idle_recive_down_i_0);
    
    \data_send_buffer_RNO_35[0]\ : NOR3B
      port map(A => \data_all[144]_net_1\, B => 
        \cnt_send[1]_net_1\, C => \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_5_a0_5_3[0]\);
    
    \data_all_RNO[108]\ : AO1
      port map(A => \data_all[108]_net_1\, B => N_1105, C => 
        N_1743, Y => N_1600);
    
    \data_send_buffer_RNO_25[1]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_19_1_m2_e_0, B => 
        N_1888, Y => data_send_buffer_4_1_a2_19_1_m2_e_1);
    
    \data_all_RNO_0[144]\ : NOR2B
      port map(A => N_1053, B => data_all_4_i_i_o2_144_N_5_mux, Y
         => N_1774);
    
    \cnt_recive_RNI1GQC1[2]\ : NOR3C
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => \cnt_recive[2]_net_1\, Y => 
        cnt_recive_c2);
    
    \cnt_recive_RNI2CPR1[5]\ : NOR3C
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[5]_net_1\, C => cnt_recive_c10_m6_0_a2_1, Y
         => cnt_recive_c19_m6_0_a2_3_4);
    
    \cnt_delay[7]\ : DFN1E1C0
      port map(D => cnt_delay_n7, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[7]_net_1\);
    
    \data_all_RNO[120]\ : NOR3
      port map(A => N_700, B => N_398, C => N_701, Y => N_113);
    
    \data_send_buffer_RNO[7]\ : OR3
      port map(A => \data_send_buffer_4_1_13[7]\, B => 
        \data_send_buffer_4_1_12[7]\, C => 
        \data_send_buffer_4_1_17[7]\, Y => 
        \data_send_buffer_4[7]\);
    
    \data_all_RNO_0[142]\ : NOR2A
      port map(A => \data_all[142]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_142_m4_0);
    
    \cnt_send_0_RNIMKE61[4]\ : NOR3A
      port map(A => \cnt_send_0[4]_net_1\, B => 
        \cnt_send[0]_net_1\, C => \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_35_0_a4_stt_7_N_5_mux);
    
    \data_all_RNO_0[2]\ : NOR2
      port map(A => \data_all[2]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1535);
    
    \data_all_RNO[134]\ : AO1
      port map(A => \data_all[134]_net_1\, B => N_1048, C => 
        N_1762, Y => N_298);
    
    \data_send_buffer_RNO[1]\ : OR3
      port map(A => \data_send_buffer_4_1_15[1]\, B => 
        \data_send_buffer_4_1_14[1]\, C => 
        \data_send_buffer_4_1_16[1]\, Y => 
        \data_send_buffer_4[1]\);
    
    \data_all[96]\ : DFN1E0C0
      port map(D => N_161, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[96]_net_1\);
    
    \data_all[93]\ : DFN1E0C0
      port map(D => N_167, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[93]_net_1\);
    
    \data_send_buffer_RNO[4]\ : OR3
      port map(A => data_send_buffer_4_1_17_out_0, B => 
        \data_send_buffer_4_1_9[4]_net_1\, C => 
        \data_send_buffer_4_1_16[4]\, Y => 
        \data_send_buffer_4[4]\);
    
    \data_all_RNO[38]\ : NOR3
      port map(A => N_875, B => N_398, C => N_1476, Y => N_275);
    
    \cnt_send_RNIJEJC3[11]\ : NOR3C
      port map(A => cnt_send_c11_m6_0_a2_4, B => 
        cnt_send_c11_m6_0_a2_3, C => cnt_send_c11_m6_0_a2_5, Y
         => cnt_send_c11_m6_0_a2_7);
    
    \cnt_delay[6]\ : DFN1E1C0
      port map(D => cnt_delay_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_delaye, Q => \cnt_delay[6]_net_1\);
    
    un20_data_send_buffer_1_I_12 : XOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => I_12_1);
    
    \data_all_RNO_0[115]\ : NOR2A
      port map(A => \data_all[115]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[115]\);
    
    \data_all[125]\ : DFN1E0C0
      port map(D => N_284, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[125]_net_1\);
    
    \data_all_RNO_0[54]\ : NOR2A
      port map(A => N_457, B => \data_all[54]_net_1\, Y => N_836);
    
    \data_send_buffer_RNO_26[3]\ : NOR2B
      port map(A => \data_all[139]_net_1\, B => N_1585, Y => 
        N_1811);
    
    \data_send_buffer_RNO_18[5]\ : NOR2A
      port map(A => data_send_buffer_4_1_7_0_m2_0_a2_0, B => 
        \data_send_buffer_RNO_26[5]_net_1\, Y => 
        data_send_buffer_4_1_0_7_5_m2_0_a2_1);
    
    \data_all_RNO_0[18]\ : NOR2A
      port map(A => \data_all[18]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[18]\);
    
    \cnt_send_RNI2E601[4]\ : NOR2B
      port map(A => \cnt_send[4]_net_1\, B => cnt_send_95_2, Y
         => cnt_send_95_4);
    
    \data_all[81]\ : DFN1E0C0
      port map(D => N_224, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[81]_net_1\);
    
    \data_all_4_i_o2_0_i_o2_0_12_RNI0S03[111]\ : CLKINT
      port map(A => \data_all_4_i_o2_0_i_o2_0_0[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\);
    
    \data_send_buffer_RNO_29[3]\ : MX2
      port map(A => \data_all[11]_net_1\, B => 
        \data_all[27]_net_1\, S => \cnt_send[1]_net_1\, Y => 
        \data_send_buffer_4_1_a0_0[3]\);
    
    \data_all_RNO_0[57]\ : NOR2
      port map(A => \data_all[57]_net_1\, B => 
        N_383_i_0_o4_N_5_mux, Y => N_830);
    
    \cnt_send_RNILBMG1_0[1]\ : NOR2A
      port map(A => N_1841, B => \cnt_send[1]_net_1\, Y => N_1858);
    
    \data_all_RNO[94]\ : OA1C
      port map(A => N_1635, B => N_1618, C => 
        \data_all_4_i_0[94]\, Y => N_165);
    
    \data_all[80]\ : DFN1E0C0
      port map(D => N_222, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[80]_net_1\);
    
    \cnt_delay_RNIHM91[4]\ : NOR2B
      port map(A => cnt_delay_c3, B => \cnt_delay[4]_net_1\, Y
         => cnt_delay_c4);
    
    \data_send_buffer_RNO_30[1]\ : OR2A
      port map(A => N_1840, B => data_send_buffer_4_1_1_1_m3_0_0, 
        Y => data_send_buffer_4_1_1_1_m3_0_1);
    
    \cnt_send_RNO_0[16]\ : AX1C
      port map(A => cnt_send_c13_m6_0_a2_4, B => 
        cnt_send_c15_m3_0_a2_4, C => \cnt_send[16]_net_1\, Y => 
        cnt_send_n16_tz);
    
    \data_all[77]\ : DFN1E0C0
      port map(D => N_197, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[77]_net_1\);
    
    \cnt_send_RNO_0[21]\ : AX1C
      port map(A => \cnt_send[20]_net_1\, B => cnt_send_c19, C
         => \cnt_send[21]_net_1\, Y => cnt_send_n21_tz);
    
    \data_all_RNO[30]\ : NOR2A
      port map(A => N_1654, B => N_398, Y => N_291);
    
    \cnt_send_RNIDGJB6[0]\ : OR3
      port map(A => \data_send_buffer_4_1_a2_40_i_o4_0[7]\, B => 
        I_14_1, C => \data_send_buffer_4_1_a2_40_i_o4_2[7]_net_1\, 
        Y => N_1646);
    
    \cnt_recive[2]\ : DFN1E0C0
      port map(D => cnt_recive_n2, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[2]_net_1\);
    
    \data_all_RNO_1[153]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[1]\, Y => N_629);
    
    \data_all[148]\ : DFN1E0C0
      port map(D => N_1608, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[148]_net_1\);
    
    \data_send_buffer_RNO_11[3]\ : AO1
      port map(A => \data_all[51]_net_1\, B => N_1574, C => 
        N_1804, Y => \data_send_buffer_4_11[3]\);
    
    \cnt_send_RNO[12]\ : XA1B
      port map(A => cnt_send_c11, B => \cnt_send[12]_net_1\, C
         => N_398, Y => cnt_send_n12);
    
    \cnt_recive_RNI6KPN2[10]\ : NOR3C
      port map(A => cnt_recive_c10_m6_0_a2_1, B => 
        cnt_recive_c10_m6_0_a2_0, C => cnt_recive_c6_m2_0_a2_1, Y
         => cnt_recive_c10_m6_0_a2_6);
    
    \data_all_RNO_1[124]\ : NOR2A
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[4]\, Y => N_693);
    
    \data_all_RNO[158]\ : NOR3
      port map(A => N_618, B => N_398, C => N_619, Y => N_37);
    
    \data_all[56]\ : DFN1E0C0
      port map(D => N_239, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[56]_net_1\);
    
    \data_all[53]\ : DFN1E0C0
      port map(D => N_198, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[53]_net_1\);
    
    \cnt_send_RNO_3[11]\ : NOR2B
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_send[6]_net_1\, Y => cnt_send_c10_m5_0_a2_0);
    
    \data_send_buffer_RNO_10[4]\ : OR3
      port map(A => N_524, B => N_521, C => 
        \data_send_buffer_4_1_2[4]\, Y => 
        \data_send_buffer_4_1_5[4]\);
    
    send_end_RNO_13 : XO1
      port map(A => \cnt_send[10]_net_1\, B => 
        \cnt_recive[10]_net_1\, C => N_591_i, Y => 
        send_end_0_sqmuxa_i_7);
    
    \data_send_buffer_RNO_15[4]\ : NOR2B
      port map(A => \data_all[140]_net_1\, B => N_1585, Y => 
        N_512);
    
    \cnt_send[19]\ : DFN1E1C0
      port map(D => cnt_send_n19, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[19]_net_1\);
    
    \data_send_buffer_RNO_25[3]\ : NOR3C
      port map(A => N_1840, B => \data_send_buffer_4_1_a0_0[3]\, 
        C => N_1841, Y => \data_send_buffer_RNO_25[3]_net_1\);
    
    \data_all[41]\ : DFN1E0C0
      port map(D => N_269, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[41]_net_1\);
    
    \cnt_delay_RNO_1[8]\ : NOR2A
      port map(A => \cnt_delay[8]_net_1\, B => N_398, Y => N_919);
    
    \data_send_buffer_RNO_21[2]\ : AO1
      port map(A => data_send_buffer_4_1_a2_14_2_m1_e_1, B => 
        N_1843, C => N_555, Y => \data_send_buffer_4_1_1[2]\);
    
    \cnt_recive_RNIV9CK1[24]\ : NOR3A
      port map(A => un5_idle_recive_6, B => 
        \cnt_recive[24]_net_1\, C => \cnt_recive[23]_net_1\, Y
         => un5_idle_recive_6_0);
    
    \cnt_delay_RNII911[3]\ : NOR2B
      port map(A => cnt_delay_c2, B => \cnt_delay[3]_net_1\, Y
         => cnt_delay_c3);
    
    \data_all[40]\ : DFN1E0C0
      port map(D => N_271, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[40]_net_1\);
    
    \data_send_buffer[7]\ : DFN1E0C0
      port map(D => \data_send_buffer_4[7]\, CLK => sys_clk_c, 
        CLR => sys_rest_c, E => data_send_buffer_1_sqmuxa, Q => 
        \data_send_buffer[7]_net_1\);
    
    \data_send_buffer_RNO_16[2]\ : NOR2B
      port map(A => N_1849, B => \data_all[66]_net_1\, Y => 
        data_send_buffer_4_1_a2_16_out_1);
    
    \data_send_buffer_RNO_30[7]\ : NOR2A
      port map(A => \data_all[135]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        data_send_buffer_4_1_a2_2_7_m2_e_0);
    
    \cnt_send_RNI687C2_0[1]\ : NOR2B
      port map(A => N_1852, B => N_1851, Y => N_1578);
    
    \data_all_RNO[115]\ : MX2
      port map(A => \single_recive_0.N_173\, B => 
        \data_all_4_i_i_a4_0[115]\, S => N_1617, Y => N_1603);
    
    \data_all_RNO_0[104]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[104]_net_1\, Y => N_732);
    
    \data_send_buffer_RNO_7[3]\ : NOR3C
      port map(A => N_1849, B => N_1852, C => 
        \data_all[91]_net_1\, Y => N_1799);
    
    \data_all_RNIVU9G[5]\ : NOR2A
      port map(A => \data_all[5]_net_1\, B => N_398, Y => 
        \data_send_buffer_4_1_0_a4_0[5]\);
    
    \data_send_buffer_RNO_8[3]\ : AO1
      port map(A => \data_all[123]_net_1\, B => N_1578, C => 
        N_1800, Y => \data_send_buffer_4_7[3]\);
    
    \data_send_buffer_RNO_2[7]\ : OR3
      port map(A => \data_send_buffer_4_1_5[7]\, B => N_478, C
         => data_send_buffer_4_1_17_out, Y => 
        \data_send_buffer_4_1_17[7]\);
    
    \cnt_send_RNIJN9C[23]\ : NOR2B
      port map(A => \cnt_send[23]_net_1\, B => 
        \cnt_send[20]_net_1\, Y => cnt_send_c24_m6_0_a2_4_2);
    
    \data_all[27]\ : DFN1E0C0
      port map(D => N_295, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[27]_net_1\);
    
    \data_all_RNO_0[93]\ : MX2
      port map(A => \data_recive_buffer[5]\, B => 
        \data_all[93]_net_1\, S => N_1618, Y => N_641);
    
    \data_all_RNO_0[102]\ : NOR3B
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_170\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1739);
    
    \data_all_RNO[35]\ : AO1A
      port map(A => N_1633, B => \single_recive_0.N_173\, C => 
        N_1694, Y => N_178);
    
    \cnt_flag[0]\ : DFN1C0
      port map(D => \cnt_flag_5[0]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_flag[0]_net_1\);
    
    \cnt_send_0_RNIP60O[4]\ : NOR3A
      port map(A => \cnt_send_0[4]_net_1\, B => N_398, C => 
        \cnt_send[28]_net_1\, Y => N_1847);
    
    \cnt_send_0_RNI41I62[2]\ : NOR3B
      port map(A => data_send_buffer_4_1_a2_34_0_a4_out, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_398, Y
         => N_1582);
    
    receive_end_RNO_2 : OR3
      port map(A => \cnt_recive_end[4]_net_1\, B => 
        \cnt_recive_end[6]_net_1\, C => receive_end2lto6_1, Y => 
        receive_end2lt7);
    
    \data_all_RNO_0[76]\ : NOR2
      port map(A => \data_all[76]_net_1\, B => 
        \un46_data_all[80]\, Y => N_786);
    
    \data_all_RNO[42]\ : OA1B
      port map(A => \data_recive_buffer[2]\, B => N_1628, C => 
        \data_all_4_i_0[42]\, Y => N_267);
    
    \data_all[67]\ : DFN1E0C0
      port map(D => N_217, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[67]_net_1\);
    
    \data_all[144]\ : DFN1E0C0
      port map(D => N_318, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[144]_net_1\);
    
    \data_all_RNO_0[81]\ : NOR2A
      port map(A => \data_all[81]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[81]\);
    
    \cnt_recive_RNI3OST[7]\ : NOR2B
      port map(A => \cnt_recive[7]_net_1\, B => 
        \cnt_recive[8]_net_1\, Y => cnt_recive_c10_m6_0_a2_1);
    
    un20_data_send_buffer_1_I_20 : XNOR2
      port map(A => \cnt_send[4]_net_1\, B => 
        \un20_data_send_buffer_1.N_2\, Y => I_20_1);
    
    \cnt_send[17]\ : DFN1E1C0
      port map(D => cnt_send_n17, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[17]_net_1\);
    
    \data_send_buffer_RNO_31[7]\ : NOR3C
      port map(A => \cnt_send_0[1]_net_1\, B => 
        \data_send_buffer_4_1_1_a0_3_0[7]\, C => 
        \data_send_buffer_4_1_1_a0_3_1[0]\, Y => 
        \data_send_buffer_4_1_1_a0_3[7]\);
    
    \cnt_recive_end_RNO[5]\ : XA1
      port map(A => cnt_recive_end_c4, B => 
        \cnt_recive_end[5]_net_1\, C => cnt_recive_end_0_sqmuxa, 
        Y => cnt_recive_end_n5);
    
    \data_all_RNO[112]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_1617, C => 
        \data_all_4_i_0[112]\, Y => N_129);
    
    \cnt_send_RNIHETC2[5]\ : NOR2B
      port map(A => cnt_send_c4, B => \cnt_send[5]_net_1\, Y => 
        cnt_send_c5);
    
    \cnt_recive_RNI3HP6B[25]\ : NOR2B
      port map(A => cnt_recive_c24, B => \cnt_recive[25]_net_1\, 
        Y => cnt_recive_c25);
    
    \data_all_RNO_1[64]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[0]\, Y => N_817);
    
    \cnt_delay_RNI3VG[6]\ : NOR2
      port map(A => \cnt_delay[6]_net_1\, B => 
        \cnt_delay[7]_net_1\, Y => un12_cnt_delay_3);
    
    \data_send_buffer_RNO_18[6]\ : MX2
      port map(A => \data_all[38]_net_1\, B => 
        \data_all[46]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_1651);
    
    \data_all_RNO_0[136]\ : OA1B
      port map(A => N_431, B => N_449_i_0_o4_0, C => 
        \data_all[136]_net_1\, Y => N_668);
    
    \data_send_buffer_RNO_26[4]\ : NOR2A
      port map(A => \data_all[12]_net_1\, B => N_398, Y => 
        data_send_buffer_4_1_a2_14_4_m1_e_0);
    
    \cnt_recive_RNIRG6Q[22]\ : NOR2
      port map(A => \cnt_recive[22]_net_1\, B => 
        \cnt_recive[21]_net_1\, Y => un5_idle_recive_3);
    
    \data_all_RNO[8]\ : NOR3
      port map(A => N_1523, B => N_398, C => N_1524, Y => N_333);
    
    \data_all_4_i_o2_0_i_o2_0_12_RNI5FJ66[111]\ : OA1C
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_398, Y
         => N_983);
    
    \data_all_RNO_1[67]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[3]\, Y => N_811);
    
    \cnt_send_0_RNILKC92[0]\ : NOR3B
      port map(A => \cnt_send_0[0]_net_1\, B => 
        data_send_buffer_4_1_a2_24_0_a2_7_m2_e_2, C => N_398, Y
         => N_1576);
    
    \data_all_RNO[21]\ : MX2
      port map(A => \single_recive_0.N_171\, B => 
        \data_all_4_i_i_a4_0[21]\, S => N_443, Y => N_1596);
    
    \data_all_RNO[131]\ : NOR3
      port map(A => N_678, B => N_398, C => N_679, Y => N_91);
    
    \data_send_buffer_RNO_9[0]\ : AO1A
      port map(A => N_36, B => \data_all[0]_net_1\, C => N_611, Y
         => data_send_buffer_4_1_12_out);
    
    \cnt_recive_RNIPDST[2]\ : OR2B
      port map(A => \cnt_recive[3]_net_1\, B => 
        \cnt_recive[2]_net_1\, Y => N_432);
    
    idle_recive_down_RNO : OR3A
      port map(A => \idle_recive_fall\, B => idle_recive, C => 
        N_398, Y => idle_recive_down_3);
    
    \cnt_send[22]\ : DFN1E1C0
      port map(D => cnt_send_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[22]_net_1\);
    
    \data_send_buffer_RNO_31[0]\ : NOR3C
      port map(A => \data_send_buffer_4_1_5_a0_5_2[0]\, B => 
        N_1840, C => \data_send_buffer_4_1_5_a0_5_3[0]\, Y => 
        \data_send_buffer_4_1_5_a0_5[0]\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI5FJ66_0[111]\ : OA1C
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_398, Y
         => N_1051);
    
    \cnt_send_RNO_0[11]\ : NOR3C
      port map(A => N_1851, B => cnt_send_c10_m5_0_a2_5, C => 
        cnt_send_c1, Y => cnt_send_c10);
    
    \data_send_buffer_RNO_0[1]\ : OR3
      port map(A => N_587, B => N_582, C => 
        \data_send_buffer_4_1_10[1]\, Y => 
        \data_send_buffer_4_1_15[1]\);
    
    \cnt_send_RNO_0[19]\ : AX1C
      port map(A => cnt_send_c13_m6_0_a2_4, B => 
        cnt_send_c18_m6_0_a2_7, C => \cnt_send[19]_net_1\, Y => 
        cnt_send_n19_tz);
    
    \cnt_send_RNI687C2[0]\ : NOR2A
      port map(A => N_1863, B => \cnt_send[0]_net_1\, Y => N_984);
    
    \cnt_recive[10]\ : DFN1E0C0
      port map(D => cnt_recive_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[10]_net_1\);
    
    \cnt_send_RNIC8UA1[11]\ : NOR3C
      port map(A => send_end_0_sqmuxa_i_a2_0_20_2, B => 
        send_end_0_sqmuxa_i_a2_0_20_1, C => 
        send_end_0_sqmuxa_i_a2_0_20_7, Y => 
        send_end_0_sqmuxa_i_a2_0_20_11);
    
    un20_data_send_buffer_1_I_18 : NOR3
      port map(A => \cnt_send[1]_net_1\, B => 
        \cnt_send_0[0]_net_1\, C => \cnt_send[2]_net_1\, Y => 
        \un20_data_send_buffer_1.U1.DWACT_FINC_E[2]\);
    
    \data_all[136]\ : DFN1E0C0
      port map(D => N_81, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[136]_net_1\);
    
    \cnt_recive[29]\ : DFN1E0C0
      port map(D => cnt_recive_n29, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[29]_net_1\);
    
    \data_all_RNO_0[154]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[154]_net_1\, Y => N_626);
    
    \cnt_flag_RNIFGDSD[1]\ : NOR2B
      port map(A => cnt_flag_0_sqmuxa_1, B => end_flag_RNI256BD, 
        Y => cnt_flag_0_sqmuxa);
    
    \data_all_RNO_0[44]\ : MX2C
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[44]_net_1\, S => N_1628, Y => N_615);
    
    send_end_RNI5FJ66_0 : NOR2
      port map(A => N_383_i_0_o4_N_5_mux, B => N_398, Y => N_1049);
    
    \data_all_RNO_1[1]\ : NOR2A
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[1]\, Y => N_1538);
    
    \data_all_RNO_0[121]\ : NOR2
      port map(A => \data_all[121]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_698);
    
    \data_all[1]\ : DFN1E0C0
      port map(D => N_347, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[1]_net_1\);
    
    \cnt_recive_RNI5BLS5_7[1]\ : NOR3A
      port map(A => N_381_i_0_o4_m2_e_1, B => N_429, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        N_397_i_0_o4_m2_e_3);
    
    \data_send_buffer_RNO_1[6]\ : MX2
      port map(A => N_967_4, B => N_1095_3, S => 
        \cnt_send_0[4]_net_1\, Y => \un39_data_send_buffer[6]\);
    
    \data_all_RNO_0[152]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[152]_net_1\, Y => N_630);
    
    \data_all_RNO_0[47]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[47]_net_1\, S => N_1628, Y => N_1656);
    
    \cnt_recive_RNO[5]\ : XA1B
      port map(A => cnt_recive_c4, B => \cnt_recive[5]_net_1\, C
         => N_398, Y => cnt_recive_n5);
    
    \cnt_send_0_RNI62K31_1[2]\ : NOR3A
      port map(A => \cnt_send_0[2]_net_1\, B => 
        \cnt_send[3]_net_1\, C => \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_34_0_a4_out);
    
    \cnt_send_RNI6FJO[21]\ : NOR3C
      port map(A => \cnt_send[22]_net_1\, B => 
        \cnt_send[21]_net_1\, C => cnt_send_c24_m6_0_a2_4_2, Y
         => cnt_send_c24_m6_0_a2_4_5);
    
    \cnt_flag_RNIDB7H[1]\ : NOR2A
      port map(A => \cnt_flag[1]_net_1\, B => \cnt_flag[0]_net_1\, 
        Y => cnt_flag_0_sqmuxa_1);
    
    \data_send_buffer_RNO_0[0]\ : OR3
      port map(A => N_612, B => N_602, C => 
        \data_send_buffer_4_1_9[0]\, Y => 
        \data_send_buffer_4_1_13[0]\);
    
    \data_all_RNO_0[26]\ : AO1A
      port map(A => \data_all[26]_net_1\, B => N_395, C => N_398, 
        Y => \data_all_4_i_0[26]\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI5FJ66_2[111]\ : OA1C
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_398, Y
         => N_1048);
    
    \data_send_buffer_RNO_1[4]\ : OR3
      port map(A => \data_send_buffer_4_1_7_0[4]\, B => N_530, C
         => \data_send_buffer_4_1_12[4]\, Y => 
        \data_send_buffer_4_1_16[4]\);
    
    \data_all_RNO_0[31]\ : MX2C
      port map(A => \data_recive_buffer[7]\, B => 
        \data_all[31]_net_1\, S => N_395, Y => N_1659);
    
    \cnt_send_RNINR1F2[2]\ : NOR2B
      port map(A => N_1853, B => N_1851, Y => N_1573);
    
    \data_send_buffer_RNO_9[5]\ : NOR2B
      port map(A => \data_all[85]_net_1\, B => N_1579, Y => 
        N_1824);
    
    \cnt_recive_RNI3IQC1_1[1]\ : NOR3A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        data_all_4_i_o2_i_o4_111_m2_e_0);
    
    tx_uart_pad : OUTBUF
      port map(D => tx_uart_c, PAD => tx_uart);
    
    \data_all_RNO_1[131]\ : NOR3A
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[3]\, Y => N_679);
    
    \data_all_RNO_0[78]\ : MX2
      port map(A => \data_all[78]_net_1\, B => 
        \un52_data_all[78]\, S => \un46_data_all[80]\, Y => 
        \data_all_2[78]\);
    
    un20_data_send_buffer_1_I_14 : XNOR2
      port map(A => \cnt_send[2]_net_1\, B => 
        \un20_data_send_buffer_1.N_4\, Y => I_14_1);
    
    \cnt_recive_RNI3IQC1_2[1]\ : NOR3A
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[4]_net_1\, C => \cnt_recive[0]_net_1\, Y => 
        N_387_i_0_o2_m2_e_1);
    
    \data_all[74]\ : DFN1E0C0
      port map(D => N_203, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[74]_net_1\);
    
    \cnt_recive_RNI9BUH3[10]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_11_1[111]\, B => 
        \data_all_4_i_o2_0_i_o2_0_11_0[111]\, Y => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\);
    
    \cnt_recive[28]\ : DFN1E0C0
      port map(D => cnt_recive_n28, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[28]_net_1\);
    
    \cnt_recive_RNO[16]\ : XA1B
      port map(A => cnt_recive_c15, B => \cnt_recive[16]_net_1\, 
        C => N_398, Y => cnt_recive_n16);
    
    \cnt_send_RNIMD2N1[8]\ : NOR3C
      port map(A => \cnt_send[8]_net_1\, B => \cnt_send[6]_net_1\, 
        C => cnt_send_c11_m6_0_a2_2, Y => cnt_send_c11_m6_0_a2_4);
    
    \data_send_buffer_RNO_20[0]\ : MX2
      port map(A => data_send_buffer_4_1_6tt_0_N_2, B => 
        data_send_buffer_4_1_6tt_0_N_3, S => \cnt_send[3]_net_1\, 
        Y => \data_send_buffer_RNO_20[0]_net_1\);
    
    \data_send_buffer_RNO_14[2]\ : NOR3C
      port map(A => N_1850, B => \data_all[26]_net_1\, C => 
        N_1841, Y => N_559);
    
    \data_all[78]\ : DFN1E0C0
      port map(D => \data_all_4[78]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[78]_net_1\);
    
    \data_send_buffer_RNO_5[2]\ : NOR2B
      port map(A => \data_all[98]_net_1\, B => N_1573, Y => N_568);
    
    \data_send_buffer_RNO_5[1]\ : AO1
      port map(A => \data_all[81]_net_1\, B => N_1579, C => N_584, 
        Y => \data_send_buffer_4_1_10[1]\);
    
    \data_send_buffer_RNO_0[5]\ : OR3
      port map(A => N_1819, B => N_1820, C => 
        \data_send_buffer_4_1_0_12[5]\, Y => 
        \data_send_buffer_4_1_0_16[5]\);
    
    \cnt_recive_RNIH0RC1[6]\ : NOR3C
      port map(A => \cnt_recive[6]_net_1\, B => 
        \cnt_recive[9]_net_1\, C => \cnt_recive[4]_net_1\, Y => 
        cnt_recive_c10_m6_0_a2_5);
    
    \cnt_recive_RNI5BLS5_2[1]\ : OR3
      port map(A => \data_all_4_i_i_o4_0[14]\, B => N_429, C => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        \data_all_4_i_i_o4_2[14]\);
    
    \data_send_buffer_RNO_27[0]\ : NOR2A
      port map(A => \data_all[88]_net_1\, B => 
        \cnt_send[2]_net_1\, Y => data_send_buffer_4_1_6tt_0_N_3);
    
    \data_all_RNO[110]\ : NOR3
      port map(A => N_720, B => N_398, C => N_721, Y => N_133);
    
    \cnt_send_RNO[24]\ : XA1B
      port map(A => cnt_send_c23, B => \cnt_send[24]_net_1\, C
         => N_398, Y => cnt_send_n24);
    
    \data_send_buffer_RNO_3[3]\ : NOR2B
      port map(A => \data_all[35]_net_1\, B => N_1580, Y => 
        \data_send_buffer_RNO_3[3]_net_1\);
    
    \cnt_send_RNO[30]\ : AX1C
      port map(A => cnt_send_c28, B => cnt_send_99_0, C => N_981, 
        Y => cnt_send_n30);
    
    \cnt_send_RNIT8HR[8]\ : NOR2B
      port map(A => \cnt_send[8]_net_1\, B => \cnt_send[9]_net_1\, 
        Y => cnt_send_c13_m6_0_a2_4_2);
    
    \data_send_buffer_RNO_2[0]\ : AO1
      port map(A => \data_all[96]_net_1\, B => N_1573, C => 
        data_send_buffer_4_1_12_out, Y => 
        \data_send_buffer_4_1_12[0]\);
    
    \data_all_RNO_0[118]\ : NOR2A
      port map(A => \data_all[118]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_3);
    
    \cnt_send[10]\ : DFN1E1C0
      port map(D => cnt_send_n10, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[10]_net_1\);
    
    \cnt_send_RNIETP71[26]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_19_1, B => 
        \cnt_send[26]_net_1\, C => \cnt_send[10]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_19_4);
    
    \data_send_buffer_RNO_15[0]\ : AO1
      port map(A => \data_all[40]_net_1\, B => N_1582, C => N_605, 
        Y => \data_send_buffer_4_1_4[0]\);
    
    \data_send_buffer_RNO_2[5]\ : OR3
      port map(A => N_1824, B => N_1825, C => 
        \data_send_buffer_4_1_0_14[5]\, Y => 
        \data_send_buffer_4_1_0_17[5]\);
    
    \data_all[31]\ : DFN1E0C0
      port map(D => N_289, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[31]_net_1\);
    
    \data_send_buffer_RNO_12[5]\ : OA1
      port map(A => data_send_buffer_4_1_0_7_5_m2_0_a2_1, B => 
        \data_send_buffer_4_1_0_a4_14_0[5]\, C => N_1841, Y => 
        \data_send_buffer_4_1_0_1[5]\);
    
    send_end_RNO_20 : OR3
      port map(A => N_590_i, B => N_594_i, C => 
        send_end_0_sqmuxa_i_4, Y => send_end_0_sqmuxa_i_14);
    
    \data_all_RNO_1[104]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[0]\, Y => N_733);
    
    \data_all[30]\ : DFN1E0C0
      port map(D => N_291, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[30]_net_1\);
    
    \data_all[24]\ : DFN1E0C0
      port map(D => N_301, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[24]_net_1\);
    
    \cnt_send_RNIHSGR_2[2]\ : NOR2
      port map(A => \cnt_send[3]_net_1\, B => \cnt_send[2]_net_1\, 
        Y => N_1840);
    
    \data_send_buffer_RNO_14[3]\ : NOR2B
      port map(A => N_1851, B => \data_all[99]_net_1\, Y => 
        data_send_buffer_4_1_0_a4_15_out);
    
    \data_all_RNO_0[141]\ : NOR3A
      port map(A => \single_recive_0.N_171\, B => N_431, C => 
        N_449_i_0_o4_0, Y => N_1768);
    
    \data_all_RNO_1[96]\ : NOR3A
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[0]\, Y => N_749);
    
    \data_send_buffer_RNO_17[5]\ : NOR2B
      port map(A => N_1580, B => \data_all[37]_net_1\, Y => 
        \data_send_buffer_RNO_17[5]_net_1\);
    
    \data_send_buffer_RNO_6[0]\ : AO1
      port map(A => \data_all[128]_net_1\, B => N_1581, C => 
        \data_send_buffer_4_1_2[0]\, Y => 
        \data_send_buffer_4_1_5_0[0]\);
    
    \data_all_RNO_0[28]\ : OA1B
      port map(A => N_395, B => \data_recive_buffer[4]\, C => 
        N_398, Y => \data_all_4_0[28]\);
    
    \cnt_send_RNICKIO[19]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_20_4, B => 
        \cnt_send[19]_net_1\, C => \cnt_send[23]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_9);
    
    \data_send_buffer_RNO_15[6]\ : MX2
      port map(A => \data_all[150]_net_1\, B => 
        \data_all[158]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_631_3);
    
    \data_all_RNO[93]\ : NOR2A
      port map(A => N_641, B => N_398, Y => N_167);
    
    \data_all_RNO[71]\ : AO1
      port map(A => \data_all[71]_net_1\, B => N_1051, C => 
        N_1721, Y => N_220);
    
    \cnt_send_RNO[5]\ : XA1B
      port map(A => cnt_send_c4, B => \cnt_send[5]_net_1\, C => 
        N_398, Y => cnt_send_n5);
    
    \data_send_buffer_RNO_27[4]\ : NOR3C
      port map(A => data_send_buffer_4_1_a2_18_4_m3_0_a2_0, B => 
        send_end_0_sqmuxa_i_a2_m3_e_1, C => 
        data_send_buffer_4_1_a2_18_0_m2_0_a2_2, Y => 
        data_send_buffer_4_1_a2_18_4_m3_0_a2_3);
    
    \data_all[64]\ : DFN1E0C0
      port map(D => N_223, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[64]_net_1\);
    
    \data_all_RNO_0[10]\ : NOR2A
      port map(A => N_1636, B => \data_all[10]_net_1\, Y => 
        N_1519);
    
    \data_all_RNO[24]\ : OA1B
      port map(A => \data_recive_buffer[0]\, B => N_395, C => 
        \data_all_4_i_0[24]\, Y => N_301);
    
    \data_all[28]\ : DFN1E0C0
      port map(D => \data_all_4[28]\, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \data_all[28]_net_1\);
    
    send_end_RNO_29 : XO1
      port map(A => \cnt_recive[8]_net_1\, B => 
        \cnt_send[8]_net_1\, C => un12_cnt_send_7, Y => 
        send_end_0_sqmuxa_i_10);
    
    \data_all_RNO[144]\ : AO1
      port map(A => \data_all[144]_net_1\, B => N_1860, C => 
        N_1774, Y => N_318);
    
    \data_all_RNO_1[128]\ : NOR3A
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[0]\, Y => N_685);
    
    \cnt_recive_RNI26S37[15]\ : NOR3C
      port map(A => cnt_recive_c5, B => cnt_recive_c14_m6_0_a2_7, 
        C => \cnt_recive[15]_net_1\, Y => cnt_recive_c15);
    
    send_end_RNO_33 : XOR2
      port map(A => \cnt_send[19]_net_1\, B => 
        \cnt_recive[19]_net_1\, Y => un12_cnt_send_19);
    
    \cnt_recive_end_RNO_0[6]\ : AX1C
      port map(A => \cnt_recive_end[5]_net_1\, B => 
        cnt_recive_end_c4, C => \cnt_recive_end[6]_net_1\, Y => 
        cnt_recive_end_n6_tz);
    
    \data_send_buffer_RNO_23[2]\ : NOR2B
      port map(A => \data_all[58]_net_1\, B => N_1570, Y => N_558);
    
    \data_all[68]\ : DFN1E0C0
      port map(D => N_212, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[68]_net_1\);
    
    \data_send_buffer_RNO_31[5]\ : NOR2B
      port map(A => \data_all[101]_net_1\, B => 
        \cnt_send[3]_net_1\, Y => 
        \data_send_buffer_4_1_0_11_a1_2_0[5]\);
    
    \data_send_buffer_RNO_14[4]\ : OR3
      port map(A => N_525, B => N_529, C => N_513, Y => 
        \data_send_buffer_4_1_1[4]\);
    
    \cnt_send_RNO_0[24]\ : NOR2B
      port map(A => cnt_send_c22, B => \cnt_send[23]_net_1\, Y
         => cnt_send_c23);
    
    idle_recive_fall_RNO : NOR2A
      port map(A => idle_recive, B => N_398, Y => 
        idle_recive_fall_3);
    
    \data_all_RNO[81]\ : MX2
      port map(A => N_1052, B => \data_all_4_i_i_a4_0[81]\, S => 
        N_442, Y => N_224);
    
    \data_all_4_i_o2_0_i_o2_0_12[111]\ : OR2
      port map(A => \data_all_4_i_o2_0_i_o2_0_12_7[111]_net_1\, B
         => \data_all_4_i_o2_0_i_o2_0_12_8[111]_net_1\, Y => 
        \data_all_4_i_o2_0_i_o2_0_0[111]\);
    
    \cnt_recive_RNI57MV5[2]\ : OR2A
      port map(A => N_387_i_0_o2_N_5_mux, B => N_440, Y => N_457);
    
    \data_send_buffer_RNO_16[1]\ : NOR3C
      port map(A => \data_all[97]_net_1\, B => N_1851, C => 
        N_1853, Y => N_590);
    
    \data_all_RNO[19]\ : MX2
      port map(A => \single_recive_0.N_173\, B => 
        data_all_4_i_i_a4_out_5, S => N_443, Y => N_1594);
    
    \data_send_buffer_RNO_14[1]\ : OA1
      port map(A => N_1667, B => N_1665, C => 
        \data_send_buffer_4_1_a2_4[1]\, Y => N_573);
    
    \data_send_buffer_RNO_10[1]\ : OR3
      port map(A => N_576, B => \data_send_buffer_4_1_0[1]\, C
         => N_579, Y => \data_send_buffer_4_1_6[1]\);
    
    \data_all_RNO_0[61]\ : NOR2B
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \single_recive_0.N_171\, Y => N_1709);
    
    \data_send_buffer_RNO_23[0]\ : AO1
      port map(A => \data_send_buffer_4_1_5_a1_5_4[0]\, B => 
        \data_send_buffer_4_1_5_a1_5_3[0]\, C => 
        \data_send_buffer_4_1_5_a0_5[0]\, Y => 
        \data_send_buffer_4_1_5_tz[0]\);
    
    \cnt_send_RNO[8]\ : XA1B
      port map(A => cnt_send_c7, B => \cnt_send[8]_net_1\, C => 
        N_398, Y => cnt_send_n8);
    
    \data_send_buffer_RNO_6[3]\ : OR3
      port map(A => \data_send_buffer_4_1_0_7[3]\, B => 
        \data_send_buffer_RNO_16[3]_net_1\, C => 
        \data_send_buffer_4_1[3]\, Y => \data_send_buffer_4_4[3]\);
    
    \cnt_send_RNIOCNB2[4]\ : XA1B
      port map(A => cnt_send_c3, B => \cnt_send[4]_net_1\, C => 
        N_398, Y => cnt_send_n4);
    
    \cnt_delay_RNO[3]\ : XA1B
      port map(A => cnt_delay_c2, B => \cnt_delay[3]_net_1\, C
         => N_398, Y => cnt_delay_n3);
    
    \data_all_RNO[123]\ : OA1C
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \data_recive_buffer[3]\, C => \data_all_4_i_0[123]\, Y
         => N_107);
    
    \cnt_send_RNI2NCI[13]\ : NOR3
      port map(A => \cnt_send[24]_net_1\, B => 
        \cnt_send[13]_net_1\, C => \cnt_send[15]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_7);
    
    \cnt_recive_RNIJFS04[0]\ : NOR2A
      port map(A => \cnt_recive[0]_net_1\, B => 
        \data_all_4_i_o2_0_i_o2_0_11[111]\, Y => 
        data_all_4_i_i_a4_142_m4_e_0);
    
    \data_all_RNO_1[154]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_159_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[2]\, Y => N_627);
    
    \data_send_buffer_RNO_19[7]\ : OA1B
      port map(A => data_send_buffer_4_1_a2_2_7_m2_e_2, B => 
        \data_send_buffer_4_1_19_0[7]\, C => N_398, Y => 
        \data_send_buffer_4_1_0[7]\);
    
    \data_send_buffer_RNO_16[7]\ : AO1
      port map(A => \data_all[87]_net_1\, B => N_1579, C => N_470, 
        Y => \data_send_buffer_4_1_10[7]\);
    
    \cnt_recive_RNI57MV5_0[0]\ : OR3A
      port map(A => data_all_4_i_o2_0_47_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => N_364, Y
         => N_1628);
    
    \cnt_delay_RNO[1]\ : XA1B
      port map(A => \cnt_delay[1]_net_1\, B => 
        \cnt_delay[0]_net_1\, C => N_398, Y => cnt_delay_n1);
    
    \cnt_send[6]\ : DFN1E1C0
      port map(D => cnt_send_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[6]_net_1\);
    
    \cnt_recive_RNICO5O8[2]\ : NOR3C
      port map(A => cnt_recive_c17_m6_0_a2_4, B => 
        cnt_recive_c19_m6_0_a2_3, C => cnt_recive_c2, Y => 
        cnt_recive_c19);
    
    \cnt_recive[6]\ : DFN1E0C0
      port map(D => cnt_recive_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[6]_net_1\);
    
    \data_all_RNO_0[127]\ : NOR2B
      port map(A => data_all_4_i_o2_i_o4_127_N_5_mux, B => 
        \single_recive_0.N_169\, Y => N_1757);
    
    \cnt_send_RNO_0[28]\ : NOR3C
      port map(A => cnt_send_c24_m6_0_a2_4, B => cnt_send_95_5, C
         => cnt_send_95_7, Y => cnt_send_95_8);
    
    \data_all_RNO[97]\ : NOR3
      port map(A => N_746, B => N_398, C => N_747, Y => N_159);
    
    un1_cnt_flag_1_I_1 : AND2
      port map(A => \cnt_flag[0]_net_1\, B => end_flag_RNI256BD, 
        Y => \un1_cnt_flag_1.DWACT_ADD_CI_0_TMP[0]\);
    
    idle_send_down_RNO : NOR3A
      port map(A => \idle_send_fall\, B => idle_send, C => N_398, 
        Y => idle_send_down_3);
    
    \data_send_buffer_RNO_9[7]\ : OR3
      port map(A => \data_send_buffer_4_1_11[7]\, B => 
        \data_send_buffer_4_1_10[7]\, C => 
        \data_send_buffer_4_1_8[7]\, Y => 
        data_send_buffer_4_1_17_out);
    
    \data_all[135]\ : DFN1E0C0
      port map(D => N_300, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[135]_net_1\);
    
    \cnt_recive_end[8]\ : DFN1C0
      port map(D => cnt_recive_end_n8, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => receive_end2lto8);
    
    \data_send_buffer_RNO_29[0]\ : NOR2B
      port map(A => N_1851, B => 
        \data_send_buffer_4_1_1_a0_3_1[0]\, Y => 
        \data_send_buffer_4_1_5_a1_5_4[0]\);
    
    \data_send_buffer_RNO_0[2]\ : OR3
      port map(A => \data_send_buffer_4_1_11[2]\, B => 
        \data_send_buffer_4_1_6[2]\, C => N_568, Y => 
        data_send_buffer_4_1_17_out_2);
    
    \data_all_RNO_1[98]\ : NOR3A
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[2]\, Y => N_745);
    
    \data_send_buffer_RNO_28[1]\ : NOR3A
      port map(A => \data_all[1]_net_1\, B => I_12_1, C => 
        \cnt_send_0[0]_net_1\, Y => 
        \data_send_buffer_4_1_a2_1[1]\);
    
    \cnt_recive_RNI2FAF1_1[2]\ : NOR2A
      port map(A => N_655_2, B => \cnt_recive[2]_net_1\, Y => 
        N_815_2);
    
    \data_send_buffer_RNO_10[7]\ : AO1
      port map(A => \data_send_buffer_4_1_0_a1_1[7]\, B => N_1843, 
        C => \data_send_buffer_4_1_0[7]\, Y => 
        \data_send_buffer_4_1_1_0[7]\);
    
    \data_all[85]\ : DFN1E0C0
      port map(D => N_236, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[85]_net_1\);
    
    \data_all_RNO_0[1]\ : NOR2
      port map(A => \data_all[1]_net_1\, B => 
        N_397_i_0_o4_N_5_mux, Y => N_1537);
    
    \cnt_send_0_RNIUUT21[4]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, B
         => N_398, Y => N_1841);
    
    \data_send_buffer_RNO_31[1]\ : MX2C
      port map(A => \data_all[9]_net_1\, B => 
        \data_all[25]_net_1\, S => \cnt_send_0[1]_net_1\, Y => 
        data_send_buffer_4_1_1_1_m3_0_0);
    
    \data_all_RNO_2[88]\ : NOR3A
      port map(A => data_all_4_i_88_m4_0_a2_1, B => N_398, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        data_all_4_i_88_N_9_mux);
    
    \data_all_RNO_1[73]\ : NOR2A
      port map(A => \un46_data_all[80]\, B => 
        \data_recive_buffer[1]\, Y => N_793);
    
    \cnt_recive_end_RNO[4]\ : XA1
      port map(A => cnt_recive_end_c3, B => 
        \cnt_recive_end[4]_net_1\, C => cnt_recive_end_0_sqmuxa, 
        Y => cnt_recive_end_n4);
    
    \data_all_RNO_0[101]\ : NOR3B
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_171\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1737);
    
    idle_send_down : DFN1C0
      port map(D => idle_send_down_3, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \idle_send_down\);
    
    \cnt_recive_RNITG4Q[14]\ : NOR2
      port map(A => \cnt_recive[14]_net_1\, B => 
        \cnt_recive[13]_net_1\, Y => un5_idle_recive_9);
    
    \cnt_send_RNI5F401[18]\ : NOR3A
      port map(A => send_end_0_sqmuxa_i_a2_0_20_6, B => 
        \cnt_send[16]_net_1\, C => \cnt_send[18]_net_1\, Y => 
        send_end_0_sqmuxa_i_a2_0_20_10);
    
    \data_all_RNO[96]\ : NOR3
      port map(A => N_748, B => N_398, C => N_749, Y => N_161);
    
    \cnt_send_RNO[29]\ : XA1B
      port map(A => cnt_send_c28, B => \cnt_send[29]_net_1\, C
         => N_398, Y => cnt_send_n29);
    
    \data_send_buffer_RNO_8[6]\ : MX2
      port map(A => N_711_3, B => N_743_3, S => 
        \cnt_send_0[2]_net_1\, Y => N_871_3);
    
    \cnt_recive_end[6]\ : DFN1C0
      port map(D => cnt_recive_end_n6, CLK => sys_clk_c, CLR => 
        sys_rest_c, Q => \cnt_recive_end[6]_net_1\);
    
    \data_all_RNO_0[12]\ : MX2C
      port map(A => \data_recive_buffer[4]\, B => 
        \data_all[12]_net_1\, S => N_1636, Y => N_645);
    
    \data_all[45]\ : DFN1E0C0
      port map(D => N_261, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[45]_net_1\);
    
    \data_all[156]\ : DFN1E0C0
      port map(D => N_1612, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[156]_net_1\);
    
    \data_send_buffer_RNO_11[7]\ : NOR3B
      port map(A => \data_all_4_i_i_a4_0[7]\, B => N_1865, C => 
        N_1888, Y => \data_send_buffer_RNO_11[7]_net_1\);
    
    \cnt_send_RNO_0[7]\ : AX1C
      port map(A => \cnt_send[6]_net_1\, B => cnt_send_c5, C => 
        \cnt_send[7]_net_1\, Y => cnt_send_n7_tz);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    \data_send_buffer_RNO_30[5]\ : NOR2B
      port map(A => \data_all[69]_net_1\, B => 
        \cnt_send[3]_net_1\, Y => 
        \data_send_buffer_4_1_0_11_a0_2_0[5]\);
    
    \data_all_RNO[74]\ : NOR3
      port map(A => N_790, B => N_398, C => N_791, Y => N_203);
    
    \cnt_send_RNIQS7C[15]\ : NOR2B
      port map(A => \cnt_send[17]_net_1\, B => 
        \cnt_send[15]_net_1\, Y => cnt_send_c18_m6_0_a2_1);
    
    \data_all_RNO_0[119]\ : NOR2A
      port map(A => \data_all[119]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out);
    
    \cnt_flag_RNO[1]\ : NOR3A
      port map(A => I_10, B => N_398, C => cnt_flag_0_sqmuxa, Y
         => \cnt_flag_5[1]\);
    
    \cnt_recive_RNO[14]\ : XA1B
      port map(A => cnt_recive_c13, B => \cnt_recive[14]_net_1\, 
        C => N_398, Y => cnt_recive_n14);
    
    send_end_RNO_22 : XOR2
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_recive[3]_net_1\, Y => N_450_i);
    
    \data_all[76]\ : DFN1E0C0
      port map(D => N_199, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[76]_net_1\);
    
    \data_all[73]\ : DFN1E0C0
      port map(D => N_205, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[73]_net_1\);
    
    \data_all_RNO[141]\ : AO1
      port map(A => \data_all[141]_net_1\, B => N_1046, C => 
        N_1768, Y => N_306);
    
    \cnt_recive_RNIUBG64[8]\ : NOR2B
      port map(A => cnt_recive_c7, B => \cnt_recive[8]_net_1\, Y
         => cnt_recive_c8);
    
    \data_send_buffer_RNO_36[0]\ : NOR2A
      port map(A => \data_all[24]_net_1\, B => 
        \cnt_send[28]_net_1\, Y => 
        \data_send_buffer_4_1_1_a0_3_0[0]\);
    
    \data_send_buffer_RNO_11[0]\ : OR3
      port map(A => N_613, B => \data_send_buffer_4_1_0[0]\, C
         => N_609, Y => \data_send_buffer_4_1_2[0]\);
    
    \data_send_buffer_RNO_5[7]\ : AO1
      port map(A => \data_all[63]_net_1\, B => N_1570, C => N_467, 
        Y => \data_send_buffer_4_1_7[7]\);
    
    \data_all_RNO_0[19]\ : NOR2A
      port map(A => \data_all[19]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_5);
    
    \data_all_RNO_0[135]\ : NOR3B
      port map(A => N_391_i_0_o4_m2_e_2, B => 
        \single_recive_0.N_169\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1764);
    
    \data_all_RNO[4]\ : OA1C
      port map(A => N_397_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[4]\, C => \data_all_4_i_0[4]\, Y => 
        N_341);
    
    \data_send_buffer_RNO_4[1]\ : NOR2B
      port map(A => \data_all[113]_net_1\, B => N_1584, Y => 
        N_582);
    
    send_end_RNO_2 : NOR3C
      port map(A => N_1888, B => send_end_0_sqmuxa_i_a4_0, C => 
        N_1865, Y => N_1797);
    
    \data_all_RNO_0[147]\ : NOR2B
      port map(A => \single_recive_0.N_173\, B => 
        data_all_4_i_i_o2_144_N_5_mux, Y => N_1780);
    
    \data_all_RNO[128]\ : NOR3
      port map(A => N_684, B => N_398, C => N_685, Y => N_97);
    
    \data_send_buffer_RNO_3[0]\ : NOR2B
      port map(A => \data_all[32]_net_1\, B => N_1580, Y => N_612);
    
    \data_all_RNO[84]\ : MX2
      port map(A => \single_recive_0.N_172\, B => 
        \data_all_4_i_i_a4_0[84]\, S => N_442, Y => N_234);
    
    \data_all_RNO_0[151]\ : NOR2B
      port map(A => data_all_4_i_i_o2_144_N_5_mux, B => 
        \single_recive_0.N_169\, Y => N_1788);
    
    \cnt_recive_RNO[19]\ : XA1B
      port map(A => cnt_recive_c18, B => \cnt_recive[19]_net_1\, 
        C => N_398, Y => cnt_recive_n19);
    
    vld_send_RNO_0 : NOR3
      port map(A => un12_cnt_delay, B => N_398, C => 
        end_flag_RNI256BD, Y => vld_send_2_sqmuxa);
    
    \data_all_RNO_1[105]\ : NOR3A
      port map(A => data_all_4_i_o2_i_o4_111_m2_e_2, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_recive_buffer[1]\, Y => N_731);
    
    \data_all_RNO[107]\ : NOR3
      port map(A => N_726, B => N_398, C => N_727, Y => N_139);
    
    \cnt_send_RNI6NJC1[1]\ : NOR2B
      port map(A => data_send_buffer_4_1_a2_23_0_a2_out, B => 
        \cnt_send[1]_net_1\, Y => 
        data_send_buffer_4_1_a2_38_a2_0_out);
    
    \cnt_recive[22]\ : DFN1E0C0
      port map(D => cnt_recive_n22, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[22]_net_1\);
    
    \data_send_buffer_RNO_28[2]\ : NOR3B
      port map(A => \data_all[10]_net_1\, B => 
        data_send_buffer_4_1_a2_31_0_a2_7_m1_e_1, C => N_398, Y
         => data_send_buffer_4_1_a2_14_2_m1_e_1);
    
    \data_all_RNO_0[70]\ : NOR3B
      port map(A => N_381_i_0_o4_m2_e_3, B => 
        \single_recive_0.N_170\, C => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => N_1719);
    
    \cnt_recive_RNO[1]\ : XA1B
      port map(A => \cnt_recive[1]_net_1\, B => 
        \cnt_recive[0]_net_1\, C => N_398, Y => N_19);
    
    \cnt_recive[16]\ : DFN1E0C0
      port map(D => cnt_recive_n16, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_recive_1_sqmuxa, Q => 
        \cnt_recive[16]_net_1\);
    
    \cnt_send_RNO_0[18]\ : NOR2B
      port map(A => cnt_send_c16, B => \cnt_send[17]_net_1\, Y
         => cnt_send_c17);
    
    \cnt_recive_RNIL9ST[1]\ : NOR2B
      port map(A => \cnt_recive[0]_net_1\, B => 
        \cnt_recive[1]_net_1\, Y => cnt_recive_c1);
    
    \cnt_send[3]\ : DFN1E1C0
      port map(D => cnt_send_n3, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende, Q => \cnt_send[3]_net_1\);
    
    \cnt_recive_RNI5T0U7[8]\ : NOR2B
      port map(A => cnt_recive_c17_m6_0_a2_4, B => cnt_recive_c8, 
        Y => cnt_recive_c17);
    
    \data_send_buffer_RNO_13[3]\ : NOR2B
      port map(A => N_1849, B => \data_all[67]_net_1\, Y => 
        data_send_buffer_4_1_0_a4_16_out);
    
    \data_all_RNO_0[51]\ : NOR2A
      port map(A => \data_all[51]_net_1\, B => N_398, Y => 
        data_all_4_i_i_a4_out_6);
    
    \data_send_buffer_RNO_5[4]\ : OR3
      port map(A => \data_send_buffer_4_1_1[4]\, B => N_512, C
         => N_516, Y => \data_send_buffer_4_1_7_0[4]\);
    
    \data_all_RNO_0[83]\ : NOR2A
      port map(A => \data_all[83]_net_1\, B => N_398, Y => 
        \data_all_4_i_i_a4_0[83]\);
    
    \data_send_buffer_RNO_8[2]\ : AO1
      port map(A => \data_all[122]_net_1\, B => N_1578, C => 
        N_557, Y => \data_send_buffer_4_1_8[2]\);
    
    \data_send_buffer_RNO_20[6]\ : MX2
      port map(A => \data_all[70]_net_1\, B => 
        \data_all[78]_net_1\, S => \cnt_send_0[0]_net_1\, Y => 
        N_551_3);
    
    \data_all_RNO_0[96]\ : OA1C
      port map(A => N_385_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, C => 
        \data_all[96]_net_1\, Y => N_748);
    
    \cnt_send[23]\ : DFN1E1C0
      port map(D => cnt_send_n23, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[23]_net_1\);
    
    \data_send_buffer_RNO_4[4]\ : AO1
      port map(A => data_send_buffer_4_1_a2_3_out, B => N_1852, C
         => N_515, Y => \data_send_buffer_4_1_8[4]\);
    
    \data_all[111]\ : DFN1E0C0
      port map(D => N_1602, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[111]_net_1\);
    
    \data_send_buffer_RNO_6[5]\ : NOR2B
      port map(A => \data_all[125]_net_1\, B => N_1578, Y => 
        N_1818);
    
    \data_all_RNO[51]\ : MX2
      port map(A => \single_recive_0.N_173\, B => 
        data_all_4_i_i_a4_out_6, S => N_457, Y => N_194);
    
    \data_all[26]\ : DFN1E0C0
      port map(D => N_297, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[26]_net_1\);
    
    \data_all[23]\ : DFN1E0C0
      port map(D => N_166, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[23]_net_1\);
    
    \data_send_buffer_RNO_22[1]\ : NOR2B
      port map(A => \data_all[145]_net_1\, B => N_984, Y => N_575);
    
    \cnt_send[21]\ : DFN1E1C0
      port map(D => cnt_send_n21, CLK => sys_clk_c, CLR => 
        sys_rest_c, E => cnt_sende_0, Q => \cnt_send[21]_net_1\);
    
    idle_send_fall_RNO : NOR2A
      port map(A => idle_send, B => N_398, Y => idle_send_fall_2);
    
    \data_send_buffer_RNO_4[5]\ : NOR2B
      port map(A => \data_all[61]_net_1\, B => N_1570, Y => 
        N_1820);
    
    \data_all_RNO[135]\ : AO1
      port map(A => \data_all[135]_net_1\, B => N_1048, C => 
        N_1764, Y => N_300);
    
    \data_all[101]\ : DFN1E0C0
      port map(D => N_1599, CLK => sys_clk_c, CLR => sys_rest_c, 
        E => cnt_recive_1_sqmuxa, Q => \data_all[101]_net_1\);
    
    \data_all_RNO_0[120]\ : NOR2
      port map(A => \data_all[120]_net_1\, B => 
        data_all_4_i_o2_i_o4_127_N_5_mux, Y => N_700);
    
    vld_send_RNIF5UH : NOR2
      port map(A => \vld_send\, B => N_398, Y => 
        data_send_buffer_1_sqmuxa);
    
    \data_send_buffer_RNO_24[5]\ : NOR2B
      port map(A => \data_send_buffer_4_1_0_a4_19_1[5]\, B => 
        N_1865, Y => N_1837);
    
    \data_all[66]\ : DFN1E0C0
      port map(D => N_219, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[66]_net_1\);
    
    \data_all[63]\ : DFN1E0C0
      port map(D => N_208, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[63]_net_1\);
    
    \data_all[12]\ : DFN1E0C0
      port map(D => N_325, CLK => sys_clk_c, CLR => sys_rest_c, E
         => cnt_recive_1_sqmuxa, Q => \data_all[12]_net_1\);
    
    \cnt_send_RNO_0[27]\ : NOR3C
      port map(A => cnt_send_c24_m6_0_a2_4, B => 
        cnt_send_c26_m5_0_a2_4, C => cnt_send_c26_m5_0_a2_6, Y
         => cnt_send_c26);
    
    \cnt_send_RNI6VGJ1[1]\ : NOR2A
      port map(A => data_send_buffer_4_1_a2_21_a2_0_out, B => 
        N_398, Y => N_1853);
    
    \data_send_buffer_RNO_3[2]\ : AO1
      port map(A => \data_all[82]_net_1\, B => N_1579, C => N_560, 
        Y => \data_send_buffer_4_1_11[2]\);
    
    \data_send_buffer_RNO_27[7]\ : OA1
      port map(A => \data_send_buffer_4_1_1_a0_3[7]\, B => 
        \data_send_buffer_4_1_1_a1_3[7]\, C => N_1840, Y => 
        \data_send_buffer_4_1_19_0[7]\);
    
    \data_all_RNO_1[56]\ : NOR2A
      port map(A => N_383_i_0_o4_N_5_mux, B => 
        \data_recive_buffer[0]\, Y => N_833);
    
    \cnt_recive_RNO[23]\ : XA1B
      port map(A => cnt_recive_c22, B => \cnt_recive[23]_net_1\, 
        C => N_398, Y => cnt_recive_n23);
    
    \data_all_RNO[39]\ : NOR3
      port map(A => N_1475, B => N_398, C => N_874, Y => N_273);
    
    \cnt_delay_RNIRMG[2]\ : NOR2B
      port map(A => \cnt_delay[2]_net_1\, B => 
        \cnt_delay[3]_net_1\, Y => un12_cnt_delay_1);
    
    \cnt_send_0_RNI95K31[4]\ : NOR3C
      port map(A => \cnt_send[3]_net_1\, B => 
        \cnt_send_0[2]_net_1\, C => \cnt_send_0[4]_net_1\, Y => 
        cnt_send_c4_out);
    
    \cnt_send_RNO[13]\ : XA1B
      port map(A => cnt_send_c12, B => \cnt_send[13]_net_1\, C
         => N_398, Y => cnt_send_n13);
    
    \data_all_RNO[23]\ : MX2
      port map(A => \single_recive_0.N_169\, B => 
        \data_all_4_i_i_a4_0[23]\, S => N_443, Y => N_166);
    
    \cnt_send_RNIDOGR_0[0]\ : NOR2
      port map(A => \cnt_send[0]_net_1\, B => \cnt_send[1]_net_1\, 
        Y => send_end_0_sqmuxa_i_a2_m3_e_1);
    
    \data_send_buffer_RNO_27[3]\ : NOR3A
      port map(A => \data_all[3]_net_1\, B => I_14_1, C => 
        \cnt_send_0[0]_net_1\, Y => 
        \data_send_buffer_4_1_0_a0_2[3]\);
    
    \data_all_4_i_o2_0_i_o2_0_RNI57MV5_5[111]\ : NOR2A
      port map(A => N_383_i_0_o4_m2_e_3, B => 
        \data_all_4_i_o2_0_i_o2_0_12[111]_net_1\, Y => 
        N_383_i_0_o4_N_5_mux);
    
    send_end_RNI08T6 : CLKINT
      port map(A => \send_end\, Y => N_398);
    
    \data_send_buffer_RNO[3]\ : OR3
      port map(A => \data_send_buffer_4_14[3]\, B => 
        \data_send_buffer_4_13[3]\, C => 
        \data_send_buffer_4_15[3]\, Y => \data_send_buffer_4[3]\);
    
    \cnt_send_RNI687C2[1]\ : NOR2B
      port map(A => N_1841, B => 
        data_send_buffer_4_1_a2_26_0_a4_out, Y => N_1572);
    
    \data_all_RNO[157]\ : AO1
      port map(A => \data_all[157]_net_1\, B => N_1047, C => 
        N_1794, Y => N_1613);
    
    \data_all_RNO[132]\ : AO1
      port map(A => \data_all[132]_net_1\, B => N_1048, C => 
        N_1758, Y => N_292);
    

end DEF_ARCH; 
