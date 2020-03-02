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


module full_adder_2bit_testbench();
       // declare internal variables
  logic x0, y0, cin, x1, y1, sum0, sum, carry;
 
  // instantiate the adder module object
      full_adder_2bit test(x0, y0, cin, x1, y1, sum0, sum, carry);
     
      initial begin
          #100; // wait
           
          x0=0;
          y0=0;
          cin=0;
          x1=0;
          y1=0;
          #100;
         
          x0=1;
          y0=0;
          cin=0;
          x1=0;
          y1=0;
          #100;
         
          x0=0;
          y0=1;
          cin=0;
          x1=0;
          y1=0;
          #100;
 
          x0=1;
          y0=0;
          cin=1;
          x1=0;
          y1=0;
          #100;
         
          x0=0;
          y0=1;
          cin=0;
          x1=1;
          y1=0;
          #100;
         
          x0=0;
          y0=1;
          cin=0;
          x1=0;
          y1=1;
          #100;
 
          x0=1;
          y0=0;
          cin=1;
          x1=0;
          y1=1;
          #100;
         
          x0=1;
          y0=1;
          cin=1;
          x1=1;
          y1=1;
          #100;

          end
     initial
          $monitor($time,"x0=%d, y0=%d, cin=%d, sum0=%d, sum=%d, carry=%d", x0, y0, cin, sum0, sum, carry);
   endmodule
