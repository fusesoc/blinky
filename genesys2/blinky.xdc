## Clock signal
set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { clk_n }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { clk_p }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p
create_clock -add -name sys_clk_pin -period 5 [get_nets clk];

## LED
set_property -dict { PACKAGE_PIN T28   IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L11N_T1_SRCC_14 Sch=led[0]
