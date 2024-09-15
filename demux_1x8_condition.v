`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: demux 1x8 using condition statements
// Module Name: demux_1x8_condition
////////////////////////////////////


module demux_1x8_condition(input in,[2:0]sel,output [7:0]out);
assign out[0]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:in));
assign out[1]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?in:0));
assign out[2]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:in):(sel[0]?0:0));
assign out[3]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:0)):(sel[1]?(sel[0]?in:0):(sel[0]?0:0));

assign out[4]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?0:in)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[5]=sel[2]?(sel[1]?(sel[0]?0:0):(sel[0]?in:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[6]=sel[2]?(sel[1]?(sel[0]?0:in):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));
assign out[7]=sel[2]?(sel[1]?(sel[0]?in:0):(sel[0]?0:0)):(sel[1]?(sel[0]?0:0):(sel[0]?0:0));

endmodule
