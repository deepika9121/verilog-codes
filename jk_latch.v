`timescale 1ns / 1ps
//////////
// Engineer: B DEEPIKA
// Module Name: jk_latch
////////////////////////////////////////


module jk_latch(input clk ,input j,k,output reg q,output wire qbar);
always@*
if(clk)
begin
case({j,k})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=~q;
default:q=1'bx;
endcase
end
else
q=q;
assign qbar=~q;
endmodule
