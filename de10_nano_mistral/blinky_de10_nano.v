
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

/*
   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
      if (count == clk_freq_hz-1) begin
	 led <= ~led;
	 count <= 0;
      end
   end
*/
endmodule