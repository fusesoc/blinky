module blinky_kcu1500 (
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
    .clk_freq_hz(300_300_300)
  ) blinky (
    .clk (clk),
    .q   (q)
  );

endmodule
