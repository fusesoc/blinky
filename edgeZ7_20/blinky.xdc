## Clock signal
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports clk];
create_clock -add -name sys_clk_pin -period 8 -waveforem {0 4} [get_nets clk];

## LED
set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports q];
