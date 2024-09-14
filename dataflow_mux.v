`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////// 
// Engineer: B.Deepika
// Create Date: 08/31/2024 08:57:48 PM
// Design Name: 
// Module Name: mux221 
// Project Name: mux in dataflow  model
///////////////////////////////////////////////////


module dataflow_mux(input i0,i1,s,output wire o );
assign o=(s&i1)|(~s&i0);
endmodule
