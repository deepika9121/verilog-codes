`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 8x1 mux using ifelse statements
// Module Name: mux8x1_ifelse
module mux8x1_ifelse(input [7:0]i,input[2:0]s,output reg out );
always@*
begin
if(s==3'b000)
out=i[0];
else if(s==3'b001)
out=i[1];
else if(s==3'b010)
out=i[2];
else if(s==3'b011)
out=i[3];
else if(s==3'b100)
out=i[4];
else if(s==3'b101)
out=i[5];
else if(s==3'b110)
out=i[6];
else if(s==3'b111)
out=i[7];
else
out=8'hx;
end
endmodule