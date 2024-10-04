`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: mux2x1 conditional
// Module Name: mux2x1conditional
/////////////////////////////////////////
module mux2x1conditional(input sel,i0,i1,output reg out);
always@*
begin
out=sel?i1:i0;
end
endmodule

