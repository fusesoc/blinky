## Clock signal
set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS18 } [get_ports {clk}];
create_clock -add -name sys_clk_pin -period 40.00 [get_ports {clk}];

## LED
set_property -dict { PACKAGE_PIN P1 IOSTANDARD LVCMOS18 } [get_ports q];
