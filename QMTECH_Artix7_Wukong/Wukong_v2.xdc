set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN M21 [get_ports clk]


set_property PACKAGE_PIN V17 [get_ports {leds[0]}]
set_property PACKAGE_PIN V16 [get_ports {leds[1]}]

create_clock -period 20.000 -name clock -waveform {0.000 10.000} [get_ports clk]
