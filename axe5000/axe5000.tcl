

set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name PWRMGT_VOLTAGE_OUTPUT_FORMAT "LINEAR FORMAT"
set_global_assignment -name PWRMGT_LINEAR_FORMAT_N "-12"
set_global_assignment -name POWER_APPLY_THERMAL_MARGIN ADDITIONAL
# set_global_assignment -name BOARD default

# 1.3-V LVCMOS is used to fake Quartus since 
set_location_assignment PIN_A7  -to clk
set_instance_assignment -name IO_STANDARD "1.3-V LVCMOS" -to clk

# LED
set_location_assignment PIN_AG21  -to q
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to q
