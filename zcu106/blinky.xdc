## Clock signal
set_property -dict { PACKAGE_PIN H9 IOSTANDARD LVDS } [get_ports clk_p];
set_property -dict { PACKAGE_PIN G9 IOSTANDARD LVDS } [get_ports clk_n];
create_clock -add -name sys_clk_pin -period 8 [get_nets clk];

## LED
set_property -dict { PACKAGE_PIN AL11 IOSTANDARD LVCMOS12 } [get_ports q];
