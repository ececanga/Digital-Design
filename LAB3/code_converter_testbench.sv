`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2018 15:51:45
// Design Name: 
// Module Name: code_converter_testbench
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


module code_converter_testbench( output logic W, X, Y, Z,
                                 input logic A, B, C);
       logic A,B,C;
    
       code_converter test(W, X, Y, Z, A, B, C);
       initial begin
           #100;           
           A=0; B=0; C=0;
           #100;
           A=0; B=0; C=1;
           #100;
           A=0; B=1; C=0;
           #100;
           A=0; B=1; C=1;
           #100;
           A=1; B=0; C=0;
           #100;         
           A=1; B=0; C=1;
           #100;        
           A=1; B=1; C=0;
           #100;
           A=1; B=1; C=1;
           #100; 
        end        
endmodule
