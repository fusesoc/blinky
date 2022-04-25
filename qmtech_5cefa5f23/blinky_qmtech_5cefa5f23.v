module blinky_qmtech_5cefa5f23#(parameter clk_freq_hz = 0)
 (input  clk,
  output  [1:0] q );

 assign q[1] = !q[0];

 blinky #(.clk_freq_hz(clk_freq_hz))
  b(
    .clk(clk),
    .q(q[0])
    );


endmodule
