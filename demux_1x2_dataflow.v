`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x2 using dataflow
// Module Name: demux_1x2_dataflow


module demux_1x2_dataflow( input in,sel,output[1:0]out);
assign out[0]=in&~sel;
assign out[1]=in&sel;
endmodule
