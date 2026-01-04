module blinky_alinx_ax7a200b (
  input wire  sys_clk_p,
  input wire  sys_clk_n,
  output wire q
);

  wire clk;
  IBUFDS ibufds
  (
    .I  (sys_clk_p),
    .IB (sys_clk_n),
    .O  (clk)
  );

  blinky #(
    .clk_freq_hz(200_000_000)
  ) blinky (
    .clk (clk),
    .q   (q)
  );

endmodule
