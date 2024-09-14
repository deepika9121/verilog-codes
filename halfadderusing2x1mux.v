`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: B DEEPIKA
// Design Name: half adder using 2x1 mux
// Module Name: halfadderusing2x1mux
////////////////////////////////////////
module halfadderusing2x1mux(input a,b,sum,output carry);

mux2x1 sum1(a,~a,b,sum);
mux2x1 c1(0,a,b,carry);

endmodule

module mux2x1(input i0,i1,s,output reg out);
always@*
begin
out=s?i1:i0;
end
endmodule
