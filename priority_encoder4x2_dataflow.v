`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: priority encode 4x2 using dataflow
// Module Name: priority_encoder4x2_dataflow
//////////////////////////


module priority_encoder4x2_dataflow(input [3:0]in,output [1:0] out,output valid);
assign out[1]=in[2]|in[3];
assign out[0]=in[3]|(~in[2]&in[1]);
assign valid=in[0]|in[1]|in[2]|in[3];
endmodule
