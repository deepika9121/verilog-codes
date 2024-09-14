`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: multi bit subtractor
// Module Name: multibit_subtractor
/////////////////////////////////////
module multibit_subtractor(a,b,cin,diff,borrow);
input [3:0]a,b;
input cin;
output [3:0]diff;
output borrow;
assign {borrow,diff}=a-b-cin;
endmodule

