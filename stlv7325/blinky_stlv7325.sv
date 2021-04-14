module blinky_stlv7325 (
  input			          clk_p,
	input			          clk_n,
  output  logic [7:0] q_array
);
  logic clk, q;

  always_comb begin
    q_array = {8{q}};
  end

  IBUFDS ibufds(
    .I  (clk_p),
    .IB (clk_n),
    .O  (clk)
  );

  blinky #(
    .clk_freq_hz(200_000_000)
  ) blinky(
    .clk(clk),
    .q(q)
  );
endmodule
