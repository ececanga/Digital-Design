`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 14.10.2017 17:17:47
// Design Name:
// Module Name: adder_testbench
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


module full_adder_testbench();
       // declare internal variables
  logic x, y, z, S, C;
 
  // instantiate the adder module object
      full_adder test(x, y, z, S, C);
     
      initial begin
          #100; // wait
           
          x=0;
          y=0;
          z=0;
          #100;
         
          x=0;
          y=0;
          z=1;
          #100;
         
          x=0;
          y=1;
          z=0;
          #100;
 
          x=0;
          y=1;
          z=1;
          #100;
         
          x=1;
          y=0;
          z=0;
          #100;
         
          x=1;
          y=0;
          z=1;
          #100;
 
          x=1;
          y=1;
          z=0;
          #100;
         
          x=1;
          y=1;
          z=1;
          #100;

          end
     initial
          $monitor($time,"x=%d, y=%d, z=%d, S=%d, C=%d", x, y, z, S, C);
   endmodule
