## Clock Signal
set_property -dict { PACKAGE_PIN R4    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_34 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## LED
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS25 } [get_ports { q }]; #IO_L15P_T2_DQS_13 Sch=led[0]
