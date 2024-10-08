`timescale 1ns / 1ps
////////////////
// Engineer: B DEEPIKA
// Design Name: halfsubtractor_decoder
// Module Name: halfsubtractor_decoder
//////////////////////


module halfsubtractor_decoder(input a,b,output wire diff,borrow);
wire out0,out1,out2;
decoder2x4dataflow u1(a,b,out0,borrow,out1,out2);
or u2(diff,borrow,out1);
endmodule

module decoder2x4dataflow(input in1,in0,output wire out0,out1,out2,out3);
assign out3=in1&in0;
assign out2=in1&~in0;
assign out1=~in1&in0;
assign out0=~in1&~in0;
endmodule