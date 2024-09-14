`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Module Name: bcd_addder
// Project Name: BCD ADDITION
///////////////////////////////
module bcd_addder(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output reg  [3:0] sum;
output reg carry;

always@*
begin
 sum=a+b+cin;
if(sum>9)
    begin
    sum=sum+4'b0110;
    carry=1;
    end
else
begin sum=sum;
carry=0;
end
end
endmodule
