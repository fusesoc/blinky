set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
# 66 OK?
set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property CONFIG_MODE SPIx1 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]

set_property BITSTREAM.CONFIG.M1PIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.M2PIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.M0PIN PULLNONE [current_design]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

## Clock signal
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]

## LED
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { q }]; # 
