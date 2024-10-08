`timescale 1ns / 1ps
///////////////
// Engineer: B DEEPIKA
// Design Name: halfsubtractor_1x4demux
// Module Name: halfsubtractor_1x4demux
//////////////////////////


module halfsubtractor_1x4demux(input a,b,output wire diff,borrow);
wire out0,out2,out3;
demux_1x4_dataflow u1(1,a,b,out0,borrow,out2,out3);
or u2(diff,borrow,out2);
endmodule

module demux_1x4_dataflow(input in,sel1,sel0,output out0,out1,out2,out3);
assign out0=~sel1&~sel0&in;
assign out1=~sel1&sel0&in;
assign out2=sel1&~sel0&in;
assign out3=sel1&sel0&in;
endmodule