module blinky_polarfireeval
  (input wire 	    clk,
   output wire 	    q);

   blinky #(.clk_freq_hz (50_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
