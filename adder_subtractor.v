`timescale 1ns / 1ps
//
// Engineer: B DEEPIKA
// Design Name: 4 bit adder and subtractor
// Module Name: adder and subtractor 4bit
///////////////////////////////////////////////////////
`include "fulladderusinghalfadder.v"
module adder_subtractor(a,b,ctr,sum,c);
input [3:0]a,b;
input ctr;
output [3:0]sum ,c;
wire w0,w1,w2,w3;
xor u1(w0,ctr,b[0]);
xor u2(w1,ctr,b[1]);
xor u3(w2,ctr,b[2]);
xor u4(w3,ctr,b[3]);

    fulladderusinghalfadder a1(a[0],w0,ctr, sum[0],c[0]);
    fulladderusinghalfadder a2(a[1],w1,c[0], sum[1],c[1]);
    fulladderusinghalfadder a3(a[2],w2,c[1], sum[2],c[2]);
    fulladderusinghalfadder a4(a[3],w3,c[2], sum[3],c[3]);
endmodule
