## 33.333 MHz Clock signal
set_property -dict { PACKAGE_PIN N18 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 30.00 -waveform {0 4} [get_ports { clk }];

## LED(s)
# set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports { q_green }];
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { q }];
