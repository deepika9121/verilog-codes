`timescale 1ns / 1ps
///////////////
// Engineer: B DEEPIKA
// Module Name: T_FF_RESET
//////////////////////////
module T_FF_RESET(input clk,input t,input reset,output reg q,output wire qbar );
always@(posedge clk or posedge reset)//async signal
begin 
if(reset)
begin
q<=1'b1;
end
else
begin
case(t)
1'b0:q<=q;
1'b1:q<=~q;
endcase
end
end
assign qbar=~q;
endmodule
