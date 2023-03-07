module AND2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  and(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  and(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  and(ZN, i_66, A3);
  and(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AND4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  and(ZN, i_12, A4);
  and(i_12, i_13, A3);
  and(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI211_X1 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A);
  or(i_19, i_20, B);
  and(i_20, C1, C2);

  specify
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI21_X1 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  or(i_12, A, i_13);
  and(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI21_X2 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_52);
  or(i_52, A, i_53);
  and(i_53, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI221_X1 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  or(i_24, i_25, i_27);
  or(i_25, i_26, A);
  and(i_26, C1, C2);
  and(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI221_X2 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  or(i_24, i_25, i_27);
  or(i_25, i_26, A);
  and(i_26, C1, C2);
  and(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b0) || (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b1)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module AOI22_X1 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, i_20);
  and(i_19, A1, A2);
  and(i_20, B1, B2);

  specify
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module BUF_X2 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module CLKBUF_X1 (A, Z);

  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module HA_X1 (A, B, CO, S);

  input A;
  input B;
  output CO;
  output S;

  and(CO, A, B);
  xor(S, A, B);

  specify
    (A => CO) = (0.1, 0.1);
    (B => CO) = (0.1, 0.1);
    if((B == 1'b0)) (A => S) = (0.1, 0.1);
    if((B == 1'b1)) (A => S) = (0.1, 0.1);
    if((A == 1'b1)) (B => S) = (0.1, 0.1);
    if((A == 1'b0)) (B => S) = (0.1, 0.1);
  endspecify

endmodule

module INV_X1 (A, ZN);

  input A;
  output ZN;

  not(ZN, A);

  specify
    (A => ZN) = (0.1, 0.1);
  endspecify

endmodule

module MUX2_X1 (A, B, S, Z);

  input A;
  input B;
  input S;
  output Z;

  or(Z, i_38, i_39);
  and(i_38, S, B);
  and(i_39, A, i_40);
  not(i_40, S);

  specify
    if((B == 1'b1) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b0) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (S => Z) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (S => Z) = (0.1, 0.1);
  endspecify

endmodule

module NAND2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_6);
  and(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_32);
  and(i_32, i_33, A3);
  and(i_33, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NAND4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, A4);
  and(i_19, i_20, A3);
  and(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_66);
  or(i_66, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  not(ZN, i_46);
  or(i_46, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  not(ZN, i_12);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module NOR4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  not(ZN, i_18);
  or(i_18, i_19, A4);
  or(i_19, i_20, A3);
  or(i_20, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI211_X1 (A, B, C1, C2, ZN);

  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, B);
  and(i_19, i_20, A);
  or(i_20, C1, C2);

  specify
    if((B == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI21_X1 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  and(i_12, A, i_13);
  or(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI21_X2 (A, B1, B2, ZN);

  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_12);
  and(i_12, A, i_13);
  or(i_13, B1, B2);

  specify
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI221_X1 (A, B1, B2, C1, C2, ZN);

  input A;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_24);
  and(i_24, i_25, i_27);
  and(i_25, i_26, A);
  or(i_26, C1, C2);
  or(i_27, B1, B2);

  specify
    (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b0) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI222_X1 (A1, A2, B1, B2, C1, C2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_34);
  and(i_31, i_32, i_33);
  or(i_32, A1, A2);
  or(i_33, B1, B2);
  or(i_34, C1, C2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (C1 == 1'b1) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) && (C2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1) || (A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) || (A1 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1) || (A2 == 1'b1) && (B1 == 1'b0) && (C1 == 1'b1) && (C2 == 1'b1)) (B2 => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C2 == 1'b0)) (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b0) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b1) && (C1 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b1) && (B2 == 1'b1) && (C1 == 1'b0)) (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI22_X1 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, i_20);
  or(i_19, A1, A2);
  or(i_20, B1, B2);

  specify
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI22_X2 (A1, A2, B1, B2, ZN);

  input A1;
  input A2;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_18);
  and(i_18, i_19, i_20);
  or(i_19, A1, A2);
  or(i_20, B1, B2);

  specify
    if((A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B2 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b0) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (B1 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OAI33_X1 (A1, A2, A3, B1, B2, B3, ZN);

  input A1;
  input A2;
  input A3;
  input B1;
  input B2;
  input B3;
  output ZN;

  not(ZN, i_30);
  and(i_30, i_31, i_33);
  or(i_31, i_32, A3);
  or(i_32, A1, A2);
  or(i_33, i_34, B3);
  or(i_34, B1, B2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    if((A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A2 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b1) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (A3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b1) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b1)) (A3 => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B2 == 1'b0) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B2 == 1'b0) && (B3 == 1'b0)) (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B1 == 1'b0) && (B3 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B1 == 1'b0) && (B3 == 1'b0)) (B2 => ZN) = (0.1, 0.1);
    (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b0) && (B1 == 1'b0) && (B2 == 1'b0) || (A1 == 1'b0) && (A2 == 1'b0) && (A3 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
    if((A1 == 1'b0) && (A2 == 1'b1) && (A3 == 1'b1) && (B1 == 1'b0) && (B2 == 1'b0)) (B3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR2_X1 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  or(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR2_X2 (A1, A2, ZN);

  input A1;
  input A2;
  output ZN;

  or(ZN, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR3_X1 (A1, A2, A3, ZN);

  input A1;
  input A2;
  input A3;
  output ZN;

  or(ZN, i_6, A3);
  or(i_6, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module OR4_X1 (A1, A2, A3, A4, ZN);

  input A1;
  input A2;
  input A3;
  input A4;
  output ZN;

  or(ZN, i_12, A4);
  or(i_12, i_13, A3);
  or(i_13, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
    (A3 => ZN) = (0.1, 0.1);
    (A4 => ZN) = (0.1, 0.1);
  endspecify

endmodule

module XNOR2_X1 (A, B, ZN);

  input A;
  input B;
  output ZN;

  not(ZN, i_46);
  xor(i_46, A, B);

  specify
    if((B == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0)) (B => ZN) = (0.1, 0.1);
  endspecify

endmodule

module XOR2_X1 (A, B, Z);

  input A;
  input B;
  output Z;

  xor(Z, A, B);

  specify
    if((B == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b1)) (A => Z) = (0.1, 0.1);
    if((A == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0)) (B => Z) = (0.1, 0.1);
  endspecify

endmodule