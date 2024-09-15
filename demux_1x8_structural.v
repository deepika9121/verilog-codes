`timescale 1ns / 1ps
// Engineer:    B DEEPIKA
// Design Name: demux 1x8 structural
// Module Name: demux_1x8_structural
//////////////////////////////////////
module demux_1x8_structural(input in,input[2:0]sel,output[7:0]out);
and
w0(out[0],~sel[2],~sel[1],~sel[0],in),
w1(out[1],~sel[2],~sel[1],sel[0],in),
w2(out[2],~sel[2],sel[1],~sel[0],in),
w3(out[3],~sel[2],sel[1],sel[0],in),

w4(out[4],sel[2],~sel[1],~sel[0],in),
w5(out[5],sel[2],~sel[1],sel[0],in),
w6(out[6],sel[2],sel[1],~sel[0],in),
w7(out[7],sel[2],sel[1],sel[0],in);
endmodule

