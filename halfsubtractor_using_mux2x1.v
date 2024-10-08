`timescale 1ns / 1ps
///////////
// Engineer: B DEEPIKA
// Design Name: halfsubtractor usng mux2x1
// Module Name: halfsubtractor_using_mux2x1
module halfsubtractor_using_mux2x1(input a,b,output wire diff,borrow);
wire bbar;
mux2x1 u1(1,0,b,bbar); 
mux2x1 u2(b,bbar,a,diff); 
mux2x1 u3(b,0,a,borrow); 
endmodule
module mux2x1(input i0,i1,sel,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule
