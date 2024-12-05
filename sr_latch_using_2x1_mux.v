`timescale 1ns / 1ps
///////////////////////
// Engineer: B DEEPIKA
// Module Name: sr_latch_using_2x1_mux
//////////////////////////////////////


module sr_latch_using_2x1_mux(input clk,input reset,input s,r,
                              output reg q,output wire qbar );
 reg q0,q1;                             
always@(posedge clk)
begin
        if(reset)
        q<=0;
         else
         begin
         q0=r?0:q;
         q1=s?1:q0;
         q=clk?q1:q;
         end

end                              
 assign qbar=~q;                             
endmodule
