module blinky_go_board
  #(parameter clk_freq_hz = 0)
   (input  clk,
    output reg q = 1'b0,
    output led2 = 1'b0,
    output led3 = 1'b0,
    output led4 = 1'b0);

   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
      if (count == clk_freq_hz-1) begin
	 q <= !q;
	 count <= 0;
      end
   end

endmodule
