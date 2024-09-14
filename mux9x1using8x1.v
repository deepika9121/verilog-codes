`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 9x1 mux using 8x1 mux
// Module Name: mux_9x1_using_8x1mux
///////////////////////////////////////////////

module mux9x1using8x1(input i0,i1,i2,i3,i4,i5,i6,i7,i8,input s3,s2,s1,s0,output wire out);
wire t1;
muxx8x1 w1(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,t1);
muuxx2x1 w2(t1,i8,s3,out);
endmodule
module muuxx2x1(input in0,in1,input sel,output out);
assign out=sel?in1:in0;
endmodule

module muxx8x1(input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,output out);
assign out=s2?   (s1?
                         (s0?(i7):(i6)):(s0?(i5):(i4))):
                   (s1?
                         (s0?(i3):(i2)):(s0?(i1):(i0)));
endmodule


