`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: demux 1x8 dataflow
// Module Name: demux_1x8_dataflow
////////////////////////////////////


module demux_1x8_dataflow(input in,[2:0]sel,output[7:0]out);
assign out[0]=~sel[2]&~sel[1]&~sel[0]&in;
assign out[1]=~sel[2]&~sel[1]&sel[0]&in;
assign out[2]=~sel[2]&sel[1]&~sel[0]&in;
assign out[3]=~sel[2]&sel[1]&sel[0]&in;
assign out[4]=sel[2]&~sel[1]&~sel[0]&in;
assign out[5]=sel[2]&~sel[1]&sel[0]&in;
assign out[6]=sel[2]&sel[1]&~sel[0]&in;
assign out[7]=sel[2]&sel[1]&sel[0]&in;
endmodule