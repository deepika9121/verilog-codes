`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x8 using 1x2 
// Module Name: demux_1x8_using_1x2
module demux_1x8_using_1x2(input in,input [2:0]sel,output [7:0]out);
wire w1,w2,w3,w4,w5,w6;
demux_1x2_condition  u1( in,sel[2],w1,w2);
demux_1x2_condition  u2( w1,sel[1],w3,w4);
demux_1x2_condition  u3( w2,sel[1],w5,w6);
demux_1x2_condition  u4( w3,sel[0],out[0],out[1]);
demux_1x2_condition  u5( w4,sel[0],out[2],out[3]);
demux_1x2_condition  u6( w5,sel[0],out[4],out[5]);
demux_1x2_condition  u7( w6,sel[0],out[6],out[7]);
endmodule

module demux_1x2_condition( input in,sel,output out0,out1);
assign out0=sel?0:in;
assign out1=sel?in:0;
endmodule
