## Clock signal
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -name clk -period 10.000 -waveform {0.000 5.000} [get_ports { clk }]

## LED
set_property -dict { PACKAGE_PIN B6 IOSTANDARD LVCMOS33 } [get_ports { q }];

## Configuration options, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
