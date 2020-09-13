## Clock signal
set_property -dict { PACKAGE_PIN R2    IOSTANDARD SSTL135 } [get_ports { clk }]; #IO_L12P_T1_MRCC_34 Sch=ddr3_clk[200]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { clk }];

## LED
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L16N_T2_A27_15 Sch=led[2]
