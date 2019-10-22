module blinky_ulx3s
  (input wire 	    clk,
   input wire [0:0] btn,
   output wire 	    wifi_gpio0,
   output wire 	    q);

   assign wifi_gpio0 = btn[0];

   blinky #(.clk_freq_hz (25_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
