`timescale 1ns / 1ps
// Engineer: B DEEPIKA 
// Design Name: binary to gray code converter
// Module Name: binary_gray
///////////////////////////
module binary_gray(input [3:0]b,output [3:0]g);
assign 
g[3]=b[3],
g[2]=b[3]^b[2],
g[1]=b[2]^b[1],
g[0]=b[1]^b[0];
endmodule
