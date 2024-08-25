#
# Clock / Reset
#
set_location_assignment PIN_F14 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#
# GPIO0
#
set_location_assignment PIN_P4 -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to q

# Generate RBF file without compression
set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "ACTIVE SERIAL X4"
set_global_assignment -name USE_CONFIGURATION_DEVICE ON
set_global_assignment -name STRATIXII_CONFIGURATION_DEVICE EPCQ64A
set_global_assignment -name ACTIVE_SERIAL_CLOCK FREQ_100MHZ
set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
set_global_assignment -name GENERATE_RBF_FILE ON
set_global_assignment -name GENERATE_SVF_FILE ON
