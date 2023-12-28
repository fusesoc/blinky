module blinky_polarfire_splashkit (
	input	wire	i_clk,
	output	wire	o_led1 = 1'b0,
	output	wire	o_led2 = 1'b0,
	output	wire	o_led3 = 1'b0,
	output	wire	o_led4,
	output	wire	o_led5 = 1'b0,
	output	wire	o_led6 = 1'b0,
	output	wire	o_led7 = 1'b0,
	output	wire	o_led8 = 1'b0);

	wire q;

	blinky #(
		.clk_freq_hz (50_000_000)
	) blinky (
		.clk (i_clk),
		.q   (q)
	);

	assign o_led4 = q;

endmodule
