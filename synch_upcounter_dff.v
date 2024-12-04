`timescale 1ns / 1ps 

// Design Name: B DEEPIKA
// Module Name: synch_upcounter_dff
///////////////////


module synch_upcounter_dff(input clk,input reset,output reg[1:0]q  );
always@(posedge clk)
begin
if(reset)
begin
q<=2'b00;
end
else
begin
q[1]<=q[1]^q[0];
q[0]<=~q[0];
end
end
endmodule
