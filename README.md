LED to believe
==============

This project aims to provide LED blinking examples for all the FPGA dev boards in the world.

The goal is to provide a quick way to test your new FPGA board and get acquainted with using [FuseSoC](https://github.com/olofk/fusesoc) in your design flow

Each FPGA board is implemented as a separate FuseSoC target and users are highly encouraged to add support for their any board at their disposal so that we can have a large collection

How to use
----------

This project is available in the [FuseSoC base library](https://github.com/fusesoc/fusesoc-cores), so if you have FuseSoC installed, you likely already have this project as well

To check if it's available run `fusesoc list-cores` and check for a core called `fusesoc:utils:blinky`

If it's not there, try to run `fusesoc update` to refresh the core libraries and look again

If it's still not there, or if you want to modify the project, e.g. to add support for an additional board, you can add LED to believe as a new core library.

Clone the repo somewhere `git clone https://github.com/fusesoc/blinky`

Create an empty workspace directory somewhere and navigate there

In your workspace directory, either run `fusesoc library add blinky /path/to/repo` to have it available when running from this workspace, or `fusesoc library add --global blinky /path/to/repo` to have it available in all workspaces

If you just want to have it available temporarily, run with `--cores-root=/path/to/repo ...` as the first argument to FuseSoC

To build for your particular board, run `fusesoc run --target=<board> fusesoc:utils:blinky` where `<board>` is one of the boards listed in the Board support section below.

Alternatively, run `fusesoc core-info fusesoc:utils:blinky` to find all available targets

There is also a simulation target available to test the core without any hardware. To use this, run `fusesoc run --target=sim fusesoc:utils:blinky`

The simulation target has a number of target-specific configuration parameters that can be set. All target-specific parameters goes on the end of the command line (after the core name).

To list all simulation parameters, run `fusesoc run --target=sim fusesoc:utils:blinky --help`

*Example:* To run four pulses with a simulated clock frequency of 4MHz and creating a VCD file, run `fusesoc run --target=sim fusesoc:utils:blinky --pulses=4 --clk_freq_hz=4000000 --vcd`

The default simulator to use is Icarus Verilog, but other simulators can be used by setting the `--tool` parameter after the `run` command.

Currently supported simulators for this target are icarus, modelsim and xsim. To use e.g. modelsim run `fusesoc run --target=sim --tool=modelsim fusesoc:utils:blinky`

Board support
-------------

The following boards are currently supported

### AnalogMax

https://www.arrow.com/en/products/tei0001-03-16-c8/trenz-electronic-gmbh

### afp27

http://www.armadeus.org/wiki/index.php?title=APF27

### arty_a7_35t

https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/

### cyc1000

https://shop.trenz-electronic.de/en/TEI0003-02-CYC1000-with-Cyclone-10-FPGA-8-MByte-SDRAM

### de0_nano

https://www.terasic.com.tw/cgi-bin/page/archive.pl?No=593

### de1_soc

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=165&No=836

### ice40-hx8k_breakout

http://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/iCE40HX8KBreakoutBoard.aspx

### lx9_microboard

https://www.avnet.com/shop/us/products/avnet-engineering-services/aes-s6mb-lx9-g-3074457345628965461/

### nexys_a7

https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum

### opos6ul_sp

http://www.armadeus.org/wiki/index.php?title=OPOS6UL_SP

### S7 Mini

https://shop.trenz-electronic.de/en/TE0890-01-25-1C-S7-Mini-Fully-Open-Source-Module-with-Xilinx-Spartan-7-7S25-64-MBit-HyperRAM

### tinyfpga_bx

https://www.crowdsupply.com/tinyfpga/tinyfpga-bx

### ulx3s_*

https://radiona.org/ulx3s

ULX3S comes in different sizes. The targets `ulx3s_45` and `ulx3s_85` are defined for different FPGA sizes

### Upduino 2

http://www.gnarlygrey.com/

### zcu106

https://www.xilinx.com/products/boards-and-kits/zcu106.html

### zrtech_v2

http://land-boards.com/blwiki/index.php?title=ZrTech_V2_EP4CE6_Cyclone_IV_FPGA_EP4CE6E22C8N_Development_Board_USB_V2
