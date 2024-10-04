`timescale 1ns / 1ps
// Engineer: B DEEPIKA
// Design Name: 1x2 decoder inverter buffer
// Module Name: dec1x2_inv_buffer
///////////////////////////////////////////////
//////////////////


module dec1x2_inv_buffer(input in,output wire inverter,buffer );
assign buffer=in;
assign inverter=~in; 
endmodule

