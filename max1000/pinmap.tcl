#
# Clock / Reset
#
set_location_assignment PIN_H6 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#
# GPIO0
#
set_location_assignment PIN_A8 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q
