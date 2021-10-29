`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2021 09:35:40 PM
// Design Name: 
// Module Name: blinky_ultra96_v2
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


module blinky_ultra96_v2
  (output wire q);
  
  wire clk;

  blinky #(.clk_freq_hz (100_000_000)) blinky_i
    (.clk(clk),
     .q(q));
      
  design_1_wrapper design_1_wrapper_i
    (.pl_clk0_0(clk));

endmodule
