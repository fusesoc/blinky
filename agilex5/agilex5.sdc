# 100MHz clock
create_clock -name clk -period 10.00 -waveform {0 5} [get_ports {clk}];
