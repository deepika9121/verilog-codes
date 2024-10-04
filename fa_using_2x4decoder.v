`timescale 1ns / 1ps
///////////: 
// Engineer: B DEEPIKA
// Design Name:full adder using 2x4 decoder 
// Module Name: fa_using_2x4decoder
//////////////////////////////////////////


module fa_using_2x4decoder(input a,b,c,output sum,carry );
wire o0,o1,o2,o3,o4,o5,o6,o7;
decoder2x4dataflow u1(a,b,o0,o1,o2,o3);
assign out=o1|o2;
decoder2x4dataflow u2(out,c,o4,o5,o6,o7);
assign sum=o5|o6;
assign carry=o7|o3;
endmodule
module decoder2x4dataflow(input in0,in1,output wire out0,out1,out2,out3);
assign out3=in1&in0;
assign out2=in1&~in0;
assign out1=~in1&in0;
assign out0=~in1&~in0;
endmodule