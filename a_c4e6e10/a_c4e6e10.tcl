set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (Verilog)"
set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation

# Clock
set_location_assignment PIN_23 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk

# User LEDs
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to leds[7]

set_location_assignment PIN_76 -to leds[7]
set_location_assignment PIN_77 -to leds[6]
set_location_assignment PIN_84 -to leds[5]
set_location_assignment PIN_83 -to leds[4]
set_location_assignment PIN_80 -to leds[3]
set_location_assignment PIN_74 -to leds[2]
set_location_assignment PIN_73 -to leds[1]
set_location_assignment PIN_72 -to leds[0]
