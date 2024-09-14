`timescale 1ns / 1ps
/////////////////////////////////
// Engineer: B DEEPIKA
// Design Name: 8x1 mux using 4x1 mux
// Module Name: mux_8x1_using_4x1mux
///////////////////////////////////////////////


module mux8x1using4x1(input i0,i1,i2,i3,i4,i5,i6,i7,input s2,s1,s0,output wire out);
wire t1,t2,s2b;
not w3(s2b,s2);
mux4x1 w8(i0,i1,i2,i3,s2b,s1,s0,t1);
mux4x1 w9(i4,i5,i6,i7,s2,s1,s0,t2);
or w4(out,t1,t2);
endmodule

module mux4x1(input i0,i1,i2,i3,s2,s1,s0,output out);
assign out=s1?
            (s0?(s2&i3):(s2&i2)):
            (s0?(s2&i1):(s2&i0));
endmodule