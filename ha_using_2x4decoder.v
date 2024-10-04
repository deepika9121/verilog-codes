`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: halfadder using 2x4 decoder
// Module Name: ha_using_2x4decoder
////////////////////////////

module ha_using_2x4decoder(input a,b,output wire s,c);
wire [2:0]out;
assign c=a&b;
assign out[2]=a&~b;
assign out[1]=~a&b;
assign out[0]=~a&~b;
assign s=out[2]|out[1];
endmodule