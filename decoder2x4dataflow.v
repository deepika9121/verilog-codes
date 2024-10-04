`timescale 1ns / 1ps
///////////
// Engineer: B DEEPIKA
// Design Name: decoder2x4 using dataflowstatements
// Module Name: decoder2x4dataflow
////////////////////////////////


module decoder2x4dataflow(input [1:0]in,output wire [3:0]out);
assign out[3]=in[1]&in[0];
assign out[2]=in[1]&~in[0];
assign out[1]=~in[1]&in[0];
assign out[0]=~in[1]&~in[0];
endmodule