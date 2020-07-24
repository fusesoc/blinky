module blinky_orangecrab
  (input wire 	    clk,
   input wire       btn,
   output wire 	    r,
   output wire 	    g,
   output wire 	    b,
   );


   blinky #(.clk_freq_hz (48_000_000)) blinky
     (.clk (clk),
      .q   (q));

    assign r = ~q;
    assign g = ~q;
    assign b = ~q;
endmodule
