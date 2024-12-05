`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: d_ff_to_t_ff
/////////////////////////////////
module d_ff_to_t_ff(input clk,input reset,input t,output reg q,output wire qbar);
reg d;
always@(posedge clk)
begin
    if(reset)
    begin
    q<=1'b0;
    end
    else
    begin
    d=t^q;
    q<=d;
    end
end
assign qbar=~q;
endmodule
