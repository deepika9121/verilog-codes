`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x4 using 1x2
// Module Name: demux_1x4_using_1x2

module demux_1x4_using_1x2(input in,[1:0]sel,output[3:0]out);
wire [1:0]w;
demux_1x2   u1( in,sel[1],w[1:0]);
demux_1x2    u2( w[0],sel[0],out[1:0]);
demux_1x2    u3( w[1],sel[0],out[3:2]);
endmodule

module demux_1x2( input in,sel,output[1:0]out);
assign out[0]=sel?0:in;
assign out[1]=sel?in:0;
endmodule
