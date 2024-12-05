`timescale 1ns / 1ps
//////////// 
// Engineer: B DEEPIKA
// Module Name: d_ff_to_jk_ff
////////////////////////////////
module d_ff_to_jk_ff(input clk,input reset,
                           input j, input k,
                        output reg q,output wire qbar);
reg d;                        
always@(posedge clk)
begin
    if(reset)
    q<=1'b0;
    else
    begin
    d=(j&qbar)|(~k&q);
    q<=d;
    end
                                               
end
assign qbar=~q;                        
endmodule
