#
# Clock / Reset
#
set_location_assignment PIN_AW35 -to clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to clk

#
# GPIO0 - board name LED_BRACKET[0]
#
set_location_assignment PIN_AH15 -to q
set_instance_assignment -name IO_STANDARD "2.5 V" -to q
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to q
set_instance_assignment -name SLEW_RATE 1 -to q
