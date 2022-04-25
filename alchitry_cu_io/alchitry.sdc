# clk => 100000000Hz
set_property PACKAGE_PIN P7 [get_ports { clk }]
create_clock -name clk -period 10.0 [get_ports { clk }]

set_property PACKAGE_PIN G14 [get_ports { q }]
