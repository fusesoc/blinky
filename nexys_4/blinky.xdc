## Clock signal
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_34 Sch=CLK100MHZ
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { clk }];

## LED
set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L23N_T3_A02_D18_14 Sch=led[0]


## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
