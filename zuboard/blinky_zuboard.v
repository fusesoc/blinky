module blinky_zuboard
  (output wire q);

   wire        clk;

   STARTUPE3 #(
   )
   STARTUPE3_inst (
      .CFGMCLK(clk)     // 1-bit output: Configuration internal oscillator clock output.
   );
    
   blinky #(.clk_freq_hz (100_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
