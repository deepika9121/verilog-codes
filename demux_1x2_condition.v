`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x2 condition
// Module Name: demux_1x2_condition
/////////////////////////////////////////////////////////


module demux_1x2_condition( input in,sel,output[1:0]out);
assign out[0]=sel?0:in;
assign out[1]=sel?in:0;
endmodule
