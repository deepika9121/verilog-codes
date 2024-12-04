`timescale 1ns / 1ps
///////////////
// Engineer:B DEEPIKA
// Module Name: JK_FF
///////////////////////////////////
module JK_FF(input clk,input j,k,output reg q,output wire qbar);
always@(negedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0; //non blocking assignment
2'b10:q<=1'b1;
2'b11:q<=~q;
default :q<=1'bx;
endcase
end
assign qbar=~q;
endmodule
