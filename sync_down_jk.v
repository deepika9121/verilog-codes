`timescale 1ns / 1ps
////
// Engineer: B DEEPIKA
// Module Name: sync_down_jk


module sync_down_jk(input clk,input reset,
                        output reg [1:0] q  );
reg [1:0]q0;
reg [1:0]q1;

always@(posedge clk)
begin
if(reset)
begin
q<=2'b00;
q1<=2'b00;
q0<=2'b00;
end
else
begin
q1[1]=~(q[0]^q[1]);
q1[0]=q[1]^q[0];
q0[1]=~q[0];
q0[0]=q[0];
 q[1]<=(q1[1]&~q[1])|(~q1[0]&q[1]);
q[0]<=(q0[1]&~q[0])|(~q0[0]&q[0]);
end
end
endmodule
