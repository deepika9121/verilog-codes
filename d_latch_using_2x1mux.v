`timescale 1ns / 1ps
///////// 
// Engineer: B DEEPIKA
// Module Name: d_latch_using_2x1mux
///////////////////////////////


module d_latch_using_2x1mux(input clk,input reset, input d,output reg q,output wire qbar );
always@(posedge clk)
begin
    if(reset)
    q<=1'b0;
    else
    q=clk?d:q;

end
assign qbar=~q;
endmodule
