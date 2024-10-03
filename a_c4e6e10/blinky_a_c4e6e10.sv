module blinky_a_c4e6e10 #(
    parameter clk_freq_hz = 50000000
) (
    input clk,
    output wire [7:0] leds
);


  wire led;
  genvar i;

  assign leds = {8{led}};

  blinky #(
      .clk_freq_hz(clk_freq_hz)
  ) b (
      .clk(clk),
      .q  (led)
  );
endmodule
