/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12-SP1
// Date      : Mon Mar  6 16:00:42 2023
/////////////////////////////////////////////////////////////


module s386 ( GND, VDD, CK, v0, v1, v13_D_10, v13_D_11, v13_D_12, v13_D_6, 
        v13_D_7, v13_D_8, v13_D_9, v2, v3, v4, v5, v6 );
  input GND, VDD, CK, v0, v1, v2, v3, v4, v5, v6;
  output v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, v13_D_8, v13_D_9;
  wire   v12, v11, v10, v9, v8, v7, Lv13_D_12, Lv13_D_11, Lv13_D_10, Lv13_D_9,
         Lv13_D_8, Lv13_D_7, Lv13_D_6, Lv13_D_5, Lv13_D_4, Lv13_D_3, Lv13_D_2,
         Lv13_D_1, Lv13_D_0, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106;
  assign v13_D_12 = Lv13_D_12;
  assign v13_D_11 = Lv13_D_11;
  assign v13_D_10 = Lv13_D_10;
  assign v13_D_9 = Lv13_D_9;
  assign v13_D_8 = Lv13_D_8;
  assign v13_D_7 = Lv13_D_7;
  assign v13_D_6 = Lv13_D_6;

  DFFX1_RVT \DFF_1/q_reg  ( .D(Lv13_D_4), .CLK(CK), .Q(v11), .QN(n106) );
  DFFX1_RVT \DFF_4/q_reg  ( .D(Lv13_D_1), .CLK(CK), .Q(v8), .QN(n103) );
  DFFX1_RVT \DFF_2/q_reg  ( .D(Lv13_D_3), .CLK(CK), .Q(v10), .QN(n105) );
  DFFX1_RVT \DFF_0/q_reg  ( .D(Lv13_D_5), .CLK(CK), .Q(v12), .QN(n102) );
  DFFX1_RVT \DFF_3/q_reg  ( .D(Lv13_D_2), .CLK(CK), .Q(v9), .QN(n104) );
  DFFX1_RVT \DFF_5/q_reg  ( .D(Lv13_D_0), .CLK(CK), .Q(v7), .QN(n101) );
  OAI21X1_RVT U68 ( .A1(n95), .A2(n58), .A3(n98), .Y(Lv13_D_9) );
  OR2X1_RVT U69 ( .A1(n104), .A2(n90), .Y(n93) );
  INVX0_RVT U70 ( .A(n66), .Y(n72) );
  AO22X1_RVT U71 ( .A1(n74), .A2(v5), .A3(n106), .A4(n73), .Y(n77) );
  OA221X1_RVT U72 ( .A1(v12), .A2(v4), .A3(v12), .A4(v2), .A5(n88), .Y(n80) );
  INVX0_RVT U73 ( .A(n64), .Y(n97) );
  INVX0_RVT U74 ( .A(n69), .Y(n56) );
  AND2X1_RVT U75 ( .A1(n81), .A2(n102), .Y(n79) );
  AND3X1_RVT U76 ( .A1(v3), .A2(n101), .A3(n106), .Y(n61) );
  NAND2X0_RVT U77 ( .A1(v8), .A2(n75), .Y(n69) );
  INVX0_RVT U78 ( .A(v3), .Y(n75) );
  INVX0_RVT U79 ( .A(v1), .Y(n83) );
  INVX0_RVT U80 ( .A(v0), .Y(n92) );
  INVX0_RVT U81 ( .A(v5), .Y(n67) );
  NAND3X0_RVT U82 ( .A1(n102), .A2(n105), .A3(n104), .Y(n95) );
  AND2X1_RVT U83 ( .A1(n101), .A2(n106), .Y(n57) );
  NAND4X0_RVT U84 ( .A1(v4), .A2(n57), .A3(n56), .A4(n83), .Y(n58) );
  AND3X1_RVT U85 ( .A1(n103), .A2(n101), .A3(n106), .Y(n88) );
  AND2X1_RVT U86 ( .A1(n88), .A2(n102), .Y(n60) );
  NAND4X0_RVT U87 ( .A1(v10), .A2(v0), .A3(n60), .A4(n104), .Y(n98) );
  NAND3X0_RVT U88 ( .A1(n88), .A2(n102), .A3(n92), .Y(n90) );
  NOR3X0_RVT U89 ( .A1(n105), .A2(n67), .A3(n93), .Y(Lv13_D_12) );
  NOR2X0_RVT U90 ( .A1(v6), .A2(n98), .Y(Lv13_D_8) );
  AO21X1_RVT U91 ( .A1(v0), .A2(v5), .A3(n105), .Y(n59) );
  AND4X1_RVT U92 ( .A1(v1), .A2(v9), .A3(n60), .A4(n59), .Y(Lv13_D_10) );
  NOR4X1_RVT U93 ( .A1(n103), .A2(v4), .A3(v11), .A4(v3), .Y(n64) );
  AND2X1_RVT U94 ( .A1(v11), .A2(n103), .Y(n74) );
  AND4X1_RVT U95 ( .A1(n105), .A2(n104), .A3(n83), .A4(v0), .Y(n81) );
  OA221X1_RVT U96 ( .A1(n64), .A2(v7), .A3(n64), .A4(n74), .A5(n79), .Y(
        Lv13_D_7) );
  NAND2X0_RVT U97 ( .A1(v8), .A2(v7), .Y(n96) );
  OA221X1_RVT U98 ( .A1(n64), .A2(v11), .A3(n64), .A4(n96), .A5(n79), .Y(
        Lv13_D_0) );
  NAND4X0_RVT U99 ( .A1(v12), .A2(n81), .A3(n74), .A4(n101), .Y(n66) );
  AO22X1_RVT U100 ( .A1(v7), .A2(v11), .A3(v2), .A4(n61), .Y(n62) );
  NAND3X0_RVT U101 ( .A1(n79), .A2(v8), .A3(n62), .Y(n63) );
  NAND2X0_RVT U102 ( .A1(n66), .A2(n63), .Y(Lv13_D_5) );
  NAND3X0_RVT U103 ( .A1(v2), .A2(n103), .A3(n106), .Y(n65) );
  NAND3X0_RVT U104 ( .A1(n101), .A2(n97), .A3(n65), .Y(n68) );
  AO22X1_RVT U105 ( .A1(n79), .A2(n68), .A3(n72), .A4(n67), .Y(Lv13_D_4) );
  AO222X1_RVT U106 ( .A1(v7), .A2(n69), .A3(v7), .A4(v4), .A5(n69), .A6(v2), 
        .Y(n70) );
  AND2X1_RVT U107 ( .A1(n79), .A2(n70), .Y(n71) );
  AO22X1_RVT U108 ( .A1(n72), .A2(v5), .A3(n71), .A4(n106), .Y(Lv13_D_6) );
  AO21X1_RVT U109 ( .A1(v8), .A2(v3), .A3(v4), .Y(n73) );
  AOI221X1_RVT U110 ( .A1(n106), .A2(n75), .A3(n106), .A4(v2), .A5(n103), .Y(
        n76) );
  AO22X1_RVT U111 ( .A1(v7), .A2(n77), .A3(n101), .A4(n76), .Y(n78) );
  AO22X1_RVT U112 ( .A1(n81), .A2(n80), .A3(n79), .A4(n78), .Y(Lv13_D_1) );
  NAND2X0_RVT U113 ( .A1(n102), .A2(n104), .Y(n87) );
  OR2X1_RVT U114 ( .A1(v8), .A2(v7), .Y(n82) );
  AO21X1_RVT U115 ( .A1(v9), .A2(v0), .A3(n82), .Y(n86) );
  AND2X1_RVT U116 ( .A1(v0), .A2(n83), .Y(n84) );
  OR2X1_RVT U117 ( .A1(v10), .A2(n84), .Y(n85) );
  AO21X1_RVT U118 ( .A1(n87), .A2(n86), .A3(n85), .Y(n100) );
  NAND3X0_RVT U119 ( .A1(v1), .A2(n88), .A3(n102), .Y(n91) );
  AO221X1_RVT U120 ( .A1(v9), .A2(v5), .A3(v9), .A4(n105), .A5(n91), .Y(n89)
         );
  NAND3X0_RVT U121 ( .A1(n100), .A2(n90), .A3(n89), .Y(Lv13_D_3) );
  OA22X1_RVT U122 ( .A1(v5), .A2(n93), .A3(n92), .A4(n91), .Y(n94) );
  NAND2X0_RVT U123 ( .A1(n94), .A2(n100), .Y(Lv13_D_2) );
  AO221X1_RVT U124 ( .A1(n97), .A2(n106), .A3(n97), .A4(n96), .A5(n95), .Y(n99) );
  NAND3X0_RVT U125 ( .A1(n100), .A2(n99), .A3(n98), .Y(Lv13_D_11) );
endmodule

