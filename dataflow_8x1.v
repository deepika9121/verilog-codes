`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 8x1 mux using dataflow 
// Module Name: dataflow_8x1 mux
////////////////////////////////////////////////////////////////


module dataflow_8x1(input [7:0]i,input[2:0]s,output out);
assign out=(i[0]&~s[2]&~s[1]&~s[0])  |  (i[1]&~s[2]&~s[1]&s[0])|
           (i[2]&~s[2]&s[1]&~s[0])   |  (i[3]&~s[2]&s[1]&s[0])|
          (i[4]&s[2]&~s[1]&~s[0])| (i[5]&s[2]&~s[1]&s[0])|
           (i[6]&s[2]&s[1]&~s[0])|(i[7]&s[2]&s[1]&s[0]);
           
endmodule
