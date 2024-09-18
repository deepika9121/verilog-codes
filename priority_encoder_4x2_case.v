`timescale 1ns / 1ps
// Engineer:    B DEEPIKA
// Design Name: priority encoder 4x2 using case
// Module Name: priority_encoder_4x2_case
/////////////////////////////////////////


module priority_encoder_4x2_case(input [3:0]in,output reg [1:0]out,output reg valid);
always@*
begin
case(in)
4'b0000:begin out=2'b00;valid=1'b0;end
4'b0001:begin out=2'b00;valid=1'b1;end
4'b0010:begin out=2'b01;valid=1'b1;end
4'b0011:begin out=2'b01;valid=1'b1;end

4'b0100:begin out=2'b10;valid=1'b1;end
4'b0101:begin out=2'b10;valid=1'b1;end
4'b0110:begin out=2'b10;valid=1'b1;end
4'b0111:begin out=2'b10;valid=1'b1;end

4'b1000:begin out=2'b11;valid=1'b1;end
4'b1001:begin out=2'b11;valid=1'b1;end
4'b1010:begin out=2'b11;valid=1'b1;end
4'b1011:begin out=2'b11;valid=1'b1;end

4'b1100:begin out=2'b11;valid=1'b1;end
4'b1101:begin out=2'b11;valid=1'b1;end
4'b1110:begin out=2'b11;valid=1'b1;end
4'b1111:begin out=2'b11;valid=1'b1;end

default:out=2'bxx;
endcase
end
endmodule