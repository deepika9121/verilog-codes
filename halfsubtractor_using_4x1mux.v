`timescale 1ns / 1ps
///
// Engineer: B DEEPIKA
// Design Name: halfsubtractor_using_4x1mux
// Module Name: halfsubtractor_using_4x1mux
/////////////////////////////


module halfsubtractor_using_4x1mux(input a,b,output wire diff,borrow);
mux4X1conditional u1(0,1,1,0,a,b,diff);
mux4X1conditional u2(0,1,0,0,a,b,borrow);
endmodule
module mux4X1conditional(input i0,i1,i2,i3,s1,s0,output reg out);
always @(*)
begin
out= s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule
