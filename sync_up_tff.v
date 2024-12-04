`timescale 1ns / 1ps
// Design Name: B DEEPIKA
// Module Name: sync_up_tff
///////////////////

module sync_up_tff(input clk,input reset,output reg[1:0]q  );
reg [1:0]t;
always@(posedge clk)
begin
if(reset)
begin
q<=2'b00;
t<=2'b01;
end
else
begin
t[1]=q[0];
q[1]<=q[1]^t[1];
q[0]<=q[0]^t[0];
end
end
endmodule
