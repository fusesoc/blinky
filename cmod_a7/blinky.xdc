set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports clk];
create_clock -add -name sys_clk_pin -period 83.33 [get_ports clk];

set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports q];
