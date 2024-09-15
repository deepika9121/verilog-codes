`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x2 structural
// Module Name: demux_1x2_structural
//////////////////////////////////
module demux_1x2_structural(input in,sel,output[1:0]out);
wire sb;
not u1(sb,sel);
and u2(out[0],in,sb);
and u3(out[1],in,sel);
endmodule
