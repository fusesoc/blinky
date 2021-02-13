#
# Clock / Reset
#
set_location_assignment PIN_E16 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#
# GPIO0
#
set_location_assignment PIN_D12 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q
