`timescale 1ns / 1ps
/////////////////
// Engineer: B DEEPIKA
// Module Name: sync_updown_dff


module sync_updown_dff(input clk,input m,input reset,output reg [1:0]q );
always@(posedge clk)
begin
    if(reset)
    begin
        q<=2'b00;
    end
    else
    begin
    q[1]<=m^q[0]^q[1];
    q[0]<=~q[0];
    end

end
endmodule
