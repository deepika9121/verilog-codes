`timescale 1ns / 1ps
///////////////
// Engineer: B DEEPIKA
// Design Name: fs_using_4x1mux
// Module Name: fs_using_4x1mux
///////////////////////////////////////////


module fs_using_4x1mux(input a,b,c,output wire diff, borrow);

mux4X1conditional u1(a,~a,~a,a,b,c,diff);
mux4X1conditional u2(0,~a,~a,1,b,c,borrow);
endmodule
module mux4X1conditional(input i0,i1,i2,i3,s1,s0,output reg out);
always @(*)
begin
out= s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule