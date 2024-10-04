`timescale 1ns / 1ps
//////////////////////// 
// Engineer: B DEEPIKA
// Design Name: fa using 3x8 decoder
// Module Name: fa_using3x8decoder
///////////////////////////


module fa_using3x8decoder(input a,b,c,output sum,carry);
wire [7:0]out;
assign out[0]=~a&~b&~c;
assign out[1]=~a&~b&c;
assign out[2]=~a&b&~c;
assign out[3]=~a&b&c;
assign out[4]=a&~b&~c;
assign out[5]=a&~b&c;
assign out[6]=a&b&~c;
assign out[7]=a&b&c;
assign sum=out[1]|out[2]|out[4]|out[7];
assign carry=out[3]|out[5]|out[6]|out[7];
endmodule