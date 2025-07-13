


#============================================================
# Configuration scheme/pin
#============================================================
set_global_assignment -name USE_CONF_DONE SDM_IO16
set_global_assignment -name USE_INIT_DONE SDM_IO13
set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "ACTIVE SERIAL X4"
set_global_assignment -name ACTIVE_SERIAL_CLOCK AS_FREQ_100MHZ
set_global_assignment -name DEVICE_INITIALIZATION_CLOCK OSC_CLK_1_125MHZ

#============================================================
# set_global_assignment -name SDC_FILE atum_a3_nano.sdc
# set_global_assignment -name BOARD default

# Clock
set_instance_assignment -name IO_STANDARD "1.2-V" -to clk 
set_location_assignment PIN_K43 -to clk

# LED
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to q 
set_location_assignment PIN_AG2 -to q
