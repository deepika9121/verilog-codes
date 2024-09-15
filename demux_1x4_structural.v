`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x4 structural model
// Module Name: demux_1x4_structural


module demux_1x4_structural(input in,[1:0]sel,output[3:0]out);
wire s1b,s2b;
not 
u1(s1b,sel[0]),
u2(s2b,sel[1]);
and 
w1(out[0],s2b,slb,in),
w2(out[1],s2b,sel[0],in),
w3(out[2],sel[1],s1b,in),
w4(out[3],sel[1],sel[0],in);
endmodule

