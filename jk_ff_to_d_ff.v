`timescale 1ns / 1ps
/////////////////////
// Engineer: B DEEPIKA
// Design Name: 
// Module Name: jk_ff_to_d_ff
/////////////////////////////


module jk_ff_to_d_ff(input clk,input reset,input d,output reg q,output wire qbar);
reg j,k;
always@(posedge clk)
begin
    if(reset)
    q<=1'b0;
    else
    begin
    j=d;
    k=~d;
    case({j,k})
    2'b00:q<=q;
    2'b01:q<=1'b0;
    2'b10:q<=1'b1;
    2'b11:q<=~q;
    default :q<=1'bx;
    endcase
    end
end
assign qbar=~q;
endmodule


