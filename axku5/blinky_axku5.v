module blinky_axku5 #(
  parameter clk_freq_hz = 0
) (
  input wire  sys_clk_p,
  input wire  sys_clk_n,
  output wire q
);

IBUFDS sys_clk_ibufds (
    .O (sys_clk),
    .I (sys_clk_p),
    .IB(sys_clk_n)
);

blinky #(
  .clk_freq_hz(clk_freq_hz)
) blinky_inst (
  .clk (sys_clk),
  .q   (q)
);

endmodule