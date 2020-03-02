`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2018 14:54:32
// Design Name: 
// Module Name: multiplexer_4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module multiplexer_4to1( output logic y,
   	  	                 input logic i3, i2, i1, i0,
   	                     input logic s1, s0);
     assign y = (~s1&~s0&i0) | (s1&~s0&i1) | (~s1&s0&i2) | (s1&s0&i3);                                     
endmodule
