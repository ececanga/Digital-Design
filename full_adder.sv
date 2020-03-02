`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2017 16:30:51
// Design Name: 
// Module Name: full_adder
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


module full_adder(
		input logic x,y,z,
		output logic S,C );
   logic s1,c1,c2;
   xor(s1,x,y);
   xor(S,z,s1);
   and(c1,x,y);
   and(c2,s1,z);
   or(C,c1,c2);
endmodule