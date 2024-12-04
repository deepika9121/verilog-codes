`timescale 1ns / 1ps
/////////////////
// Engineer: B DEEPIKA 
// Module Name: edge_detect
/////////////////////////


module edge_detect(input clk,input d,output pos_edge,output neg_edge,output both_edge );
reg q;
always@(posedge clk)
begin
q<=d;
end
assign pos_edge=~q&d;
assign neg_edge=q&~d;
assign both_edge=q^d;
endmodule
