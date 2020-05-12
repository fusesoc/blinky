#
# Clock / Reset
#
set_location_assignment PIN_L2 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#
# LED0
#
set_location_assignment PIN_AA19 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q

# Actively driving unassigned IOs make this FPGA board very hot. Don't do it.
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED WITH WEAK PULL-UP"

