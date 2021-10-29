## Clock signal
# ultra96_v2 has no on-board PL clock so use clk generated from PS, see block diagram 

## LED
set_property -dict { PACKAGE_PIN A9 IOSTANDARD LVCMOS18 } [get_ports q];