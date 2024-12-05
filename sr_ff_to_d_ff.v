`timescale 1ns / 1ps
/////////////
// Engineer: B DEEPIKA
// Module Name: sr_ff_to_d_ff
/////////////////////////

module sr_ff_to_d_ff(input clk,input reset ,input d,output reg q,output wire qbar);
reg s,r;
always@(posedge clk)
begin
  if(reset)
  q<=1'b0;
 else 
  begin
   s=d;
   r=~d;
   case({s,r})
   2'b00:q<=q;
   2'b01:q<=1'b0;
   2'b10:q<=1'b1;
   2'b11:q<=1'bx;
   default :q<=1'bx;
   endcase
   end
end
assign qbar=~q;
endmodule

