`timescale 1ns / 1ps 
// Engineer: B DEEPIKA
// Design Name: encoder code using case statements
// Module Name: encoder_case4x2
///////////////////////////////////////


module priority_encoder_4x2(input [3:0]in,output reg [1:0]out);
always@*
begin
casex(in)
4'b0001:out=2'b00;
4'b001x:out=2'b01;
4'b01xx:out=2'b10;
4'b1xxx:out=2'b11;
default:out=2'bxx;
endcase
end
endmodule
