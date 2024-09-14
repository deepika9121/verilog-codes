`timescale 1ns / 1ns
// Engineer: B DEEPIKA
// Design Name: 5x1 mux using 4x1 mux
// Module Name: mux_5x1_using_4x1mux
///////////////////////////////////////////////
module mux5x1using4x1(input i0,i1,i2,i3,i4,input s2,s1,s0,output wire out);
wire t;
muxx4x1 w1(i0,i1,i2,i3,s1,s0,t);
muuxx2x1 w2(t,i4,s2,out);
endmodule
module muxx4x1(input i0,i1,i2,i3,s1,s0,output out);
assign out=s1?(s0?i3:i2):(s0?i1:i0);
endmodule

module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule
