## Clock signal
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 8 -waveform {0 4} [get_ports { clk }];

## LED
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { q }];