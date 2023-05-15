module blinky_nitefury_ii (
  input wire  pcie_clkin_p,
  input wire  pcie_clkin_n,
  output wire[3:0] led
);
  wire clk;
  wire q;
  IBUFDS_GTE2 ibufds
  (
    .I  (pcie_clkin_p),
    .IB (pcie_clkin_n),
    .O  (clk)
  );

  assign led = {q, q, q, q};

  blinky #(
    .clk_freq_hz(100_000_000)
  ) blinky (
    .clk (clk),
    .q   (q)
  );

endmodule
