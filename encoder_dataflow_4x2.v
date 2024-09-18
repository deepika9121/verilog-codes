`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: encoder using dataflow 4x2
// Module Name: encoder_dataflow_4x2
////////////////////////////////////


module encoder_dataflow_4x2(input [3:0]in,output [1:0]out);
assign out[0]=in[3]|in[1];
assign out[1]=in[3]|in[2];
endmodule
