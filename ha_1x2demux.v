`timescale 1ns / 1ps
/////
// Engineer: B DEEPIKA
// Design Name: half adder 1x2 demux
// Module Name: ha_1x2demux
///////////////////////////////////////


module ha_1x2demux(input a,b,output wire s,c  );
wire out0,out1,out2,out3,out4,out5,out6,out7;
 demux_1x2_dataflow u1(b,a,out0,out1 );
 demux_1x2_dataflow u2(1,out0,out2,out3  );
 demux_1x2_dataflow u3(a,b,out4,c );
 demux_1x2_dataflow u4(out2,out4,out5,out6 );
 demux_1x2_dataflow u5(1,out5,s,out7);
endmodule

module demux_1x2_dataflow( input in,sel,output out0,out1);
assign out0=in&~sel;
assign out1=in&sel;
endmodule
