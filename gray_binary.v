`timescale 1ns / 1ps
///////////////
// Engineer: B DEEPIKA 
// Design Name:gray to binary code converter
// Module Name: gray_binary
///////////////////////////
module gray_binary(input [3:0]g,output [3:0]b);
assign 
b[3]=g[3],
b[2]=g[3]^g[2],
b[1]=g[3]^g[2]^g[1],
b[0]=g[3]^g[2]^g[1]^g[0];
endmodule
