## Clock signal
set_property -dict { PACKAGE_PIN AC11 IOSTANDARD LVDS } [get_ports { clk_n }];
set_property -dict { PACKAGE_PIN AB11 IOSTANDARD LVDS } [get_ports { clk_p }];
create_clock -add -name sys_clk_pin -period 5 [get_nets clk];

## LEDs
set_property -dict { PACKAGE_PIN AA2  IOSTANDARD LVCMOS15 } [get_ports { q_array[0] }];
set_property -dict { PACKAGE_PIN AD5  IOSTANDARD LVCMOS15 } [get_ports { q_array[1] }];
set_property -dict { PACKAGE_PIN W10  IOSTANDARD LVCMOS15 } [get_ports { q_array[2] }];
set_property -dict { PACKAGE_PIN Y10  IOSTANDARD LVCMOS15 } [get_ports { q_array[3] }];
set_property -dict { PACKAGE_PIN AE10 IOSTANDARD LVCMOS15 } [get_ports { q_array[4] }];
set_property -dict { PACKAGE_PIN W11  IOSTANDARD LVCMOS15 } [get_ports { q_array[5] }];
set_property -dict { PACKAGE_PIN V11  IOSTANDARD LVCMOS15 } [get_ports { q_array[6] }];
set_property -dict { PACKAGE_PIN Y12  IOSTANDARD LVCMOS15 } [get_ports { q_array[7] }];
