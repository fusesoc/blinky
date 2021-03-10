## Clock signal
set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { clk }];

## LED
set_property -dict { PACKAGE_PIN U16    IOSTANDARD LVCMOS33 } [get_ports { q }];


