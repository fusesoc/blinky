module blinky_ebaz4205
  (input wire  clk,
   output wire q);

   wire        clk;

   blinky #(.clk_freq_hz (33_333_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
