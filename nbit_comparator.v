`timescale 1ns / 1ps
////////////////////////////
// Engineer: B DEEPIKA
// Design Name: n bit comparators
// Module Name: nbit_comparator

module nbit_comparator(a,b,agb,alb,aeb);
input [3:0]a,b;
output reg agb,alb,aeb;
always@*
begin
agb=0;alb=0;aeb=0;
if(a > b)
begin
 agb=1;
$display("a is greater than b");
end
else if(a<b)
begin
alb=1;
$display("a is lesser than b");
end
else
begin
aeb=1;
$display("a is equal to b");
end
end
endmodule
