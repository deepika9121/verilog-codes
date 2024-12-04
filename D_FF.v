`timescale 1ns / 1ps
///////// 
// Engineer: B DEEPIKA
// Module Name: D_FF
///////////////////////////


module D_FF(input clk,input d,output reg q,output wire qbar);
always@(negedge clk)
begin
q<=d;
end
assign qbar=~q;
endmodule



