`timescale 1ns / 1ps
//
// Engineer: B DEEPIKA
// Design Name: 4 bit ripple carry adder
// Module Name: ripple_carry_adder4bit
///////////////////////////////////////////////////////
`include "fulladderusinghalfadder.v"
module ripple_carry_adder4bit(a,b,cin,sum,c);
input [3:0]a,b;
input cin;
output [3:0]sum ,c;
    fulladderusinghalfadder a1(a[0],b[0],cin, sum[0],c[0]);
    fulladderusinghalfadder a2(a[1],b[1],c[0], sum[1],c[1]);
    fulladderusinghalfadder a3(a[2],b[2],c[1], sum[2],c[2]);
    fulladderusinghalfadder a4(a[3],b[3],c[2], sum[3],c[3]);
endmodule
