`timescale 1ns / 1ps
/////////////////////
// Engineer: B DEEPIKA
// Module Name: T_FF
/////////////////////////////
module T_FF(input clk,input t,output reg q,output wire qbar );
always@(posedge clk)
begin 
case(t)
1'b0:q<=q;
1'b1:q<=~q;
endcase
end
assign qbar=~q;
endmodule
