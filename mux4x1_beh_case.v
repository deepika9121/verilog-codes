`timescale 1ns / 1ps
//////////
// Engineer: B.DEEPIKA
// Design Name: mux using behavioural by case statements
// Module Name: mux4x1_beh_case
/////////////////////////////////////////////////////////


module mux4x1_beh_case(input [1:0]s,[3:0]i,output reg out);
always@(*)
begin
case(s)
2'b00:out<=i[0];
2'b01:out<=i[1]; 
2'b10:out<=i[2];
2'b11:out<=i[3]; 
//default:out=1'bx;
endcase 
end

endmodule
