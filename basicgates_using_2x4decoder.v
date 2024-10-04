`timescale 1ns / 1ps
///////////
// Engineer: B DEEPIKA
// Design Name: basic gate using decoder2x4 
// Module Name: basicgates_using_2x4decoder
////////////////////////////////
module basicgates_using_2x4decoder(input [1:0]in,output wire [3:0]out,
output andgate,orgate,nandgate,norgate,exorgate,exnorgate);
assign out[3]=in[1]&in[0];
assign out[2]=in[1]&~in[0];
assign out[1]=~in[1]&in[0];
assign out[0]=~in[1]&~in[0];
assign andgate=out[3];
assign orgate=~out[0];
assign exorgate=out[2]|out[1];
assign norgate=out[0];
assign exnorgate=out[3]|out[0];
assign nandgate=~out[3];
endmodule
