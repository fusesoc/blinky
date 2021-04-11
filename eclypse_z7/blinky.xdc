# Blinky XDC for Digilent Eclypse Z7 Zynq-7000 SoC development kit
# See https://github.com/Digilent/digilent-xdc for more XDC details

set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

# On-board RGB LEDs
# LD0
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L8N_T1_AD10N Sch=led0_r
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L8P_T1_AD10P Sch=led0_g
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L9N_T1_DQS_AD3N Sch=led0_b

# LD1
#set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L10N_T1_AD11N Sch=led1_r
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L10P_T1_AD11P Sch=led1_g
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L9P_T1_DQS_AD3P Sch=led1_b
