## Clock signal
set_property -dict { PACKAGE_PIN G21 IOSTANDARD LVDS_25 } [get_ports clk_p];
set_property -dict { PACKAGE_PIN F21 IOSTANDARD LVDS_25 } [get_ports clk_n];
create_clock -add -name sys_clk_pin -period 8 [get_nets clk];

## LED
set_property -dict { PACKAGE_PIN AG14 IOSTANDARD LVCMOS33 } [get_ports q];
