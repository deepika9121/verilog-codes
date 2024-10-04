`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 1x2 decoder using case statements
// Module Name: decoder1x2_case
//////////////////////////////////////////////


module decoder1x2_case(input in,output reg [1:0]out );
always@*
begin
case(in)
1'b0:out=2'b01;
1'b1:out=2'b10;
default:out=2'bxx;
endcase
end
endmodule
