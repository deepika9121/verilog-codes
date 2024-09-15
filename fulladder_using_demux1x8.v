`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: full adder using demux1x8
// Module Name: fulladder_using_demux1x8


module fulladder_using_demux1x8(input in,[2:0]sel,output [7:0]out,output sum,carry);
assign out[0]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:in));
assign out[1]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?in:0));
assign out[2]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:in):(sel[0]?0:0));
assign out[3]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?in:0):(sel[0]?0:0));

assign out[4]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:in)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[5]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?in:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[6]=sel[2]?(sel[1]?(sel[0]?0:in):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[7]=sel[2]?(sel[1]?(sel[0]?in:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign sum=out[1]|out[2]|out[4]|out[7];
assign carry=out[3]|out[5]|out[6]|out[7];
endmodule