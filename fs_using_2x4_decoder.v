`timescale 1ns / 1ps
///////////////////
// Engineer:B DEEPIKA
// Design Name: fs_using_2x4_decoder
// Module Name: fs_using_2x4_decoder
/////////////////////////////////


module fs_using_2x4_decoder(input a,b,c,output wire diff, borrow);
wire out,o0,o1,o2,o3,o4,o5,o6,o7;
decoder2x4dataflow u1(b,c,o0,o1,o2,o3);
assign out=o1|o2;
decoder2x4dataflow u2(out,a,o4,o5,o6,o7);
assign diff=o5|o6;
assign borrow=o6|o3;
endmodule
module decoder2x4dataflow(input in1,in0,output wire out0,out1,out2,out3);
assign out0=~in1&~in0;
assign out1=~in1&in0;
assign out2=in1&~in0;
assign out3=in1&in0;
endmodule