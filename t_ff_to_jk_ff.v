`timescale 1ns / 1ps
/////////// 
// Engineer: B DEEPIKA
// Module Name: t_ff_to_jk_ff
//////
module t_ff_to_jk_ff(input clk,input reset,input j,k,output reg q,output wire qbar);
reg t;
always@(posedge clk)
begin
    if(reset)
    q<=1'b0;
    else
    begin
    t=(j&~q)|(k&q);
    case(t)
    1'b0:q<=q;
    1'b1:q<=~q;
    endcase
    end
end
assign qbar=~q;
endmodule

