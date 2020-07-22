module blinky_machXO2_breakout
  (output wire q);

   wire        clk;

   OSCH #(.NOM_FREQ("14.00"))
   OSCH_inst
     (
      .STDBY(1'b0),
      .OSC(clk),
      .SEDSTDBY());

   blinky #(.clk_freq_hz (14_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
