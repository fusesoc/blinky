
module blinky_de10_nano
  #(parameter clk_freq_hz = 50000000)
   (input  clk,
    output wire [7:0] leds);


  wire led;

  genvar i;

  generate 
  for( i = 0; i < 8; i++ ) begin
   
     assign leds[i]	= led;
  end   
  endgenerate


  blinky #(.clk_freq_hz(clk_freq_hz) ) b(.clk(clk),.q(led)); 

endmodule