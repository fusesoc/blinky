## Clock signal
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

## LED
set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports { q }];
