`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: 1x8 demux using 1x4 
// Module Name: demux_1x8_using_1x4

module demux_1x8_using_1x4(input in,input [2:0]sel,output [7:0]out);
wire w1,w2;
demux_1x2_condition  u3(  in,sel[2],w1,w2);
demux_1x4_condition  u1( w1,sel[1:0],out[3:0]);
demux_1x4_condition  u2( w2,sel[1:0],out[7:4]);

endmodule

module demux_1x4_condition( input in,[1:0]sel,output[3:0]out);
assign out[0]=sel[1]?(sel[0]?0:0):(sel[0]?0:in);
assign out[1]=sel[1]?(sel[0]?0:0):(sel[0]?in:0);
assign out[2]=sel[1]?(sel[0]?0:in):(sel[0]?0:0);
assign out[3]=sel[1]?(sel[0]?in:0):(sel[0]?0:0);
endmodule
module demux_1x2_condition( input in,sel,output out0,out1);
assign out0=sel?0:in;
assign out1=sel?in:0;
endmodule
