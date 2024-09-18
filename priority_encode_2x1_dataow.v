`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 10:54:50 PM
// Design Name: priority encoder 2x1 using dataflow
// Module Name: priority_encode_2x1_dataflow
//////////////////////////////////////////


module priority_encode_2x1_dataflow(input [1:0]in,output  out,valid);
assign out=in[1];
assign valid=in[1]|in[0];
endmodule
