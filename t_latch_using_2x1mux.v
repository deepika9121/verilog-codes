`timescale 1ns / 1ps
////////////////
// Engineer: B DEEPIKA
// Module Name: t_latch_using_2x1mux
//////////////////////////
module t_latch_using_2x1mux(input clk,input reset,input t,
                              output reg q,output wire qbar );
 reg q0,q1;                             
always@(posedge clk)
begin
        if(reset)
        q<=0;
         else
         begin
         q0=q?0:1;
         q1=t?q0:q;
         q=clk?q1:0;
         end

end                              
 assign qbar=~q;                             
endmodule
