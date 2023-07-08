////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: multiplier_synthesis.v
// /___/   /\     Timestamp: Tue Apr 05 01:10:38 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim multiplier.ngc multiplier_synthesis.v 
// Device	: xc3s100e-5-vq100
// Input file	: multiplier.ngc
// Output file	: F:\AZ\HW03\netgen\synthesis\multiplier_synthesis.v
// # of Modules	: 1
// Design Name	: multiplier
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module multiplier (
  clk, start, product, multiplicand, multiplier
);
  input clk;
  input start;
  output [11 : 0] product;
  input [5 : 0] multiplicand;
  input [5 : 0] multiplier;
  wire \Madd_old_product_4_addsub0000_cy<6>_rt_19 ;
  wire \_old_product_10<4>1 ;
  wire \_old_product_10<4>11_63 ;
  wire \_old_product_2[0] ;
  wire \_old_product_2[2] ;
  wire \_old_product_2[3] ;
  wire \_old_product_2[4] ;
  wire \_old_product_2[5] ;
  wire \_old_product_4[1] ;
  wire \_old_product_4[3] ;
  wire \_old_product_4[4] ;
  wire \_old_product_4[5] ;
  wire \_old_product_4[6] ;
  wire \_old_product_4[7] ;
  wire \_old_product_6[2] ;
  wire \_old_product_6<2>1 ;
  wire \_old_product_6[4] ;
  wire \_old_product_6[5] ;
  wire \_old_product_6[6] ;
  wire \_old_product_6[7] ;
  wire \_old_product_6[8] ;
  wire \_old_product_8[3] ;
  wire \_old_product_8<3>1 ;
  wire \_old_product_8<3>11_84 ;
  wire \_old_product_8[5] ;
  wire \_old_product_8[6] ;
  wire \_old_product_8[7] ;
  wire \_old_product_8[8] ;
  wire \_old_product_8[9] ;
  wire clk_BUFGP_91;
  wire multiplicand_0_IBUF_98;
  wire multiplicand_1_IBUF_99;
  wire multiplicand_2_IBUF_100;
  wire multiplicand_3_IBUF_101;
  wire multiplicand_4_IBUF_102;
  wire multiplicand_5_IBUF_103;
  wire multiplier_0_IBUF_110;
  wire multiplier_1_IBUF_111;
  wire multiplier_2_IBUF_112;
  wire multiplier_3_IBUF_113;
  wire multiplier_4_IBUF_114;
  wire multiplier_5_IBUF_115;
  wire product_0_155;
  wire product_1_156;
  wire product_10_157;
  wire product_11_158;
  wire product_2_159;
  wire product_3_160;
  wire product_4_161;
  wire product_5_162;
  wire product_6_163;
  wire product_7_164;
  wire product_8_165;
  wire product_9_166;
  wire \product_mux0000<5>1 ;
  wire \product_mux0000<5>11_178 ;
  wire \product_mux0000<6>1 ;
  wire \product_mux0000<6>11_181 ;
  wire \product_mux0000<7>1 ;
  wire \product_mux0000<7>11_184 ;
  wire \product_mux0000<8>1 ;
  wire \product_mux0000<8>11_187 ;
  wire \product_mux0000<9>1 ;
  wire start_IBUF_191;
  wire start_inv;
  wire [10 : 4] Madd_old_product_10_addsub0000_cy;
  wire [9 : 4] Madd_old_product_10_addsub0000_lut;
  wire [6 : 1] Madd_old_product_4_addsub0000_cy;
  wire [5 : 1] Madd_old_product_4_addsub0000_lut;
  wire [7 : 2] Madd_old_product_6_addsub0000_cy;
  wire [7 : 2] Madd_old_product_6_addsub0000_lut;
  wire [8 : 3] Madd_old_product_8_addsub0000_cy;
  wire [8 : 3] Madd_old_product_8_addsub0000_lut;
  wire [10 : 5] Madd_product_addsub0000_cy;
  wire [10 : 5] Madd_product_addsub0000_lut;
  wire [4 : 4] _old_product_10;
  wire [10 : 4] old_product_10_addsub0000;
  wire [6 : 1] old_product_4_addsub0000;
  wire [8 : 2] old_product_6_addsub0000;
  wire [9 : 3] old_product_8_addsub0000;
  wire [11 : 5] product_addsub0000;
  wire [11 : 5] product_mux0000;
  GND   XST_GND (
    .G(Madd_old_product_10_addsub0000_cy[10])
  );
  FDR   product_0 (
    .C(clk_BUFGP_91),
    .D(\_old_product_2[0] ),
    .R(start_inv),
    .Q(product_0_155)
  );
  FDR   product_1 (
    .C(clk_BUFGP_91),
    .D(\_old_product_4[1] ),
    .R(start_inv),
    .Q(product_1_156)
  );
  FDR   product_2 (
    .C(clk_BUFGP_91),
    .D(\_old_product_6[2] ),
    .R(start_inv),
    .Q(product_2_159)
  );
  FDR   product_3 (
    .C(clk_BUFGP_91),
    .D(\_old_product_8[3] ),
    .R(start_inv),
    .Q(product_3_160)
  );
  FDR   product_4 (
    .C(clk_BUFGP_91),
    .D(_old_product_10[4]),
    .R(start_inv),
    .Q(product_4_161)
  );
  FDR   product_5 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[5]),
    .R(start_inv),
    .Q(product_5_162)
  );
  FDR   product_6 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[6]),
    .R(start_inv),
    .Q(product_6_163)
  );
  FDR   product_7 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[7]),
    .R(start_inv),
    .Q(product_7_164)
  );
  FDR   product_8 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[8]),
    .R(start_inv),
    .Q(product_8_165)
  );
  FDR   product_9 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[9]),
    .R(start_inv),
    .Q(product_9_166)
  );
  FDR   product_10 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[10]),
    .R(start_inv),
    .Q(product_10_157)
  );
  FDR   product_11 (
    .C(clk_BUFGP_91),
    .D(product_mux0000[11]),
    .R(start_inv),
    .Q(product_11_158)
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<3>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .DI(multiplicand_0_IBUF_98),
    .S(Madd_old_product_8_addsub0000_lut[3]),
    .O(Madd_old_product_8_addsub0000_cy[3])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<3>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .LI(Madd_old_product_8_addsub0000_lut[3]),
    .O(old_product_8_addsub0000[3])
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<4>  (
    .CI(Madd_old_product_8_addsub0000_cy[3]),
    .DI(multiplicand_1_IBUF_99),
    .S(Madd_old_product_8_addsub0000_lut[4]),
    .O(Madd_old_product_8_addsub0000_cy[4])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<4>  (
    .CI(Madd_old_product_8_addsub0000_cy[3]),
    .LI(Madd_old_product_8_addsub0000_lut[4]),
    .O(old_product_8_addsub0000[4])
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<5>  (
    .CI(Madd_old_product_8_addsub0000_cy[4]),
    .DI(multiplicand_2_IBUF_100),
    .S(Madd_old_product_8_addsub0000_lut[5]),
    .O(Madd_old_product_8_addsub0000_cy[5])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<5>  (
    .CI(Madd_old_product_8_addsub0000_cy[4]),
    .LI(Madd_old_product_8_addsub0000_lut[5]),
    .O(old_product_8_addsub0000[5])
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<6>  (
    .CI(Madd_old_product_8_addsub0000_cy[5]),
    .DI(multiplicand_3_IBUF_101),
    .S(Madd_old_product_8_addsub0000_lut[6]),
    .O(Madd_old_product_8_addsub0000_cy[6])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<6>  (
    .CI(Madd_old_product_8_addsub0000_cy[5]),
    .LI(Madd_old_product_8_addsub0000_lut[6]),
    .O(old_product_8_addsub0000[6])
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<7>  (
    .CI(Madd_old_product_8_addsub0000_cy[6]),
    .DI(multiplicand_4_IBUF_102),
    .S(Madd_old_product_8_addsub0000_lut[7]),
    .O(Madd_old_product_8_addsub0000_cy[7])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<7>  (
    .CI(Madd_old_product_8_addsub0000_cy[6]),
    .LI(Madd_old_product_8_addsub0000_lut[7]),
    .O(old_product_8_addsub0000[7])
  );
  MUXCY   \Madd_old_product_8_addsub0000_cy<8>  (
    .CI(Madd_old_product_8_addsub0000_cy[7]),
    .DI(multiplicand_5_IBUF_103),
    .S(Madd_old_product_8_addsub0000_lut[8]),
    .O(Madd_old_product_8_addsub0000_cy[8])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<8>  (
    .CI(Madd_old_product_8_addsub0000_cy[7]),
    .LI(Madd_old_product_8_addsub0000_lut[8]),
    .O(old_product_8_addsub0000[8])
  );
  XORCY   \Madd_old_product_8_addsub0000_xor<9>  (
    .CI(Madd_old_product_8_addsub0000_cy[8]),
    .LI(Madd_old_product_10_addsub0000_cy[10]),
    .O(old_product_8_addsub0000[9])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<1>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .DI(multiplicand_0_IBUF_98),
    .S(Madd_old_product_4_addsub0000_lut[1]),
    .O(Madd_old_product_4_addsub0000_cy[1])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<1>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .LI(Madd_old_product_4_addsub0000_lut[1]),
    .O(old_product_4_addsub0000[1])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<2>  (
    .CI(Madd_old_product_4_addsub0000_cy[1]),
    .DI(multiplicand_1_IBUF_99),
    .S(Madd_old_product_4_addsub0000_lut[2]),
    .O(Madd_old_product_4_addsub0000_cy[2])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<2>  (
    .CI(Madd_old_product_4_addsub0000_cy[1]),
    .LI(Madd_old_product_4_addsub0000_lut[2]),
    .O(old_product_4_addsub0000[2])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<3>  (
    .CI(Madd_old_product_4_addsub0000_cy[2]),
    .DI(multiplicand_2_IBUF_100),
    .S(Madd_old_product_4_addsub0000_lut[3]),
    .O(Madd_old_product_4_addsub0000_cy[3])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<3>  (
    .CI(Madd_old_product_4_addsub0000_cy[2]),
    .LI(Madd_old_product_4_addsub0000_lut[3]),
    .O(old_product_4_addsub0000[3])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<4>  (
    .CI(Madd_old_product_4_addsub0000_cy[3]),
    .DI(multiplicand_3_IBUF_101),
    .S(Madd_old_product_4_addsub0000_lut[4]),
    .O(Madd_old_product_4_addsub0000_cy[4])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<4>  (
    .CI(Madd_old_product_4_addsub0000_cy[3]),
    .LI(Madd_old_product_4_addsub0000_lut[4]),
    .O(old_product_4_addsub0000[4])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<5>  (
    .CI(Madd_old_product_4_addsub0000_cy[4]),
    .DI(multiplicand_4_IBUF_102),
    .S(Madd_old_product_4_addsub0000_lut[5]),
    .O(Madd_old_product_4_addsub0000_cy[5])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<5>  (
    .CI(Madd_old_product_4_addsub0000_cy[4]),
    .LI(Madd_old_product_4_addsub0000_lut[5]),
    .O(old_product_4_addsub0000[5])
  );
  MUXCY   \Madd_old_product_4_addsub0000_cy<6>  (
    .CI(Madd_old_product_4_addsub0000_cy[5]),
    .DI(Madd_old_product_10_addsub0000_cy[10]),
    .S(\Madd_old_product_4_addsub0000_cy<6>_rt_19 ),
    .O(Madd_old_product_4_addsub0000_cy[6])
  );
  XORCY   \Madd_old_product_4_addsub0000_xor<6>  (
    .CI(Madd_old_product_4_addsub0000_cy[5]),
    .LI(\Madd_old_product_4_addsub0000_cy<6>_rt_19 ),
    .O(old_product_4_addsub0000[6])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<2>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .DI(multiplicand_0_IBUF_98),
    .S(Madd_old_product_6_addsub0000_lut[2]),
    .O(Madd_old_product_6_addsub0000_cy[2])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<2>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .LI(Madd_old_product_6_addsub0000_lut[2]),
    .O(old_product_6_addsub0000[2])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<3>  (
    .CI(Madd_old_product_6_addsub0000_cy[2]),
    .DI(multiplicand_1_IBUF_99),
    .S(Madd_old_product_6_addsub0000_lut[3]),
    .O(Madd_old_product_6_addsub0000_cy[3])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<3>  (
    .CI(Madd_old_product_6_addsub0000_cy[2]),
    .LI(Madd_old_product_6_addsub0000_lut[3]),
    .O(old_product_6_addsub0000[3])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<4>  (
    .CI(Madd_old_product_6_addsub0000_cy[3]),
    .DI(multiplicand_2_IBUF_100),
    .S(Madd_old_product_6_addsub0000_lut[4]),
    .O(Madd_old_product_6_addsub0000_cy[4])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<4>  (
    .CI(Madd_old_product_6_addsub0000_cy[3]),
    .LI(Madd_old_product_6_addsub0000_lut[4]),
    .O(old_product_6_addsub0000[4])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<5>  (
    .CI(Madd_old_product_6_addsub0000_cy[4]),
    .DI(multiplicand_3_IBUF_101),
    .S(Madd_old_product_6_addsub0000_lut[5]),
    .O(Madd_old_product_6_addsub0000_cy[5])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<5>  (
    .CI(Madd_old_product_6_addsub0000_cy[4]),
    .LI(Madd_old_product_6_addsub0000_lut[5]),
    .O(old_product_6_addsub0000[5])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<6>  (
    .CI(Madd_old_product_6_addsub0000_cy[5]),
    .DI(multiplicand_4_IBUF_102),
    .S(Madd_old_product_6_addsub0000_lut[6]),
    .O(Madd_old_product_6_addsub0000_cy[6])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<6>  (
    .CI(Madd_old_product_6_addsub0000_cy[5]),
    .LI(Madd_old_product_6_addsub0000_lut[6]),
    .O(old_product_6_addsub0000[6])
  );
  MUXCY   \Madd_old_product_6_addsub0000_cy<7>  (
    .CI(Madd_old_product_6_addsub0000_cy[6]),
    .DI(multiplicand_5_IBUF_103),
    .S(Madd_old_product_6_addsub0000_lut[7]),
    .O(Madd_old_product_6_addsub0000_cy[7])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<7>  (
    .CI(Madd_old_product_6_addsub0000_cy[6]),
    .LI(Madd_old_product_6_addsub0000_lut[7]),
    .O(old_product_6_addsub0000[7])
  );
  XORCY   \Madd_old_product_6_addsub0000_xor<8>  (
    .CI(Madd_old_product_6_addsub0000_cy[7]),
    .LI(Madd_old_product_10_addsub0000_cy[10]),
    .O(old_product_6_addsub0000[8])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<4>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .DI(multiplicand_0_IBUF_98),
    .S(Madd_old_product_10_addsub0000_lut[4]),
    .O(Madd_old_product_10_addsub0000_cy[4])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<4>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .LI(Madd_old_product_10_addsub0000_lut[4]),
    .O(old_product_10_addsub0000[4])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<5>  (
    .CI(Madd_old_product_10_addsub0000_cy[4]),
    .DI(multiplicand_1_IBUF_99),
    .S(Madd_old_product_10_addsub0000_lut[5]),
    .O(Madd_old_product_10_addsub0000_cy[5])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<5>  (
    .CI(Madd_old_product_10_addsub0000_cy[4]),
    .LI(Madd_old_product_10_addsub0000_lut[5]),
    .O(old_product_10_addsub0000[5])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<6>  (
    .CI(Madd_old_product_10_addsub0000_cy[5]),
    .DI(multiplicand_2_IBUF_100),
    .S(Madd_old_product_10_addsub0000_lut[6]),
    .O(Madd_old_product_10_addsub0000_cy[6])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<6>  (
    .CI(Madd_old_product_10_addsub0000_cy[5]),
    .LI(Madd_old_product_10_addsub0000_lut[6]),
    .O(old_product_10_addsub0000[6])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<7>  (
    .CI(Madd_old_product_10_addsub0000_cy[6]),
    .DI(multiplicand_3_IBUF_101),
    .S(Madd_old_product_10_addsub0000_lut[7]),
    .O(Madd_old_product_10_addsub0000_cy[7])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<7>  (
    .CI(Madd_old_product_10_addsub0000_cy[6]),
    .LI(Madd_old_product_10_addsub0000_lut[7]),
    .O(old_product_10_addsub0000[7])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<8>  (
    .CI(Madd_old_product_10_addsub0000_cy[7]),
    .DI(multiplicand_4_IBUF_102),
    .S(Madd_old_product_10_addsub0000_lut[8]),
    .O(Madd_old_product_10_addsub0000_cy[8])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<8>  (
    .CI(Madd_old_product_10_addsub0000_cy[7]),
    .LI(Madd_old_product_10_addsub0000_lut[8]),
    .O(old_product_10_addsub0000[8])
  );
  MUXCY   \Madd_old_product_10_addsub0000_cy<9>  (
    .CI(Madd_old_product_10_addsub0000_cy[8]),
    .DI(multiplicand_5_IBUF_103),
    .S(Madd_old_product_10_addsub0000_lut[9]),
    .O(Madd_old_product_10_addsub0000_cy[9])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<9>  (
    .CI(Madd_old_product_10_addsub0000_cy[8]),
    .LI(Madd_old_product_10_addsub0000_lut[9]),
    .O(old_product_10_addsub0000[9])
  );
  XORCY   \Madd_old_product_10_addsub0000_xor<10>  (
    .CI(Madd_old_product_10_addsub0000_cy[9]),
    .LI(Madd_old_product_10_addsub0000_cy[10]),
    .O(old_product_10_addsub0000[10])
  );
  MUXCY   \Madd_product_addsub0000_cy<5>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .DI(multiplicand_0_IBUF_98),
    .S(Madd_product_addsub0000_lut[5]),
    .O(Madd_product_addsub0000_cy[5])
  );
  XORCY   \Madd_product_addsub0000_xor<5>  (
    .CI(Madd_old_product_10_addsub0000_cy[10]),
    .LI(Madd_product_addsub0000_lut[5]),
    .O(product_addsub0000[5])
  );
  MUXCY   \Madd_product_addsub0000_cy<6>  (
    .CI(Madd_product_addsub0000_cy[5]),
    .DI(multiplicand_1_IBUF_99),
    .S(Madd_product_addsub0000_lut[6]),
    .O(Madd_product_addsub0000_cy[6])
  );
  XORCY   \Madd_product_addsub0000_xor<6>  (
    .CI(Madd_product_addsub0000_cy[5]),
    .LI(Madd_product_addsub0000_lut[6]),
    .O(product_addsub0000[6])
  );
  MUXCY   \Madd_product_addsub0000_cy<7>  (
    .CI(Madd_product_addsub0000_cy[6]),
    .DI(multiplicand_2_IBUF_100),
    .S(Madd_product_addsub0000_lut[7]),
    .O(Madd_product_addsub0000_cy[7])
  );
  XORCY   \Madd_product_addsub0000_xor<7>  (
    .CI(Madd_product_addsub0000_cy[6]),
    .LI(Madd_product_addsub0000_lut[7]),
    .O(product_addsub0000[7])
  );
  MUXCY   \Madd_product_addsub0000_cy<8>  (
    .CI(Madd_product_addsub0000_cy[7]),
    .DI(multiplicand_3_IBUF_101),
    .S(Madd_product_addsub0000_lut[8]),
    .O(Madd_product_addsub0000_cy[8])
  );
  XORCY   \Madd_product_addsub0000_xor<8>  (
    .CI(Madd_product_addsub0000_cy[7]),
    .LI(Madd_product_addsub0000_lut[8]),
    .O(product_addsub0000[8])
  );
  MUXCY   \Madd_product_addsub0000_cy<9>  (
    .CI(Madd_product_addsub0000_cy[8]),
    .DI(multiplicand_4_IBUF_102),
    .S(Madd_product_addsub0000_lut[9]),
    .O(Madd_product_addsub0000_cy[9])
  );
  XORCY   \Madd_product_addsub0000_xor<9>  (
    .CI(Madd_product_addsub0000_cy[8]),
    .LI(Madd_product_addsub0000_lut[9]),
    .O(product_addsub0000[9])
  );
  MUXCY   \Madd_product_addsub0000_cy<10>  (
    .CI(Madd_product_addsub0000_cy[9]),
    .DI(multiplicand_5_IBUF_103),
    .S(Madd_product_addsub0000_lut[10]),
    .O(Madd_product_addsub0000_cy[10])
  );
  XORCY   \Madd_product_addsub0000_xor<10>  (
    .CI(Madd_product_addsub0000_cy[9]),
    .LI(Madd_product_addsub0000_lut[10]),
    .O(product_addsub0000[10])
  );
  XORCY   \Madd_product_addsub0000_xor<11>  (
    .CI(Madd_product_addsub0000_cy[10]),
    .LI(Madd_old_product_10_addsub0000_cy[10]),
    .O(product_addsub0000[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_2<0>1  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_0_IBUF_98),
    .O(\_old_product_2[0] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_4<7>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(Madd_old_product_4_addsub0000_cy[6]),
    .O(\_old_product_4[7] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_2<5>1  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_5_IBUF_103),
    .O(\_old_product_2[5] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_2<4>1  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_4_IBUF_102),
    .O(\_old_product_2[4] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_2<3>1  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_3_IBUF_101),
    .O(\_old_product_2[3] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_2<2>1  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_2_IBUF_100),
    .O(\_old_product_2[2] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \product_mux0000<11>1  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[11]),
    .O(product_mux0000[11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_8<9>1  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[9]),
    .O(\_old_product_8[9] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_6<8>1  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[8]),
    .O(\_old_product_6[8] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_product_4<6>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[6]),
    .O(\_old_product_4[6] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \_old_product_8<7>1  (
    .I0(multiplier_3_IBUF_113),
    .I1(\_old_product_6[7] ),
    .I2(old_product_8_addsub0000[7]),
    .O(\_old_product_8[7] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \_old_product_8<6>1  (
    .I0(multiplier_3_IBUF_113),
    .I1(\_old_product_6[6] ),
    .I2(old_product_8_addsub0000[6]),
    .O(\_old_product_8[6] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \_old_product_8<5>1  (
    .I0(multiplier_3_IBUF_113),
    .I1(\_old_product_6[5] ),
    .I2(old_product_8_addsub0000[5]),
    .O(\_old_product_8[5] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \_old_product_6<5>1  (
    .I0(multiplier_2_IBUF_112),
    .I1(\_old_product_4[5] ),
    .I2(old_product_6_addsub0000[5]),
    .O(\_old_product_6[5] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \_old_product_6<4>1  (
    .I0(multiplier_2_IBUF_112),
    .I1(\_old_product_4[4] ),
    .I2(old_product_6_addsub0000[4]),
    .O(\_old_product_6[4] )
  );
  IBUF   start_IBUF (
    .I(start),
    .O(start_IBUF_191)
  );
  IBUF   multiplicand_5_IBUF (
    .I(multiplicand[5]),
    .O(multiplicand_5_IBUF_103)
  );
  IBUF   multiplicand_4_IBUF (
    .I(multiplicand[4]),
    .O(multiplicand_4_IBUF_102)
  );
  IBUF   multiplicand_3_IBUF (
    .I(multiplicand[3]),
    .O(multiplicand_3_IBUF_101)
  );
  IBUF   multiplicand_2_IBUF (
    .I(multiplicand[2]),
    .O(multiplicand_2_IBUF_100)
  );
  IBUF   multiplicand_1_IBUF (
    .I(multiplicand[1]),
    .O(multiplicand_1_IBUF_99)
  );
  IBUF   multiplicand_0_IBUF (
    .I(multiplicand[0]),
    .O(multiplicand_0_IBUF_98)
  );
  IBUF   multiplier_5_IBUF (
    .I(multiplier[5]),
    .O(multiplier_5_IBUF_115)
  );
  IBUF   multiplier_4_IBUF (
    .I(multiplier[4]),
    .O(multiplier_4_IBUF_114)
  );
  IBUF   multiplier_3_IBUF (
    .I(multiplier[3]),
    .O(multiplier_3_IBUF_113)
  );
  IBUF   multiplier_2_IBUF (
    .I(multiplier[2]),
    .O(multiplier_2_IBUF_112)
  );
  IBUF   multiplier_1_IBUF (
    .I(multiplier[1]),
    .O(multiplier_1_IBUF_111)
  );
  IBUF   multiplier_0_IBUF (
    .I(multiplier[0]),
    .O(multiplier_0_IBUF_110)
  );
  OBUF   product_11_OBUF (
    .I(product_11_158),
    .O(product[11])
  );
  OBUF   product_10_OBUF (
    .I(product_10_157),
    .O(product[10])
  );
  OBUF   product_9_OBUF (
    .I(product_9_166),
    .O(product[9])
  );
  OBUF   product_8_OBUF (
    .I(product_8_165),
    .O(product[8])
  );
  OBUF   product_7_OBUF (
    .I(product_7_164),
    .O(product[7])
  );
  OBUF   product_6_OBUF (
    .I(product_6_163),
    .O(product[6])
  );
  OBUF   product_5_OBUF (
    .I(product_5_162),
    .O(product[5])
  );
  OBUF   product_4_OBUF (
    .I(product_4_161),
    .O(product[4])
  );
  OBUF   product_3_OBUF (
    .I(product_3_160),
    .O(product[3])
  );
  OBUF   product_2_OBUF (
    .I(product_2_159),
    .O(product[2])
  );
  OBUF   product_1_OBUF (
    .I(product_1_156),
    .O(product[1])
  );
  OBUF   product_0_OBUF (
    .I(product_0_155),
    .O(product[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_product_4_addsub0000_cy<6>_rt  (
    .I0(multiplicand_5_IBUF_103),
    .O(\Madd_old_product_4_addsub0000_cy<6>_rt_19 )
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_8_addsub0000_lut<3>  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[3]),
    .I2(multiplicand_0_IBUF_98),
    .I3(\_old_product_4[3] ),
    .O(Madd_old_product_8_addsub0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_8_addsub0000_lut<4>  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[4]),
    .I2(multiplicand_1_IBUF_99),
    .I3(\_old_product_4[4] ),
    .O(Madd_old_product_8_addsub0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_8_addsub0000_lut<5>  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[5]),
    .I2(multiplicand_2_IBUF_100),
    .I3(\_old_product_4[5] ),
    .O(Madd_old_product_8_addsub0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_8_addsub0000_lut<6>  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[6]),
    .I2(multiplicand_3_IBUF_101),
    .I3(\_old_product_4[6] ),
    .O(Madd_old_product_8_addsub0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_8_addsub0000_lut<7>  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[7]),
    .I2(multiplicand_4_IBUF_102),
    .I3(\_old_product_4[7] ),
    .O(Madd_old_product_8_addsub0000_lut[7])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_8_addsub0000_lut<8>  (
    .I0(multiplier_2_IBUF_112),
    .I1(multiplicand_5_IBUF_103),
    .I2(old_product_6_addsub0000[8]),
    .O(Madd_old_product_8_addsub0000_lut[8])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_4_addsub0000_lut<1>  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_0_IBUF_98),
    .I2(multiplicand_1_IBUF_99),
    .O(Madd_old_product_4_addsub0000_lut[1])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_4_addsub0000_lut<2>  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_1_IBUF_99),
    .I2(multiplicand_2_IBUF_100),
    .O(Madd_old_product_4_addsub0000_lut[2])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_4_addsub0000_lut<3>  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_2_IBUF_100),
    .I2(multiplicand_3_IBUF_101),
    .O(Madd_old_product_4_addsub0000_lut[3])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_4_addsub0000_lut<4>  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_3_IBUF_101),
    .I2(multiplicand_4_IBUF_102),
    .O(Madd_old_product_4_addsub0000_lut[4])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_4_addsub0000_lut<5>  (
    .I0(multiplier_0_IBUF_110),
    .I1(multiplicand_4_IBUF_102),
    .I2(multiplicand_5_IBUF_103),
    .O(Madd_old_product_4_addsub0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_6_addsub0000_lut<2>  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[2]),
    .I2(multiplicand_0_IBUF_98),
    .I3(\_old_product_2[2] ),
    .O(Madd_old_product_6_addsub0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_6_addsub0000_lut<3>  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[3]),
    .I2(multiplicand_1_IBUF_99),
    .I3(\_old_product_2[3] ),
    .O(Madd_old_product_6_addsub0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_6_addsub0000_lut<4>  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[4]),
    .I2(multiplicand_2_IBUF_100),
    .I3(\_old_product_2[4] ),
    .O(Madd_old_product_6_addsub0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_6_addsub0000_lut<5>  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[5]),
    .I2(multiplicand_3_IBUF_101),
    .I3(\_old_product_2[5] ),
    .O(Madd_old_product_6_addsub0000_lut[5])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_6_addsub0000_lut<6>  (
    .I0(multiplier_1_IBUF_111),
    .I1(multiplicand_4_IBUF_102),
    .I2(old_product_4_addsub0000[6]),
    .O(Madd_old_product_6_addsub0000_lut[6])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_6_addsub0000_lut<7>  (
    .I0(multiplier_1_IBUF_111),
    .I1(multiplicand_5_IBUF_103),
    .I2(Madd_old_product_4_addsub0000_cy[6]),
    .O(Madd_old_product_6_addsub0000_lut[7])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_10_addsub0000_lut<4>  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[4]),
    .I2(multiplicand_0_IBUF_98),
    .I3(\_old_product_6[4] ),
    .O(Madd_old_product_10_addsub0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_10_addsub0000_lut<5>  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[5]),
    .I2(multiplicand_1_IBUF_99),
    .I3(\_old_product_6[5] ),
    .O(Madd_old_product_10_addsub0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_10_addsub0000_lut<6>  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[6]),
    .I2(multiplicand_2_IBUF_100),
    .I3(\_old_product_6[6] ),
    .O(Madd_old_product_10_addsub0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_10_addsub0000_lut<7>  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[7]),
    .I2(multiplicand_3_IBUF_101),
    .I3(\_old_product_6[7] ),
    .O(Madd_old_product_10_addsub0000_lut[7])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_old_product_10_addsub0000_lut<8>  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[8]),
    .I2(multiplicand_4_IBUF_102),
    .I3(\_old_product_6[8] ),
    .O(Madd_old_product_10_addsub0000_lut[8])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_old_product_10_addsub0000_lut<9>  (
    .I0(multiplier_3_IBUF_113),
    .I1(multiplicand_5_IBUF_103),
    .I2(old_product_8_addsub0000[9]),
    .O(Madd_old_product_10_addsub0000_lut[9])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_product_addsub0000_lut<5>  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[5]),
    .I2(multiplicand_0_IBUF_98),
    .I3(\_old_product_8[5] ),
    .O(Madd_product_addsub0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_product_addsub0000_lut<6>  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[6]),
    .I2(multiplicand_1_IBUF_99),
    .I3(\_old_product_8[6] ),
    .O(Madd_product_addsub0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_product_addsub0000_lut<7>  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[7]),
    .I2(multiplicand_2_IBUF_100),
    .I3(\_old_product_8[7] ),
    .O(Madd_product_addsub0000_lut[7])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_product_addsub0000_lut<8>  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[8]),
    .I2(multiplicand_3_IBUF_101),
    .I3(\_old_product_8[8] ),
    .O(Madd_product_addsub0000_lut[8])
  );
  LUT4 #(
    .INIT ( 16'h2D78 ))
  \Madd_product_addsub0000_lut<9>  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[9]),
    .I2(multiplicand_4_IBUF_102),
    .I3(\_old_product_8[9] ),
    .O(Madd_product_addsub0000_lut[9])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \Madd_product_addsub0000_lut<10>  (
    .I0(multiplier_4_IBUF_114),
    .I1(multiplicand_5_IBUF_103),
    .I2(old_product_10_addsub0000[10]),
    .O(Madd_product_addsub0000_lut[10])
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_4<1>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[1]),
    .I2(multiplier_0_IBUF_110),
    .I3(multiplicand_1_IBUF_99),
    .O(\_old_product_4[1] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<10>1  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[10]),
    .I2(multiplier_4_IBUF_114),
    .I3(old_product_10_addsub0000[10]),
    .O(product_mux0000[10])
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_8<8>1  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[8]),
    .I2(multiplier_2_IBUF_112),
    .I3(old_product_6_addsub0000[8]),
    .O(\_old_product_8[8] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_6<7>1  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[7]),
    .I2(multiplier_1_IBUF_111),
    .I3(Madd_old_product_4_addsub0000_cy[6]),
    .O(\_old_product_6[7] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_6<6>1  (
    .I0(multiplier_2_IBUF_112),
    .I1(old_product_6_addsub0000[6]),
    .I2(multiplier_1_IBUF_111),
    .I3(old_product_4_addsub0000[6]),
    .O(\_old_product_6[6] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_4<5>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[5]),
    .I2(multiplier_0_IBUF_110),
    .I3(multiplicand_5_IBUF_103),
    .O(\_old_product_4[5] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_4<4>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[4]),
    .I2(multiplier_0_IBUF_110),
    .I3(multiplicand_4_IBUF_102),
    .O(\_old_product_4[4] )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_4<3>1  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[3]),
    .I2(multiplier_0_IBUF_110),
    .I3(multiplicand_3_IBUF_101),
    .O(\_old_product_4[3] )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_91)
  );
  INV   start_inv1_INV_0 (
    .I(start_IBUF_191),
    .O(start_inv)
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_6<2>11  (
    .I0(multiplier_1_IBUF_111),
    .I1(old_product_4_addsub0000[2]),
    .I2(multiplier_0_IBUF_110),
    .I3(multiplicand_2_IBUF_100),
    .O(\_old_product_6<2>1 )
  );
  MUXF5   \_old_product_6<2>1_f5  (
    .I0(\_old_product_6<2>1 ),
    .I1(old_product_6_addsub0000[2]),
    .S(multiplier_2_IBUF_112),
    .O(\_old_product_6[2] )
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \_old_product_8<3>11  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_6_addsub0000[3]),
    .I2(old_product_8_addsub0000[3]),
    .I3(multiplier_2_IBUF_112),
    .O(\_old_product_8<3>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_8<3>12  (
    .I0(multiplier_3_IBUF_113),
    .I1(old_product_8_addsub0000[3]),
    .I2(multiplier_2_IBUF_112),
    .I3(old_product_6_addsub0000[3]),
    .O(\_old_product_8<3>11_84 )
  );
  MUXF5   \_old_product_8<3>1_f5  (
    .I0(\_old_product_8<3>11_84 ),
    .I1(\_old_product_8<3>1 ),
    .S(\_old_product_4[3] ),
    .O(\_old_product_8[3] )
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \_old_product_10<4>11  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_8_addsub0000[4]),
    .I2(old_product_10_addsub0000[4]),
    .I3(multiplier_3_IBUF_113),
    .O(\_old_product_10<4>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \_old_product_10<4>12  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[4]),
    .I2(multiplier_3_IBUF_113),
    .I3(old_product_8_addsub0000[4]),
    .O(\_old_product_10<4>11_63 )
  );
  MUXF5   \_old_product_10<4>1_f5  (
    .I0(\_old_product_10<4>11_63 ),
    .I1(\_old_product_10<4>1 ),
    .S(\_old_product_6[4] ),
    .O(_old_product_10[4])
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \product_mux0000<5>11  (
    .I0(multiplier_5_IBUF_115),
    .I1(old_product_10_addsub0000[5]),
    .I2(product_addsub0000[5]),
    .I3(multiplier_4_IBUF_114),
    .O(\product_mux0000<5>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<5>12  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[5]),
    .I2(multiplier_4_IBUF_114),
    .I3(old_product_10_addsub0000[5]),
    .O(\product_mux0000<5>11_178 )
  );
  MUXF5   \product_mux0000<5>1_f5  (
    .I0(\product_mux0000<5>11_178 ),
    .I1(\product_mux0000<5>1 ),
    .S(\_old_product_8[5] ),
    .O(product_mux0000[5])
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \product_mux0000<6>11  (
    .I0(multiplier_5_IBUF_115),
    .I1(old_product_10_addsub0000[6]),
    .I2(product_addsub0000[6]),
    .I3(multiplier_4_IBUF_114),
    .O(\product_mux0000<6>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<6>12  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[6]),
    .I2(multiplier_4_IBUF_114),
    .I3(old_product_10_addsub0000[6]),
    .O(\product_mux0000<6>11_181 )
  );
  MUXF5   \product_mux0000<6>1_f5  (
    .I0(\product_mux0000<6>11_181 ),
    .I1(\product_mux0000<6>1 ),
    .S(\_old_product_8[6] ),
    .O(product_mux0000[6])
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \product_mux0000<7>11  (
    .I0(multiplier_5_IBUF_115),
    .I1(old_product_10_addsub0000[7]),
    .I2(product_addsub0000[7]),
    .I3(multiplier_4_IBUF_114),
    .O(\product_mux0000<7>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<7>12  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[7]),
    .I2(multiplier_4_IBUF_114),
    .I3(old_product_10_addsub0000[7]),
    .O(\product_mux0000<7>11_184 )
  );
  MUXF5   \product_mux0000<7>1_f5  (
    .I0(\product_mux0000<7>11_184 ),
    .I1(\product_mux0000<7>1 ),
    .S(\_old_product_8[7] ),
    .O(product_mux0000[7])
  );
  LUT4 #(
    .INIT ( 16'hE4F5 ))
  \product_mux0000<8>11  (
    .I0(multiplier_5_IBUF_115),
    .I1(old_product_10_addsub0000[8]),
    .I2(product_addsub0000[8]),
    .I3(multiplier_4_IBUF_114),
    .O(\product_mux0000<8>1 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<8>12  (
    .I0(multiplier_5_IBUF_115),
    .I1(product_addsub0000[8]),
    .I2(multiplier_4_IBUF_114),
    .I3(old_product_10_addsub0000[8]),
    .O(\product_mux0000<8>11_187 )
  );
  MUXF5   \product_mux0000<8>1_f5  (
    .I0(\product_mux0000<8>11_187 ),
    .I1(\product_mux0000<8>1 ),
    .S(\_old_product_8[8] ),
    .O(product_mux0000[8])
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \product_mux0000<9>11  (
    .I0(multiplier_4_IBUF_114),
    .I1(old_product_10_addsub0000[9]),
    .I2(multiplier_3_IBUF_113),
    .I3(old_product_8_addsub0000[9]),
    .O(\product_mux0000<9>1 )
  );
  MUXF5   \product_mux0000<9>1_f5  (
    .I0(\product_mux0000<9>1 ),
    .I1(product_addsub0000[9]),
    .S(multiplier_5_IBUF_115),
    .O(product_mux0000[9])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

