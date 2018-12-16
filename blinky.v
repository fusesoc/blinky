module blinky
  #(parameter clk_freq_hz = 0)
   (input  clk,
    output reg q = 1'b0);

   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
/* verilator lint_off WIDTH */
      if (count == clk_freq_hz-1) begin
/* verilator lint_on WIDTH */
	 q <= !q;
	 count <= 0;
      end
   end

endmodule
