`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2018 23:06:46
// Design Name: 
// Module Name: full_adder_2bit
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


module full_adder_2bit(
    input  x0,y0,cin,x1, y1,
        output  sum0,sum,carry
    );
    
    logic firstAdderOutput,x1, y1, x0, y0;
    
    full_adder_1bit firstAdder(x0,y0,cin,sum0,firstAdderOutput);
    full_adder_1bit secondAdder(x1,y1,firstAdderOutput,sum,carry);
    
endmodule
