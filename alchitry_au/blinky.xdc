## Clock signal
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -name clk -period 10.000 -waveform {0.000 5.000} [get_ports { clk }]

## LED
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports { q }];

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
