## Clock signal
set_property -dict { PACKAGE_PIN R4 IOSTANDARD DIFF_SSTL15 } [get_ports sys_clk_p];
set_property -dict { PACKAGE_PIN T4 IOSTANDARD DIFF_SSTL15 } [get_ports sys_clk_n];

create_clock -name clk_p -period 5.0 [get_nets sys_clk_p]

## LED
set_property -dict { PACKAGE_PIN L13 IOSTANDARD LVCMOS33 } [get_ports q]
