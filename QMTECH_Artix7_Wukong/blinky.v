module blinky
  #(parameter clk_freq_hz = 0)
   (input  clk,
    output reg [1:0] leds = 2'b10);

   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
      if (count == clk_freq_hz-1) begin
	 leds <=  ~leds;

	 count <= 0;
      end
   end

endmodule
