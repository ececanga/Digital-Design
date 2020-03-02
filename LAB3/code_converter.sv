`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2018 15:24:30
// Design Name: 
// Module Name: code_converter
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


module code_converter( output logic W, X, Y, Z,
                       input logic A, B, C,
                       output logic [6:0] segments,
                       output logic [3:0] an );
    assign Z = B;                                     
    multiplexer_4to1 mux1( W, C, 0, 0, 0, A, B);
    multiplexer_4to1 mux2( Y, 0, 1, 1, 0, B, C);
    multiplexer_4to1 mux3( X, 0, 1, 1, 0, A, B&C);
    
 always_comb
       case (W*8 + X*4 + Y*2 + Z)
       0: segments = 7'b000_0001;
       1: segments = 7'b100_1111;
       2: segments = 7'b001_0010;
       3: segments = 7'b000_0110;
       4: segments = 7'b100_1100;
       5: segments = 7'b010_0100;
       6: segments = 7'b010_0000;
       7: segments = 7'b000_1111;
       8: segments = 7'b000_0000;
       9: segments = 7'b000_0100;
       default: segments = 7'b000_0000;    
    endcase
    assign an = 4'b0111;               
endmodule
