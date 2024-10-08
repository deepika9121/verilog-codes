`timescale 1ns / 1ps
////////////////////
// Engineer: B DEEPIKA
// Design Name: halfsubtractor_1x2_demux
// Module Name: halfsubtractor_1x2_demux


module halfsubtractor_1x2_demux(input a,b,output wire diff,borrow);
wire o1o2,o3,o4,o5,o6,o7,o8;
demux_1x2_condition u1(b,a,borrow,o1);
demux_1x2_condition u2(1,borrow,o2,o3);
demux_1x2_condition u3(a,b,o4,o5);
demux_1x2_condition u4(o2,o4,o6,o7);
demux_1x2_condition u5(1,o6,diff,o8);

endmodule

module demux_1x2_condition( input in,sel,output out0,out1);
assign out0=sel?0:in;
assign out1=sel?in:0;
endmodule
