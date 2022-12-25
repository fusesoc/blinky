# Constraints based on Digilent Cora Z7-07S (Rev. B) .xdc
# - https://github.com/Digilent/digilent-xdc/blob/master/Cora-Z7-07S-Master.xdc

## PL System Clock (125 MHz clock for Ethernet)
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports Clk_i]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports Clk_i]

## RGB LEDs
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {Led0_o}];  # Blue LED
#set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {Led0_o}]; # Green LED
#set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {Led0_o}]; # Red LED
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {Led1_o}];  # Blue LED
#set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports {Led1_o}]; # Green LED
#set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {Led1_o}]; # Red LED

## Buttons
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {Reset_i}]; # Reset Button

## Bitstream compression
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
