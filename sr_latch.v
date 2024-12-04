`timescale 1ns / 1ps
////////////
// Engineer: sr_latch
// Module Name: sr_latch
//////////////////
module sr_latch(input clk ,input s,r,output reg q,output wire qbar);
always@*
begin
 if(clk)
 begin
 case({s,r})
 2'b00:q=q;
 2'b01:q=1'b0;
 2'b10:q=1'b1;
 2'b11:q=1'bx;
 default:q=1'bx;
 endcase
 end
 else
 q=q;
 
end
assign qbar=~q;
endmodule
