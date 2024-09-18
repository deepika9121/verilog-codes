`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: priority encoder using 2x1 case statements
// Module Name: priority_encoder_2x1_case
///////////////////////////////////////////
module priority_encoder_2x1_case(input [1:0]in,output reg  out,valid);
always@*
begin
case(in)
2'b00: begin out=0;valid=0;end
2'b01: begin out=0;valid=1;end
2'b10: begin out=1;valid=1;end
2'b11: begin out=1;valid=1;end
default: begin out=1'bx;valid=1'bx;end
endcase
end
endmodule
