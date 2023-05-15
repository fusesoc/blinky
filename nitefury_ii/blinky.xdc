# PCIe refclock
set_property PACKAGE_PIN F6 [get_ports {pcie_clkin_p}]
set_property PACKAGE_PIN E6 [get_ports {pcie_clkin_n}]

create_clock -period 10.000 -name pcie_clkin [get_ports pcie_clkin_p]

## LED
set_property PACKAGE_PIN G3 [get_ports led[0]]
set_property PACKAGE_PIN H3 [get_ports led[1]]
set_property PACKAGE_PIN G4 [get_ports led[2]]
set_property PACKAGE_PIN H4 [get_ports led[3]]

set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property PULLUP true [get_ports {led[*]}]
set_property DRIVE 8 [get_ports {led[*]}]
