`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: half adder 2x1 mux
// Module Name: ha_2x1mux


module ha_2x1mux(input a,b,output wire s,c );
wire bbar;
 mux2x1 u1(1,0,b,bbar);
 mux2x1 u2( b,bbar,a,s);
 mux2x1 u3( 0,b,a,c);
endmodule

module mux2x1(input i0,i1,sel,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule
