`timescale 1ns / 1ps

module blinky_gmm7550(
                      input wire  ser_clk,
                      output wire led_green,
                      output wire led_red_n
                      );

   wire                           clk270, clk180, clk90, clk0, usr_ref_out;
   wire                           usr_pll_lock_stdy, usr_pll_lock;
   wire                           led;

   assign led_green = 1'b0;
   assign led_red_n = led;

   CC_PLL #(
            .REF_CLK("100.0"),   // reference input in MHz
            .OUT_CLK("25.0"),    // pll output frequency in MHz
            .PERF_MD("SPEED"),   // LOWPOWER, ECONOMY, SPEED
            .LOW_JITTER(1),      // 0: disable, 1: enable low jitter mode
            .CI_FILTER_CONST(2), // optional CI filter constant
            .CP_FILTER_CONST(4)  // optional CP filter constant
            ) pll_inst (
                        .CLK_REF(ser_clk), .CLK_FEEDBACK(1'b0), .USR_CLK_REF(1'b0),
                        .USR_LOCKED_STDY_RST(1'b0), .USR_PLL_LOCKED_STDY(usr_pll_lock_stdy), .USR_PLL_LOCKED(usr_pll_lock),
                        .CLK270(clk270), .CLK180(clk180), .CLK90(clk90), .CLK0(clk0), .CLK_REF_OUT(usr_ref_out)
                        );

   blinky #(
            .clk_freq_hz(25000000)
            ) blinky_inst (
                           .clk(clk0),
                           .q(led)
                           );

endmodule
