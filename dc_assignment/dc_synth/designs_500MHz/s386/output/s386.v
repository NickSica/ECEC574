/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Wed Mar  1 10:41:26 2023
/////////////////////////////////////////////////////////////


module dff_5 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module dff_0 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module dff_1 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module dff_2 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module dff_3 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module dff_4 ( clk, q, d );
  input clk, d;
  output q;


  DFFX1_RVT q_reg ( .D(d), .CLK(clk), .Q(q) );
endmodule


module s386 ( GND, VDD, CK, v0, v1, v13_D_10, v13_D_11, v13_D_12, v13_D_6, 
        v13_D_7, v13_D_8, v13_D_9, v2, v3, v4, v5, v6 );
  input GND, VDD, CK, v0, v1, v2, v3, v4, v5, v6;
  output v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, v13_D_8, v13_D_9;
  wire   v12, v11, v10, v9, v8, v7, Lv13_D_12, Lv13_D_11, Lv13_D_10, Lv13_D_9,
         Lv13_D_8, Lv13_D_7, Lv13_D_6, Lv13_D_5, Lv13_D_4, Lv13_D_3, Lv13_D_2,
         Lv13_D_1, Lv13_D_0, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162;
  assign v13_D_12 = Lv13_D_12;
  assign v13_D_11 = Lv13_D_11;
  assign v13_D_10 = Lv13_D_10;
  assign v13_D_9 = Lv13_D_9;
  assign v13_D_8 = Lv13_D_8;
  assign v13_D_7 = Lv13_D_7;
  assign v13_D_6 = Lv13_D_6;

  dff_5 DFF_0 ( .clk(CK), .q(v12), .d(Lv13_D_5) );
  dff_4 DFF_1 ( .clk(CK), .q(v11), .d(Lv13_D_4) );
  dff_3 DFF_2 ( .clk(CK), .q(v10), .d(Lv13_D_3) );
  dff_2 DFF_3 ( .clk(CK), .q(v9), .d(Lv13_D_2) );
  dff_1 DFF_4 ( .clk(CK), .q(v8), .d(Lv13_D_1) );
  dff_0 DFF_5 ( .clk(CK), .q(v7), .d(Lv13_D_0) );
  NBUFFX2_RVT U74 ( .A(n65), .Y(n61) );
  NAND2X0_RVT U75 ( .A1(n62), .A2(n63), .Y(Lv13_D_6) );
  NAND2X0_RVT U76 ( .A1(n144), .A2(n65), .Y(n62) );
  NAND3X2_RVT U77 ( .A1(n79), .A2(v5), .A3(n67), .Y(n63) );
  AND3X1_RVT U78 ( .A1(n145), .A2(n87), .A3(n83), .Y(n65) );
  NBUFFX2_RVT U79 ( .A(v3), .Y(n64) );
  OR2X2_RVT U80 ( .A1(n136), .A2(v3), .Y(n142) );
  INVX0_RVT U81 ( .A(n115), .Y(n116) );
  INVX0_RVT U82 ( .A(n89), .Y(n91) );
  INVX0_RVT U83 ( .A(n89), .Y(n90) );
  INVX0_RVT U84 ( .A(n149), .Y(n150) );
  INVX0_RVT U85 ( .A(n120), .Y(n94) );
  INVX0_RVT U86 ( .A(n102), .Y(n95) );
  INVX0_RVT U87 ( .A(n148), .Y(n153) );
  AND2X1_RVT U88 ( .A1(n72), .A2(n69), .Y(n66) );
  AND2X1_RVT U89 ( .A1(n117), .A2(n70), .Y(n67) );
  AND2X1_RVT U90 ( .A1(n78), .A2(n73), .Y(n68) );
  INVX0_RVT U91 ( .A(n93), .Y(n137) );
  AND3X1_RVT U92 ( .A1(n105), .A2(n152), .A3(n147), .Y(n69) );
  AO21X1_RVT U93 ( .A1(n124), .A2(n123), .A3(n122), .Y(Lv13_D_4) );
  INVX0_RVT U94 ( .A(n129), .Y(n123) );
  AOI21X1_RVT U95 ( .A1(n121), .A2(n120), .A3(n119), .Y(n122) );
  INVX0_RVT U96 ( .A(n151), .Y(n89) );
  INVX0_RVT U97 ( .A(n96), .Y(n125) );
  AO21X2_RVT U98 ( .A1(v10), .A2(n124), .A3(n151), .Y(n112) );
  AND3X2_RVT U99 ( .A1(n88), .A2(v5), .A3(v10), .Y(Lv13_D_12) );
  NAND4X1_RVT U100 ( .A1(v10), .A2(n69), .A3(n91), .A4(n84), .Y(n160) );
  NBUFFX2_RVT U101 ( .A(n82), .Y(n70) );
  NBUFFX2_RVT U102 ( .A(n155), .Y(n71) );
  NBUFFX2_RVT U103 ( .A(v1), .Y(n72) );
  NBUFFX2_RVT U104 ( .A(v11), .Y(n73) );
  NBUFFX2_RVT U105 ( .A(n146), .Y(n74) );
  NBUFFX2_RVT U106 ( .A(n82), .Y(n75) );
  NBUFFX2_RVT U107 ( .A(n156), .Y(n76) );
  INVX0_RVT U108 ( .A(n111), .Y(n77) );
  INVX0_RVT U109 ( .A(n157), .Y(n111) );
  INVX0_RVT U110 ( .A(n92), .Y(n78) );
  NAND3X2_RVT U111 ( .A1(n90), .A2(n161), .A3(n147), .Y(n92) );
  INVX0_RVT U112 ( .A(n92), .Y(n145) );
  NBUFFX2_RVT U113 ( .A(n74), .Y(n79) );
  NBUFFX2_RVT U114 ( .A(v7), .Y(n80) );
  NBUFFX2_RVT U115 ( .A(v8), .Y(n81) );
  NBUFFX2_RVT U116 ( .A(v0), .Y(n82) );
  NBUFFX2_RVT U117 ( .A(n146), .Y(n83) );
  INVX0_RVT U118 ( .A(n106), .Y(n84) );
  INVX0_RVT U119 ( .A(n109), .Y(n105) );
  NAND4X1_RVT U120 ( .A1(n70), .A2(v10), .A3(n69), .A4(n90), .Y(n135) );
  NBUFFX2_RVT U121 ( .A(n74), .Y(n85) );
  NBUFFX2_RVT U122 ( .A(n84), .Y(n86) );
  INVX0_RVT U123 ( .A(n106), .Y(n87) );
  INVX0_RVT U124 ( .A(n114), .Y(n107) );
  AND2X1_RVT U125 ( .A1(n107), .A2(v9), .Y(n88) );
  INVX0_RVT U126 ( .A(v9), .Y(n151) );
  INVX0_RVT U127 ( .A(v10), .Y(n161) );
  INVX0_RVT U128 ( .A(v12), .Y(n147) );
  INVX0_RVT U129 ( .A(v1), .Y(n146) );
  NAND3X0_RVT U130 ( .A1(n68), .A2(n86), .A3(n79), .Y(n102) );
  NAND2X0_RVT U131 ( .A1(n80), .A2(n81), .Y(n149) );
  INVX0_RVT U132 ( .A(v4), .Y(n156) );
  INVX0_RVT U133 ( .A(v3), .Y(n155) );
  INVX0_RVT U134 ( .A(v11), .Y(n152) );
  NAND2X0_RVT U135 ( .A1(n81), .A2(n152), .Y(n93) );
  NAND3X0_RVT U136 ( .A1(n76), .A2(n71), .A3(n137), .Y(n120) );
  NAND3X0_RVT U137 ( .A1(n145), .A2(n86), .A3(n83), .Y(n119) );
  AO22X1_RVT U138 ( .A1(n95), .A2(n149), .A3(n94), .A4(n61), .Y(Lv13_D_0) );
  INVX0_RVT U139 ( .A(v8), .Y(n136) );
  INVX0_RVT U140 ( .A(v7), .Y(n130) );
  NAND2X0_RVT U141 ( .A1(n136), .A2(n130), .Y(n109) );
  NAND2X0_RVT U142 ( .A1(v12), .A2(n105), .Y(n115) );
  NAND4X0_RVT U143 ( .A1(n90), .A2(n83), .A3(n161), .A4(n86), .Y(n100) );
  NAND2X0_RVT U144 ( .A1(v2), .A2(n130), .Y(n96) );
  NAND2X0_RVT U145 ( .A1(n64), .A2(n81), .Y(n98) );
  NAND2X0_RVT U146 ( .A1(v2), .A2(n136), .Y(n118) );
  AND2X1_RVT U147 ( .A1(n118), .A2(n130), .Y(n97) );
  OA22X1_RVT U148 ( .A1(n125), .A2(n98), .A3(n97), .A4(n76), .Y(n99) );
  OA22X1_RVT U149 ( .A1(n115), .A2(n100), .A3(n99), .A4(n119), .Y(n104) );
  NAND2X0_RVT U150 ( .A1(v5), .A2(n136), .Y(n101) );
  MUX21X1_RVT U151 ( .A1(n136), .A2(n101), .S0(n80), .Y(n103) );
  OAI22X1_RVT U152 ( .A1(n73), .A2(n104), .A3(n103), .A4(n102), .Y(Lv13_D_1)
         );
  INVX0_RVT U153 ( .A(v0), .Y(n106) );
  NAND2X0_RVT U154 ( .A1(n69), .A2(n106), .Y(n114) );
  INVX0_RVT U155 ( .A(v5), .Y(n124) );
  NAND2X0_RVT U156 ( .A1(n151), .A2(n147), .Y(n110) );
  NAND2X0_RVT U157 ( .A1(n72), .A2(n91), .Y(n108) );
  AO221X1_RVT U158 ( .A1(n110), .A2(n109), .A3(n75), .A4(n108), .A5(v10), .Y(
        n157) );
  AO221X1_RVT U159 ( .A1(n88), .A2(n124), .A3(n86), .A4(n66), .A5(n111), .Y(
        Lv13_D_2) );
  NAND2X0_RVT U160 ( .A1(n66), .A2(n112), .Y(n113) );
  NAND3X0_RVT U161 ( .A1(n113), .A2(n77), .A3(n114), .Y(Lv13_D_3) );
  AND4X1_RVT U162 ( .A1(n116), .A2(n161), .A3(n73), .A4(n91), .Y(n117) );
  NAND2X0_RVT U163 ( .A1(n67), .A2(n79), .Y(n129) );
  OA21X2_RVT U164 ( .A1(n73), .A2(n118), .A3(n130), .Y(n121) );
  AND2X1_RVT U165 ( .A1(n64), .A2(n125), .Y(n126) );
  MUX21X1_RVT U166 ( .A1(n126), .A2(n80), .S0(n73), .Y(n127) );
  NAND3X0_RVT U167 ( .A1(n61), .A2(n81), .A3(n127), .Y(n128) );
  NAND2X0_RVT U168 ( .A1(n129), .A2(n128), .Y(Lv13_D_5) );
  NAND2X0_RVT U169 ( .A1(n147), .A2(n152), .Y(n132) );
  NAND3X0_RVT U170 ( .A1(n161), .A2(n130), .A3(n91), .Y(n131) );
  NOR4X1_RVT U171 ( .A1(n132), .A2(n131), .A3(n72), .A4(n156), .Y(n133) );
  NAND3X0_RVT U172 ( .A1(n81), .A2(n155), .A3(n133), .Y(n134) );
  NAND2X0_RVT U173 ( .A1(n134), .A2(n135), .Y(Lv13_D_9) );
  NOR2X0_RVT U174 ( .A1(v6), .A2(n135), .Y(Lv13_D_8) );
  NAND3X0_RVT U175 ( .A1(n80), .A2(n136), .A3(n68), .Y(n141) );
  NAND2X0_RVT U176 ( .A1(n87), .A2(n85), .Y(n140) );
  NAND2X0_RVT U177 ( .A1(n85), .A2(n155), .Y(n139) );
  NAND4X0_RVT U178 ( .A1(n137), .A2(n145), .A3(n156), .A4(n75), .Y(n138) );
  OAI22X1_RVT U179 ( .A1(n141), .A2(n140), .A3(n138), .A4(n139), .Y(Lv13_D_7)
         );
  AND2X1_RVT U180 ( .A1(v4), .A2(n80), .Y(n143) );
  OA221X1_RVT U181 ( .A1(n143), .A2(n142), .A3(v2), .A4(n80), .A5(n152), .Y(
        n144) );
  NAND2X0_RVT U182 ( .A1(n161), .A2(n147), .Y(n148) );
  NAND4X0_RVT U183 ( .A1(n153), .A2(n91), .A3(n73), .A4(n150), .Y(n159) );
  AND4X1_RVT U184 ( .A1(n153), .A2(n152), .A3(n151), .A4(n81), .Y(n154) );
  NAND3X0_RVT U185 ( .A1(n76), .A2(n71), .A3(n154), .Y(n158) );
  NAND4X0_RVT U186 ( .A1(n157), .A2(n159), .A3(n158), .A4(n160), .Y(Lv13_D_11)
         );
  AO21X1_RVT U187 ( .A1(v5), .A2(n75), .A3(n161), .Y(n162) );
  AND3X1_RVT U188 ( .A1(n162), .A2(n66), .A3(v9), .Y(Lv13_D_10) );
endmodule

