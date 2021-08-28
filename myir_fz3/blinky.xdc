## Clock signal
set_property -dict { PACKAGE_PIN M6 IOSTANDARD LVCMOS18 } [get_ports {clk}];
create_clock -add -name sys_clk_pin -period 40.00 [get_ports {clk}];

## LED
set_property -dict { PACKAGE_PIN AA13 IOSTANDARD LVCMOS33 } [get_ports q];
