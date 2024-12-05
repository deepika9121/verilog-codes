`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Module Name: jk_latch_using_2x1mux
///////////////////


module jk_latch_using_2x1mux(input clk,input reset,
                                input j,k,output reg q,output wire qbar);
reg q0,q1;                                
always@(posedge clk)
begin
        if(reset)
        q<=1'b0;
        else
        begin
        q0=k?0:1;
        q1=q?q0:j;
        q=clk?q1:q;
        end
      
end                                
assign qbar=~q;                               
endmodule