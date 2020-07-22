module blinky_ulx3s
  (input wire 	    clk,
   input wire       btn0,
   output wire 	    wifi_gpio0,
   output wire 	    q);

   assign wifi_gpio0 = btn0;

   blinky #(.clk_freq_hz (25_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
