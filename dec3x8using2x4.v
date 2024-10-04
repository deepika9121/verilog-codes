`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: dec3x8using2x4
// Module Name: dec3x8using2x4
////////////////////////////////////


module dec3x8using2x4(input [2:0]in,output wire [7:0]out);
wire en0,en1;
assign en0=~in[2];
assign en1=in[2];
decoder2x4dataflow u1(in[1:0],en0,out[3:0]);
decoder2x4dataflow u2(in[1:0],en1,out[7:4]);
endmodule

module decoder2x4dataflow(input [1:0]in,output en,output wire [3:0]out);
assign out[3]=en&(in[1]&in[0]);
assign out[2]=en&(in[1]&~in[0]);
assign out[1]=en&(~in[1]&in[0]);
assign out[0]=en&(~in[1]&~in[0]);
endmodule