## Clock signal
set_property PACKAGE_PIN K22 [get_ports sys_clk_p]
set_property PACKAGE_PIN K23 [get_ports sys_clk_n]
set_property IOSTANDARD LVDS [get_ports {sys_clk_p sys_clk_n}]
create_clock -name sys_clk -period 5.000 [get_ports sys_clk_p]

## LED output
set_property -dict { PACKAGE_PIN J12 IOSTANDARD LVCMOS33 } [get_ports { q }];

