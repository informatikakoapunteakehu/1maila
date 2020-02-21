--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Plentziapolis_Main_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jan 09 12:50:32 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Plentziapolis_Main -w -dir netgen/synthesis -ofmt vhdl -sim Plentziapolis_Main.ngc Plentziapolis_Main_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: Plentziapolis_Main.ngc
-- Output file	: E:\Descargas\Plentziapolis2\netgen\synthesis\Plentziapolis_Main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Plentziapolis_Main
-- Xilinx	: E:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Plentziapolis_Main is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
    dirua : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    kont : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
    irteerak : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end Plentziapolis_Main;

architecture Structure of Plentziapolis_Main is
  signal reset_0_IBUF_0 : STD_LOGIC; 
  signal dirua_2_IBUF_1 : STD_LOGIC; 
  signal dirua_1_IBUF_2 : STD_LOGIC; 
  signal dirua_0_IBUF_3 : STD_LOGIC; 
  signal kont_0_IBUF_4 : STD_LOGIC; 
  signal clk_BUFGP_5 : STD_LOGIC; 
  signal kontua_FSM_FFd1_6 : STD_LOGIC; 
  signal kontua_FSM_FFd2_7 : STD_LOGIC; 
  signal kontua_FSM_FFd3_8 : STD_LOGIC; 
  signal irteerak_2_OBUF_9 : STD_LOGIC; 
  signal irteerak_1_OBUF_10 : STD_LOGIC; 
  signal irteerak_0_OBUF_11 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_inv : STD_LOGIC; 
  signal kontua_FSM_FFd3_In : STD_LOGIC; 
  signal kontua_FSM_FFd2_In : STD_LOGIC; 
  signal kontua_FSM_FFd1_In : STD_LOGIC; 
  signal Mcompar_n0024_lutdi_82 : STD_LOGIC; 
  signal Mcompar_n0024_lutdi1_85 : STD_LOGIC; 
  signal Mcompar_n0024_lutdi2_90 : STD_LOGIC; 
  signal Mcompar_n0024_lutdi3_93 : STD_LOGIC; 
  signal kontua_FSM_FFd1_In1_130 : STD_LOGIC; 
  signal kontua_FSM_FFd1_In2_131 : STD_LOGIC; 
  signal kontua_FSM_FFd3_In1_132 : STD_LOGIC; 
  signal kontua_FSM_FFd2_In1_133 : STD_LOGIC; 
  signal kontua_FSM_FFd2_In2_134 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_1_rt_144 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_2_rt_145 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_3_rt_146 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_4_rt_147 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_5_rt_148 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_6_rt_149 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_7_rt_150 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_8_rt_151 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_9_rt_152 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_10_rt_153 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_11_rt_154 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_12_rt_155 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_13_rt_156 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_14_rt_157 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_15_rt_158 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_16_rt_159 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_17_rt_160 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_18_rt_161 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_19_rt_162 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_20_rt_163 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_21_rt_164 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_22_rt_165 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_23_rt_166 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_24_rt_167 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_25_rt_168 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_26_rt_169 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_27_rt_170 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_28_rt_171 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_29_rt_172 : STD_LOGIC; 
  signal Mcount_kontadorea_cy_30_rt_173 : STD_LOGIC; 
  signal Mcount_kontadorea_xor_31_rt_174 : STD_LOGIC; 
  signal Q_n0096_inv1_rstpot_175 : STD_LOGIC; 
  signal kontadorea_0_rstpot_176 : STD_LOGIC; 
  signal kontadorea_1_rstpot_177 : STD_LOGIC; 
  signal kontadorea_2_rstpot_178 : STD_LOGIC; 
  signal kontadorea_3_rstpot_179 : STD_LOGIC; 
  signal kontadorea_4_rstpot_180 : STD_LOGIC; 
  signal kontadorea_5_rstpot_181 : STD_LOGIC; 
  signal kontadorea_6_rstpot_182 : STD_LOGIC; 
  signal kontadorea_7_rstpot_183 : STD_LOGIC; 
  signal kontadorea_8_rstpot_184 : STD_LOGIC; 
  signal kontadorea_9_rstpot_185 : STD_LOGIC; 
  signal kontadorea_10_rstpot_186 : STD_LOGIC; 
  signal kontadorea_11_rstpot_187 : STD_LOGIC; 
  signal kontadorea_12_rstpot_188 : STD_LOGIC; 
  signal kontadorea_13_rstpot_189 : STD_LOGIC; 
  signal kontadorea_14_rstpot_190 : STD_LOGIC; 
  signal kontadorea_15_rstpot_191 : STD_LOGIC; 
  signal kontadorea_16_rstpot_192 : STD_LOGIC; 
  signal kontadorea_17_rstpot_193 : STD_LOGIC; 
  signal kontadorea_18_rstpot_194 : STD_LOGIC; 
  signal kontadorea_19_rstpot_195 : STD_LOGIC; 
  signal kontadorea_20_rstpot_196 : STD_LOGIC; 
  signal kontadorea_21_rstpot_197 : STD_LOGIC; 
  signal kontadorea_22_rstpot_198 : STD_LOGIC; 
  signal kontadorea_23_rstpot_199 : STD_LOGIC; 
  signal kontadorea_24_rstpot_200 : STD_LOGIC; 
  signal kontadorea_25_rstpot_201 : STD_LOGIC; 
  signal kontadorea_26_rstpot_202 : STD_LOGIC; 
  signal kontadorea_27_rstpot_203 : STD_LOGIC; 
  signal kontadorea_28_rstpot_204 : STD_LOGIC; 
  signal kontadorea_29_rstpot_205 : STD_LOGIC; 
  signal kontadorea_30_rstpot_206 : STD_LOGIC; 
  signal kontadorea_31_rstpot_207 : STD_LOGIC; 
  signal kontadorea : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcompar_n0024_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Mcompar_n0024_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Mcount_kontadorea_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_kontadorea_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  kontua_FSM_FFd1 : FDC_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_5,
      CLR => reset_0_IBUF_0,
      D => kontua_FSM_FFd1_In,
      Q => kontua_FSM_FFd1_6
    );
  kontua_FSM_FFd3 : FDC_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_5,
      CLR => reset_0_IBUF_0,
      D => kontua_FSM_FFd3_In,
      Q => kontua_FSM_FFd3_8
    );
  kontua_FSM_FFd2 : FDC_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_5,
      CLR => reset_0_IBUF_0,
      D => kontua_FSM_FFd2_In,
      Q => kontua_FSM_FFd2_7
    );
  Mcompar_n0024_lutdi : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => kontadorea(9),
      I1 => kontadorea(8),
      I2 => kontadorea(7),
      I3 => kontadorea(10),
      O => Mcompar_n0024_lutdi_82
    );
  Mcompar_n0024_lut_0_Q : LUT5
    generic map(
      INIT => X"00000400"
    )
    port map (
      I0 => kontadorea(7),
      I1 => kontadorea(6),
      I2 => kontadorea(8),
      I3 => kontadorea(9),
      I4 => kontadorea(10),
      O => Mcompar_n0024_lut(0)
    );
  Mcompar_n0024_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_n0024_lutdi_82,
      S => Mcompar_n0024_lut(0),
      O => Mcompar_n0024_cy(0)
    );
  Mcompar_n0024_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      I0 => kontadorea(14),
      I1 => kontadorea(13),
      I2 => kontadorea(12),
      I3 => kontadorea(11),
      I4 => kontadorea(15),
      O => Mcompar_n0024_lutdi1_85
    );
  Mcompar_n0024_lut_1_Q : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => kontadorea(11),
      I1 => kontadorea(14),
      I2 => kontadorea(12),
      I3 => kontadorea(13),
      I4 => kontadorea(15),
      O => Mcompar_n0024_lut(1)
    );
  Mcompar_n0024_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_n0024_cy(0),
      DI => Mcompar_n0024_lutdi1_85,
      S => Mcompar_n0024_lut(1),
      O => Mcompar_n0024_cy(1)
    );
  Mcompar_n0024_lut_2_Q : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => kontadorea(20),
      I1 => kontadorea(17),
      I2 => kontadorea(18),
      I3 => kontadorea(19),
      I4 => kontadorea(16),
      O => Mcompar_n0024_lut(2)
    );
  Mcompar_n0024_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_n0024_cy(1),
      DI => kontadorea(20),
      S => Mcompar_n0024_lut(2),
      O => Mcompar_n0024_cy(2)
    );
  Mcompar_n0024_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => kontadorea(25),
      I1 => kontadorea(24),
      I2 => kontadorea(23),
      I3 => kontadorea(22),
      I4 => kontadorea(21),
      O => Mcompar_n0024_lutdi2_90
    );
  Mcompar_n0024_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => kontadorea(21),
      I1 => kontadorea(22),
      I2 => kontadorea(23),
      I3 => kontadorea(24),
      I4 => kontadorea(25),
      O => Mcompar_n0024_lut(3)
    );
  Mcompar_n0024_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_n0024_cy(2),
      DI => Mcompar_n0024_lutdi2_90,
      S => Mcompar_n0024_lut(3),
      O => Mcompar_n0024_cy(3)
    );
  Mcompar_n0024_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => kontadorea(30),
      I1 => kontadorea(29),
      I2 => kontadorea(28),
      I3 => kontadorea(27),
      I4 => kontadorea(26),
      O => Mcompar_n0024_lutdi3_93
    );
  Mcompar_n0024_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => kontadorea(26),
      I1 => kontadorea(27),
      I2 => kontadorea(28),
      I3 => kontadorea(29),
      I4 => kontadorea(30),
      O => Mcompar_n0024_lut(4)
    );
  Mcompar_n0024_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_n0024_cy(3),
      DI => Mcompar_n0024_lutdi3_93,
      S => Mcompar_n0024_lut(4),
      O => Mcompar_n0024_cy(4)
    );
  Mcompar_n0024_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_n0024_cy(4),
      DI => N1,
      S => Mcompar_n0024_lut(5),
      O => Mcompar_n0024_cy(5)
    );
  Mcount_kontadorea_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_kontadorea_lut(0),
      O => Mcount_kontadorea_cy(0)
    );
  Mcount_kontadorea_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_kontadorea_lut(0),
      O => Result(0)
    );
  Mcount_kontadorea_cy_1_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(0),
      DI => N1,
      S => Mcount_kontadorea_cy_1_rt_144,
      O => Mcount_kontadorea_cy(1)
    );
  Mcount_kontadorea_xor_1_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(0),
      LI => Mcount_kontadorea_cy_1_rt_144,
      O => Result(1)
    );
  Mcount_kontadorea_cy_2_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(1),
      DI => N1,
      S => Mcount_kontadorea_cy_2_rt_145,
      O => Mcount_kontadorea_cy(2)
    );
  Mcount_kontadorea_xor_2_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(1),
      LI => Mcount_kontadorea_cy_2_rt_145,
      O => Result(2)
    );
  Mcount_kontadorea_cy_3_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(2),
      DI => N1,
      S => Mcount_kontadorea_cy_3_rt_146,
      O => Mcount_kontadorea_cy(3)
    );
  Mcount_kontadorea_xor_3_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(2),
      LI => Mcount_kontadorea_cy_3_rt_146,
      O => Result(3)
    );
  Mcount_kontadorea_cy_4_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(3),
      DI => N1,
      S => Mcount_kontadorea_cy_4_rt_147,
      O => Mcount_kontadorea_cy(4)
    );
  Mcount_kontadorea_xor_4_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(3),
      LI => Mcount_kontadorea_cy_4_rt_147,
      O => Result(4)
    );
  Mcount_kontadorea_cy_5_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(4),
      DI => N1,
      S => Mcount_kontadorea_cy_5_rt_148,
      O => Mcount_kontadorea_cy(5)
    );
  Mcount_kontadorea_xor_5_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(4),
      LI => Mcount_kontadorea_cy_5_rt_148,
      O => Result(5)
    );
  Mcount_kontadorea_cy_6_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(5),
      DI => N1,
      S => Mcount_kontadorea_cy_6_rt_149,
      O => Mcount_kontadorea_cy(6)
    );
  Mcount_kontadorea_xor_6_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(5),
      LI => Mcount_kontadorea_cy_6_rt_149,
      O => Result(6)
    );
  Mcount_kontadorea_cy_7_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(6),
      DI => N1,
      S => Mcount_kontadorea_cy_7_rt_150,
      O => Mcount_kontadorea_cy(7)
    );
  Mcount_kontadorea_xor_7_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(6),
      LI => Mcount_kontadorea_cy_7_rt_150,
      O => Result(7)
    );
  Mcount_kontadorea_cy_8_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(7),
      DI => N1,
      S => Mcount_kontadorea_cy_8_rt_151,
      O => Mcount_kontadorea_cy(8)
    );
  Mcount_kontadorea_xor_8_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(7),
      LI => Mcount_kontadorea_cy_8_rt_151,
      O => Result(8)
    );
  Mcount_kontadorea_cy_9_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(8),
      DI => N1,
      S => Mcount_kontadorea_cy_9_rt_152,
      O => Mcount_kontadorea_cy(9)
    );
  Mcount_kontadorea_xor_9_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(8),
      LI => Mcount_kontadorea_cy_9_rt_152,
      O => Result(9)
    );
  Mcount_kontadorea_cy_10_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(9),
      DI => N1,
      S => Mcount_kontadorea_cy_10_rt_153,
      O => Mcount_kontadorea_cy(10)
    );
  Mcount_kontadorea_xor_10_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(9),
      LI => Mcount_kontadorea_cy_10_rt_153,
      O => Result(10)
    );
  Mcount_kontadorea_cy_11_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(10),
      DI => N1,
      S => Mcount_kontadorea_cy_11_rt_154,
      O => Mcount_kontadorea_cy(11)
    );
  Mcount_kontadorea_xor_11_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(10),
      LI => Mcount_kontadorea_cy_11_rt_154,
      O => Result(11)
    );
  Mcount_kontadorea_cy_12_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(11),
      DI => N1,
      S => Mcount_kontadorea_cy_12_rt_155,
      O => Mcount_kontadorea_cy(12)
    );
  Mcount_kontadorea_xor_12_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(11),
      LI => Mcount_kontadorea_cy_12_rt_155,
      O => Result(12)
    );
  Mcount_kontadorea_cy_13_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(12),
      DI => N1,
      S => Mcount_kontadorea_cy_13_rt_156,
      O => Mcount_kontadorea_cy(13)
    );
  Mcount_kontadorea_xor_13_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(12),
      LI => Mcount_kontadorea_cy_13_rt_156,
      O => Result(13)
    );
  Mcount_kontadorea_cy_14_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(13),
      DI => N1,
      S => Mcount_kontadorea_cy_14_rt_157,
      O => Mcount_kontadorea_cy(14)
    );
  Mcount_kontadorea_xor_14_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(13),
      LI => Mcount_kontadorea_cy_14_rt_157,
      O => Result(14)
    );
  Mcount_kontadorea_cy_15_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(14),
      DI => N1,
      S => Mcount_kontadorea_cy_15_rt_158,
      O => Mcount_kontadorea_cy(15)
    );
  Mcount_kontadorea_xor_15_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(14),
      LI => Mcount_kontadorea_cy_15_rt_158,
      O => Result(15)
    );
  Mcount_kontadorea_cy_16_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(15),
      DI => N1,
      S => Mcount_kontadorea_cy_16_rt_159,
      O => Mcount_kontadorea_cy(16)
    );
  Mcount_kontadorea_xor_16_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(15),
      LI => Mcount_kontadorea_cy_16_rt_159,
      O => Result(16)
    );
  Mcount_kontadorea_cy_17_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(16),
      DI => N1,
      S => Mcount_kontadorea_cy_17_rt_160,
      O => Mcount_kontadorea_cy(17)
    );
  Mcount_kontadorea_xor_17_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(16),
      LI => Mcount_kontadorea_cy_17_rt_160,
      O => Result(17)
    );
  Mcount_kontadorea_cy_18_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(17),
      DI => N1,
      S => Mcount_kontadorea_cy_18_rt_161,
      O => Mcount_kontadorea_cy(18)
    );
  Mcount_kontadorea_xor_18_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(17),
      LI => Mcount_kontadorea_cy_18_rt_161,
      O => Result(18)
    );
  Mcount_kontadorea_cy_19_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(18),
      DI => N1,
      S => Mcount_kontadorea_cy_19_rt_162,
      O => Mcount_kontadorea_cy(19)
    );
  Mcount_kontadorea_xor_19_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(18),
      LI => Mcount_kontadorea_cy_19_rt_162,
      O => Result(19)
    );
  Mcount_kontadorea_cy_20_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(19),
      DI => N1,
      S => Mcount_kontadorea_cy_20_rt_163,
      O => Mcount_kontadorea_cy(20)
    );
  Mcount_kontadorea_xor_20_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(19),
      LI => Mcount_kontadorea_cy_20_rt_163,
      O => Result(20)
    );
  Mcount_kontadorea_cy_21_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(20),
      DI => N1,
      S => Mcount_kontadorea_cy_21_rt_164,
      O => Mcount_kontadorea_cy(21)
    );
  Mcount_kontadorea_xor_21_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(20),
      LI => Mcount_kontadorea_cy_21_rt_164,
      O => Result(21)
    );
  Mcount_kontadorea_cy_22_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(21),
      DI => N1,
      S => Mcount_kontadorea_cy_22_rt_165,
      O => Mcount_kontadorea_cy(22)
    );
  Mcount_kontadorea_xor_22_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(21),
      LI => Mcount_kontadorea_cy_22_rt_165,
      O => Result(22)
    );
  Mcount_kontadorea_cy_23_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(22),
      DI => N1,
      S => Mcount_kontadorea_cy_23_rt_166,
      O => Mcount_kontadorea_cy(23)
    );
  Mcount_kontadorea_xor_23_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(22),
      LI => Mcount_kontadorea_cy_23_rt_166,
      O => Result(23)
    );
  Mcount_kontadorea_cy_24_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(23),
      DI => N1,
      S => Mcount_kontadorea_cy_24_rt_167,
      O => Mcount_kontadorea_cy(24)
    );
  Mcount_kontadorea_xor_24_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(23),
      LI => Mcount_kontadorea_cy_24_rt_167,
      O => Result(24)
    );
  Mcount_kontadorea_cy_25_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(24),
      DI => N1,
      S => Mcount_kontadorea_cy_25_rt_168,
      O => Mcount_kontadorea_cy(25)
    );
  Mcount_kontadorea_xor_25_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(24),
      LI => Mcount_kontadorea_cy_25_rt_168,
      O => Result(25)
    );
  Mcount_kontadorea_cy_26_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(25),
      DI => N1,
      S => Mcount_kontadorea_cy_26_rt_169,
      O => Mcount_kontadorea_cy(26)
    );
  Mcount_kontadorea_xor_26_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(25),
      LI => Mcount_kontadorea_cy_26_rt_169,
      O => Result(26)
    );
  Mcount_kontadorea_cy_27_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(26),
      DI => N1,
      S => Mcount_kontadorea_cy_27_rt_170,
      O => Mcount_kontadorea_cy(27)
    );
  Mcount_kontadorea_xor_27_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(26),
      LI => Mcount_kontadorea_cy_27_rt_170,
      O => Result(27)
    );
  Mcount_kontadorea_cy_28_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(27),
      DI => N1,
      S => Mcount_kontadorea_cy_28_rt_171,
      O => Mcount_kontadorea_cy(28)
    );
  Mcount_kontadorea_xor_28_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(27),
      LI => Mcount_kontadorea_cy_28_rt_171,
      O => Result(28)
    );
  Mcount_kontadorea_cy_29_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(28),
      DI => N1,
      S => Mcount_kontadorea_cy_29_rt_172,
      O => Mcount_kontadorea_cy(29)
    );
  Mcount_kontadorea_xor_29_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(28),
      LI => Mcount_kontadorea_cy_29_rt_172,
      O => Result(29)
    );
  Mcount_kontadorea_cy_30_Q : MUXCY
    port map (
      CI => Mcount_kontadorea_cy(29),
      DI => N1,
      S => Mcount_kontadorea_cy_30_rt_173,
      O => Mcount_kontadorea_cy(30)
    );
  Mcount_kontadorea_xor_30_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(29),
      LI => Mcount_kontadorea_cy_30_rt_173,
      O => Result(30)
    );
  Mcount_kontadorea_xor_31_Q : XORCY
    port map (
      CI => Mcount_kontadorea_cy(30),
      LI => Mcount_kontadorea_xor_31_rt_174,
      O => Result(31)
    );
  kontua_irteerak_0_1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => kontua_FSM_FFd3_8,
      I1 => kontua_FSM_FFd2_7,
      I2 => kontua_FSM_FFd1_6,
      O => irteerak_0_OBUF_11
    );
  kontua_irteerak_1_1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => kontua_FSM_FFd2_7,
      I1 => kontua_FSM_FFd3_8,
      I2 => kontua_FSM_FFd1_6,
      O => irteerak_1_OBUF_10
    );
  kontua_irteerak_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => kontua_FSM_FFd3_8,
      I1 => kontua_FSM_FFd2_7,
      I2 => kontua_FSM_FFd1_6,
      O => irteerak_2_OBUF_9
    );
  kontua_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"0000011001000100"
    )
    port map (
      I0 => dirua_0_IBUF_3,
      I1 => dirua_1_IBUF_2,
      I2 => kontua_FSM_FFd3_8,
      I3 => dirua_2_IBUF_1,
      I4 => kontua_FSM_FFd1_6,
      I5 => kontua_FSM_FFd2_7,
      O => kontua_FSM_FFd1_In1_130
    );
  kontua_FSM_FFd1_In2 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => dirua_1_IBUF_2,
      I1 => dirua_2_IBUF_1,
      I2 => kontua_FSM_FFd3_8,
      O => kontua_FSM_FFd1_In2_131
    );
  kontua_FSM_FFd1_In3 : LUT6
    generic map(
      INIT => X"FFFF4C40FFFFCCC0"
    )
    port map (
      I0 => kont_0_IBUF_4,
      I1 => kontua_FSM_FFd1_6,
      I2 => kontua_FSM_FFd2_7,
      I3 => kontua_FSM_FFd1_In2_131,
      I4 => kontua_FSM_FFd1_In1_130,
      I5 => Mcompar_n0024_cy(5),
      O => kontua_FSM_FFd1_In
    );
  kontua_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"0001002200016226"
    )
    port map (
      I0 => dirua_0_IBUF_3,
      I1 => dirua_1_IBUF_2,
      I2 => kontua_FSM_FFd3_8,
      I3 => kontua_FSM_FFd2_7,
      I4 => dirua_2_IBUF_1,
      I5 => kontua_FSM_FFd1_6,
      O => kontua_FSM_FFd3_In1_132
    );
  kontua_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"FFFF40C0FFFFC0C0"
    )
    port map (
      I0 => kont_0_IBUF_4,
      I1 => kontua_FSM_FFd3_8,
      I2 => kontua_FSM_FFd1_6,
      I3 => kontua_FSM_FFd2_7,
      I4 => kontua_FSM_FFd3_In1_132,
      I5 => Mcompar_n0024_cy(5),
      O => kontua_FSM_FFd3_In
    );
  kontua_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => dirua_1_IBUF_2,
      I1 => dirua_2_IBUF_1,
      I2 => dirua_0_IBUF_3,
      I3 => kontua_FSM_FFd2_7,
      I4 => kontua_FSM_FFd3_8,
      O => kontua_FSM_FFd2_In1_133
    );
  kontua_FSM_FFd2_In2 : LUT5
    generic map(
      INIT => X"14070110"
    )
    port map (
      I0 => dirua_2_IBUF_1,
      I1 => dirua_0_IBUF_3,
      I2 => dirua_1_IBUF_2,
      I3 => kontua_FSM_FFd3_8,
      I4 => kontua_FSM_FFd2_7,
      O => kontua_FSM_FFd2_In2_134
    );
  kontua_FSM_FFd2_In3 : LUT6
    generic map(
      INIT => X"FFCC7340FFCCF3C0"
    )
    port map (
      I0 => kont_0_IBUF_4,
      I1 => kontua_FSM_FFd1_6,
      I2 => kontua_FSM_FFd2_7,
      I3 => kontua_FSM_FFd2_In2_134,
      I4 => kontua_FSM_FFd2_In1_133,
      I5 => Mcompar_n0024_cy(5),
      O => kontua_FSM_FFd2_In
    );
  reset_0_IBUF : IBUF
    port map (
      I => reset(0),
      O => reset_0_IBUF_0
    );
  dirua_2_IBUF : IBUF
    port map (
      I => dirua(2),
      O => dirua_2_IBUF_1
    );
  dirua_1_IBUF : IBUF
    port map (
      I => dirua(1),
      O => dirua_1_IBUF_2
    );
  dirua_0_IBUF : IBUF
    port map (
      I => dirua(0),
      O => dirua_0_IBUF_3
    );
  kont_0_IBUF : IBUF
    port map (
      I => kont(0),
      O => kont_0_IBUF_4
    );
  irteerak_2_OBUF : OBUF
    port map (
      I => irteerak_2_OBUF_9,
      O => irteerak(2)
    );
  irteerak_1_OBUF : OBUF
    port map (
      I => irteerak_1_OBUF_10,
      O => irteerak(1)
    );
  irteerak_0_OBUF : OBUF
    port map (
      I => irteerak_0_OBUF_11,
      O => irteerak(0)
    );
  Mcount_kontadorea_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(1),
      O => Mcount_kontadorea_cy_1_rt_144
    );
  Mcount_kontadorea_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(2),
      O => Mcount_kontadorea_cy_2_rt_145
    );
  Mcount_kontadorea_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(3),
      O => Mcount_kontadorea_cy_3_rt_146
    );
  Mcount_kontadorea_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(4),
      O => Mcount_kontadorea_cy_4_rt_147
    );
  Mcount_kontadorea_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(5),
      O => Mcount_kontadorea_cy_5_rt_148
    );
  Mcount_kontadorea_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(6),
      O => Mcount_kontadorea_cy_6_rt_149
    );
  Mcount_kontadorea_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(7),
      O => Mcount_kontadorea_cy_7_rt_150
    );
  Mcount_kontadorea_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(8),
      O => Mcount_kontadorea_cy_8_rt_151
    );
  Mcount_kontadorea_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(9),
      O => Mcount_kontadorea_cy_9_rt_152
    );
  Mcount_kontadorea_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(10),
      O => Mcount_kontadorea_cy_10_rt_153
    );
  Mcount_kontadorea_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(11),
      O => Mcount_kontadorea_cy_11_rt_154
    );
  Mcount_kontadorea_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(12),
      O => Mcount_kontadorea_cy_12_rt_155
    );
  Mcount_kontadorea_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(13),
      O => Mcount_kontadorea_cy_13_rt_156
    );
  Mcount_kontadorea_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(14),
      O => Mcount_kontadorea_cy_14_rt_157
    );
  Mcount_kontadorea_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(15),
      O => Mcount_kontadorea_cy_15_rt_158
    );
  Mcount_kontadorea_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(16),
      O => Mcount_kontadorea_cy_16_rt_159
    );
  Mcount_kontadorea_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(17),
      O => Mcount_kontadorea_cy_17_rt_160
    );
  Mcount_kontadorea_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(18),
      O => Mcount_kontadorea_cy_18_rt_161
    );
  Mcount_kontadorea_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(19),
      O => Mcount_kontadorea_cy_19_rt_162
    );
  Mcount_kontadorea_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(20),
      O => Mcount_kontadorea_cy_20_rt_163
    );
  Mcount_kontadorea_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(21),
      O => Mcount_kontadorea_cy_21_rt_164
    );
  Mcount_kontadorea_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(22),
      O => Mcount_kontadorea_cy_22_rt_165
    );
  Mcount_kontadorea_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(23),
      O => Mcount_kontadorea_cy_23_rt_166
    );
  Mcount_kontadorea_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(24),
      O => Mcount_kontadorea_cy_24_rt_167
    );
  Mcount_kontadorea_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(25),
      O => Mcount_kontadorea_cy_25_rt_168
    );
  Mcount_kontadorea_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(26),
      O => Mcount_kontadorea_cy_26_rt_169
    );
  Mcount_kontadorea_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(27),
      O => Mcount_kontadorea_cy_27_rt_170
    );
  Mcount_kontadorea_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(28),
      O => Mcount_kontadorea_cy_28_rt_171
    );
  Mcount_kontadorea_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(29),
      O => Mcount_kontadorea_cy_29_rt_172
    );
  Mcount_kontadorea_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(30),
      O => Mcount_kontadorea_cy_30_rt_173
    );
  Mcount_kontadorea_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => kontadorea(31),
      O => Mcount_kontadorea_xor_31_rt_174
    );
  Q_n0096_inv1_rstpot : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => reset_0_IBUF_0,
      I1 => kont_0_IBUF_4,
      I2 => kontua_FSM_FFd1_6,
      I3 => kontua_FSM_FFd2_7,
      O => Q_n0096_inv1_rstpot_175
    );
  kontadorea_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_0_rstpot_176,
      Q => kontadorea(0)
    );
  kontadorea_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_1_rstpot_177,
      Q => kontadorea(1)
    );
  kontadorea_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_2_rstpot_178,
      Q => kontadorea(2)
    );
  kontadorea_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_3_rstpot_179,
      Q => kontadorea(3)
    );
  kontadorea_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_4_rstpot_180,
      Q => kontadorea(4)
    );
  kontadorea_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_5_rstpot_181,
      Q => kontadorea(5)
    );
  kontadorea_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_6_rstpot_182,
      Q => kontadorea(6)
    );
  kontadorea_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_7_rstpot_183,
      Q => kontadorea(7)
    );
  kontadorea_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_8_rstpot_184,
      Q => kontadorea(8)
    );
  kontadorea_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_9_rstpot_185,
      Q => kontadorea(9)
    );
  kontadorea_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_10_rstpot_186,
      Q => kontadorea(10)
    );
  kontadorea_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_11_rstpot_187,
      Q => kontadorea(11)
    );
  kontadorea_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_12_rstpot_188,
      Q => kontadorea(12)
    );
  kontadorea_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_13_rstpot_189,
      Q => kontadorea(13)
    );
  kontadorea_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_14_rstpot_190,
      Q => kontadorea(14)
    );
  kontadorea_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_15_rstpot_191,
      Q => kontadorea(15)
    );
  kontadorea_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_16_rstpot_192,
      Q => kontadorea(16)
    );
  kontadorea_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_17_rstpot_193,
      Q => kontadorea(17)
    );
  kontadorea_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_18_rstpot_194,
      Q => kontadorea(18)
    );
  kontadorea_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_19_rstpot_195,
      Q => kontadorea(19)
    );
  kontadorea_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_20_rstpot_196,
      Q => kontadorea(20)
    );
  kontadorea_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_21_rstpot_197,
      Q => kontadorea(21)
    );
  kontadorea_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_22_rstpot_198,
      Q => kontadorea(22)
    );
  kontadorea_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_23_rstpot_199,
      Q => kontadorea(23)
    );
  kontadorea_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_24_rstpot_200,
      Q => kontadorea(24)
    );
  kontadorea_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_25_rstpot_201,
      Q => kontadorea(25)
    );
  kontadorea_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_26_rstpot_202,
      Q => kontadorea(26)
    );
  kontadorea_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_27_rstpot_203,
      Q => kontadorea(27)
    );
  kontadorea_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_28_rstpot_204,
      Q => kontadorea(28)
    );
  kontadorea_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_29_rstpot_205,
      Q => kontadorea(29)
    );
  kontadorea_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_30_rstpot_206,
      Q => kontadorea(30)
    );
  kontadorea_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_inv,
      D => kontadorea_31_rstpot_207,
      Q => kontadorea(31)
    );
  kontadorea_23_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(23),
      I1 => Result(23),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_23_rstpot_199
    );
  kontadorea_24_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(24),
      I1 => Result(24),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_24_rstpot_200
    );
  kontadorea_25_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(25),
      I1 => Result(25),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_25_rstpot_201
    );
  kontadorea_26_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(26),
      I1 => Result(26),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_26_rstpot_202
    );
  kontadorea_27_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(27),
      I1 => Result(27),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_27_rstpot_203
    );
  kontadorea_28_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(28),
      I1 => Result(28),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_28_rstpot_204
    );
  kontadorea_29_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(29),
      I1 => Result(29),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_29_rstpot_205
    );
  kontadorea_30_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(30),
      I1 => Result(30),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_30_rstpot_206
    );
  kontadorea_31_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(31),
      I1 => Result(31),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_31_rstpot_207
    );
  kontadorea_0_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(0),
      I1 => Result(0),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_0_rstpot_176
    );
  kontadorea_1_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(1),
      I1 => Result(1),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_1_rstpot_177
    );
  kontadorea_2_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(2),
      I1 => Result(2),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_2_rstpot_178
    );
  kontadorea_3_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(3),
      I1 => Result(3),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_3_rstpot_179
    );
  kontadorea_4_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(4),
      I1 => Result(4),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_4_rstpot_180
    );
  kontadorea_5_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(5),
      I1 => Result(5),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_5_rstpot_181
    );
  kontadorea_6_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(6),
      I1 => Result(6),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_6_rstpot_182
    );
  kontadorea_7_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(7),
      I1 => Result(7),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_7_rstpot_183
    );
  kontadorea_8_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(8),
      I1 => Result(8),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_8_rstpot_184
    );
  kontadorea_9_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(9),
      I1 => Result(9),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_9_rstpot_185
    );
  kontadorea_10_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(10),
      I1 => Result(10),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_10_rstpot_186
    );
  kontadorea_11_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(11),
      I1 => Result(11),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_11_rstpot_187
    );
  kontadorea_12_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(12),
      I1 => Result(12),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_12_rstpot_188
    );
  kontadorea_13_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(13),
      I1 => Result(13),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_13_rstpot_189
    );
  kontadorea_14_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(14),
      I1 => Result(14),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_14_rstpot_190
    );
  kontadorea_15_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(15),
      I1 => Result(15),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_15_rstpot_191
    );
  kontadorea_16_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(16),
      I1 => Result(16),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_16_rstpot_192
    );
  kontadorea_17_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(17),
      I1 => Result(17),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_17_rstpot_193
    );
  kontadorea_18_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(18),
      I1 => Result(18),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_18_rstpot_194
    );
  kontadorea_19_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(19),
      I1 => Result(19),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_19_rstpot_195
    );
  kontadorea_20_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(20),
      I1 => Result(20),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_20_rstpot_196
    );
  kontadorea_21_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(21),
      I1 => Result(21),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_21_rstpot_197
    );
  kontadorea_22_rstpot : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => kontadorea(22),
      I1 => Result(22),
      I2 => Q_n0096_inv1_rstpot_175,
      I3 => Mcompar_n0024_cy(5),
      O => kontadorea_22_rstpot_198
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_5
    );
  Mcompar_n0024_lut_5_INV_0 : INV
    port map (
      I => kontadorea(31),
      O => Mcompar_n0024_lut(5)
    );
  Mcount_kontadorea_lut_0_INV_0 : INV
    port map (
      I => kontadorea(0),
      O => Mcount_kontadorea_lut(0)
    );
  clk_inv1_INV_0 : INV
    port map (
      I => clk_BUFGP_5,
      O => clk_inv
    );

end Structure;

