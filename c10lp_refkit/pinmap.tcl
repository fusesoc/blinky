#
# Clock / Reset
#
set_location_assignment PIN_AA12 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk

#
# GPIO0
#
set_location_assignment PIN_D18 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q
