#
# Clock / Reset
#
set_location_assignment PIN_27 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#
# GPIO0
#
set_location_assignment PIN_132 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q

# Generate SVF File for openFPGALoader
set_global_assignment -name GENERATE_SVF_FILE ON
# Generate JAM file to be converted to JBC with quartus_jbcc
set_global_assignment -name GENERATE_JAM_FILE ON

