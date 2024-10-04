`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name:  priority encoder 4x2 using 2x1
// Module Name: priorityencoder_4x2_2x1
module priorityencoder_4x2_2x1(input [3:0]in,output [1:0]out,output valid);
wire out1,out2,valid1,valid2;
priority_encode_2x1_dataflow   u1(in[1:0],out1,valid1);
priority_encode_2x1_dataflow  u2(in[3:2],out2,valid2);
assign out[0]=(out2)|(~in[2]&out1);
assign out[1]=valid2;
assign valid=valid1|valid2;
endmodule

module priority_encode_2x1_dataflow(input [1:0]in,output  out,valid);
assign out=in[1];
assign valid=in[1]|in[0];
endmodule
