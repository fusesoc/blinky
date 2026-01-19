set_global_assignment -name OPTIMIZATION_MODE "AGGRESSIVE AREA"
*
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (Verilog)"
set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation

set_global_assignment -name GENERATE_COMPRESSED_SOF ON
set_global_assignment -name AUTO_RESTART_CONFIGURATION OFF
set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "AVST X8"
set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
set_global_assignment -name USE_INIT_DONE SDM_IO0
set_global_assignment -name USE_CONF_DONE SDM_IO16
set_global_assignment -name USE_HPS_COLD_RESET SDM_IO7
set_global_assignment -name DEVICE_INITIALIZATION_CLOCK OSC_CLK_1_100MHZ
set_global_assignment -name POWER_APPLY_THERMAL_MARGIN ADDITIONAL

set_global_assignment -name ERROR_ON_WARNINGS_PARSING_SDC_ON_RTL_CONSTRAINTS ON
set_global_assignment -name ERROR_ON_WARNINGS_LOADING_SDC_ON_RTL_CONSTRAINTS ON

# Clock
set_location_assignment PIN_E2 -to clk -comment PTP_3A_REFCLK
set_instance_assignment -name IO_STANDARD "1.1-V" -to clk

# User LED 0 Bank 3A 1.1V
set_location_assignment PIN_K1 -to q -comment IO_96_3A_LED0
set_instance_assignment -name IO_STANDARD "1.1-V" -to q
