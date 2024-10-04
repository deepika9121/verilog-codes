`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: halfadder using 4x1mux
// Module Name: ha_using4x1mux
//////////////////////////////////////////////////


module ha_using4x1mux(input a,b,output wire s,c);
 mux4X1conditional u1(a,b,0,1,1,0,s);
 mux4X1conditional u2(a,b,0,0,0,1,c);
endmodule
module mux4X1conditional(input s0,s1,i0,i1,i2,i3,output reg out);
always @(*)
begin
out= s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule