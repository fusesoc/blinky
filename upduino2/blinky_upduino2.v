module blinky_upduino2
  (
   output wire g,
   output wire b,
   output wire r);

   wire        clk;
   wire        q;
   reg 	       q_r;
   reg [2:0]   rgb = 3'b001;

   SB_HFOSC inthosc
     (
      .CLKHFPU(1'b1),
      .CLKHFEN(1'b1),
      .CLKHF(clk));

   SB_RGBA_DRV
     #(
       .CURRENT_MODE ("0b1"),
       .RGB0_CURRENT ("0b000111"),
       .RGB1_CURRENT ("0b000111"),
       .RGB2_CURRENT ("0b000111"))
   RGBA_DRIVER
     (
      .CURREN(1'b1),
      .RGBLEDEN(1'b1),
      .RGB0PWM(rgb[0] & q),
      .RGB1PWM(rgb[1] & q),
      .RGB2PWM(rgb[2] & q),
      .RGB0(g),
      .RGB1(b),
      .RGB2(r));

   always @(posedge clk) begin
      q_r <= q;
      if (q & !q_r)
	rgb <= {rgb[1:0], rgb[2]};
   end

   blinky #(.clk_freq_hz (48_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
