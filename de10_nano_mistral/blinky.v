
module blinky
  #(parameter clk_freq_hz = 50000000)
   (input  clk,
    output reg [7:0] led = 8'b0);

   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
      if (count == clk_freq_hz-1) begin
	 led <= ~led;
	 count <= 0;
      end
   end

endmodule
