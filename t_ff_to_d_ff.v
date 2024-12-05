`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: t_ff_to_d_ff
////////////////////////


module t_ff_to_d_ff(input clk,input reset,input d,output reg q,output wire qbar);
reg t;
always@(posedge clk)
begin
    if(reset)
    q<=1'b0;
    else
    begin
    t=d^q;
    case(t)
    1'b0:q<=q;
    1'b1:q<=~q;
    endcase
    end
end
assign qbar=~q;
endmodule

