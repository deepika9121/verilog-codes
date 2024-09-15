`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x4 dataflow modek
// Module Name: demux_1x4_dataflow

module demux_1x4_dataflow(input in,[1:0]sel,output[3:0]out);
assign out[0]=~sel[1]&~sel[0]&in;
assign out[1]=~sel[1]&sel[0]&in;
assign out[2]=sel[1]&~sel[0]&in;
assign out[3]=sel[1]&sel[0]&in;
endmodule