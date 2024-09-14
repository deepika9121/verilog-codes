`timescale 1ns / 1ps 
// Engineer: B EEPIKA 
// Module Name: mux4X1conditional
// Project Name: 4x1 mux using conditional statements
//////////////////////////////////////////////////////////////////////////////////


module mux4X1conditional(input [1:0]s,[3:0]i,output reg out);
always @(*)
begin
out= s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
end
endmodule
