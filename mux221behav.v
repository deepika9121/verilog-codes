`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////// 
// Engineer: B.Deepika
// Create Date: 08/31/2024 08:57:48 PM
// Design Name: 
// Module Name: mux221 
// Project Name: mux in behavioural  model
///////////////////////////////////////////////////

module mux221behav( input i0,i1,s,output reg o);

always@(*)
begin
if(s)
o=i1;
else
o=i0;
end
endmodule
