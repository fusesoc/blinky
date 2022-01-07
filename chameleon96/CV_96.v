
module CV_96 (
	output q
);

wire clk;		


HPS   u0(
	.h2f_user0_clk( clk)  	//hps_0_h2f_user0_clock.clk
);
	

blinky  #(.clk_freq_hz (100000000))  u1 (
	.clk( clk ), 
	.q  ( q   )
);
	  
		   
endmodule






