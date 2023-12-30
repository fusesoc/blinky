## Clock signal
set_property -dict { PACKAGE_PIN T24 IOSTANDARD LVDS } [get_ports clk_p];
set_property -dict { PACKAGE_PIN U24 IOSTANDARD LVDS } [get_ports clk_n];
create_clock -add -name sys_clk_pin -period 10 [get_nets clk];

## LED
set_property -dict { PACKAGE_PIN G19 IOSTANDARD LVCMOS18 } [get_ports q];
