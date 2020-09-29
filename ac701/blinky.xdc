## Clock signal
set_property -dict { PACKAGE_PIN R3 IOSTANDARD DIFF_SSTL15 } [get_ports sys_clk_p];
set_property -dict { PACKAGE_PIN P3 IOSTANDARD DIFF_SSTL15 } [get_ports sys_clk_n];

create_clock -name clk_p -period 5.0 [get_nets sys_clk_p]

## LED
set_property -dict { PACKAGE_PIN M26 IOSTANDARD LVCMOS33 } [get_ports q]
