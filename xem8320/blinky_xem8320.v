module blinky_xem8320
  (input wire  clk_p,
   input wire  clk_n,
   output wire q);

   wire        clk;

   IBUFDS ibufds
     (.I  (clk_p),
      .IB (clk_n),
      .O  (clk));

   blinky #(.clk_freq_hz (100_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
