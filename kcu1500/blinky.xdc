set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

## LED
set_property -dict { PACKAGE_PIN AW25 IOSTANDARD LVCMOS18 } [get_ports q]

set_property -dict { PACKAGE_PIN BA34 IOSTANDARD DIFF_SSTL12 } [get_ports sys_clk_p];
set_property -dict { PACKAGE_PIN BB34 IOSTANDARD DIFF_SSTL12 } [get_ports sys_clk_n];

create_clock -name sys_clk -period 3.33 [get_ports sys_clk_p]
