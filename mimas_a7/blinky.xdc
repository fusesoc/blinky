set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk }]     ;                # IO_L12P_T1_MRCC_35            Sch = CLK1
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { q }];                      # IO_L21P_T3_DQS_15             Sch = LED0
create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports { clk }];

