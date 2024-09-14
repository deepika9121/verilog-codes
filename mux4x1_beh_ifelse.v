`timescale 1ns / 1ps
// Module Name: mux4x1_beh_ifelse
// Project Name: 4x1 mux using behavioural by ifelse condition 
///////////////////////////////////////////////////////


module mux4x1_beh_ifelse(input [1:0]s,[3:0]i,output reg out);
always@(*)
begin
if(s==2'b00)
 out=i[0];
else if (s==2'b01)
 out=i[1]; 
else if (s==2'b10)
 out=i[2];
else 
 out=i[3];  
end
endmodule
