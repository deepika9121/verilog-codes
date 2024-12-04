`timescale 1ns / 1ps
// Engineer:    B DEEPIKA
// Module Name: sync_downcounter_dff


module sync_downcounter_dff(input clk,input reset,output reg[1:0]q  );
always@(posedge clk)
begin
if(reset)
begin
q<=2'b00;
end
else
begin
q[1]<=~(q[1]^q[0]);
q[0]<=~q[0];
end
end
endmodule
