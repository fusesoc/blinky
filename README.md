LED to believe
==============

This project aims to provide LED blinking examples for all the FPGA dev boards in the world.

The goal is to provide a quick way to test your new FPGA board and get acquainted with using [FuseSoC](https://github.com/olofk/fusesoc) in your design flow.

Each FPGA board is implemented as a separate FuseSoC target and users are highly encouraged to add support for their any board at their disposal so that we can have a large collection.

How to use
----------

This project is available in the [FuseSoC base library](https://github.com/fusesoc/fusesoc-cores), so if you have FuseSoC installed, you likely already have this project as well.

To check if it's available run `fusesoc core list` and check for a core called `fusesoc:utils:blinky`.

If it's not there, try to run `fusesoc library update` to refresh the core libraries and look again.

If it's still not there, or if you want to modify the project, e.g. to add support for an additional board, you can add LED to believe as a new core library with `fusesoc library add blinky https://github.com/fusesoc/blinky`. LED to believe will now be added as a new library and downloaded to `fusesoc_libraries/blinky`

To build for your particular board, run `fusesoc run --target=<board> fusesoc:utils:blinky` where `<board>` is one of the boards listed in the Board support section below.

Alternatively, run `fusesoc core show fusesoc:utils:blinky` to find all available targets.

There is also a simulation target available to test the core without any hardware. To use this, run `fusesoc run --target=sim fusesoc:utils:blinky`.

The simulation target has a number of target-specific configuration parameters that can be set. All target-specific parameters goes on the end of the command line (after the core name).

To list all simulation parameters, run `fusesoc run --target=sim fusesoc:utils:blinky --help`.

*Example:* To run four pulses with a simulated clock frequency of 4MHz and creating a VCD file, run `fusesoc run --target=sim fusesoc:utils:blinky --pulses=4 --clk_freq_hz=4000000 --vcd`.

The default simulator to use is Icarus Verilog, but other simulators can be used by setting the `--tool` parameter after the `run` command.

Currently supported simulators for this target are icarus, modelsim and xsim. To use e.g. modelsim run `fusesoc run --target=sim --tool=modelsim fusesoc:utils:blinky`.

What to do next
---------------
That was fun, wasn't it? And did you know that once you have gotten a LED to blink in this way, you are actually 90% of the way already to run a small SoC with a RISC-V CPU on the same board. Maybe your board is already supported? Or maybe you're up to the challenge of adding support for it. All it takes is to create a 16MHz clock and allocate an output pin to connect a UART. For more info, move on to learn about and run [SERV](https://github.com/olofk/serv), the world's smallest RISC-V CPU


Board support
-------------

The following boards are currently supported:

### AC701

https://www.xilinx.com/products/boards-and-kits/ek-a7-ac701-g.html

### AnalogMax

https://www.arrow.com/en/products/tei0001-03-16-c8/trenz-electronic-gmbh

### afp27

http://www.armadeus.org/wiki/index.php?title=APF27

### afp51

http://www.armadeus.org/wiki/index.php?title=APF51

### Alhambra II

https://alhambrabits.com/alhambra/

### arty_a7_35t

https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/

### colorlight_5a75b

https://fr.aliexpress.com/item/32281130824.html

### crosslink_nx_evn

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/CrossLink-NXEvaluationBoard

### cyc1000

https://shop.trenz-electronic.de/en/TEI0003-02-CYC1000-with-Cyclone-10-FPGA-8-MByte-SDRAM

## Cisco HWIC-3G-CDMA

https://https://github.com/tomverbeure/cisco-hwic-3g-cdma

### de0_nano

https://www.terasic.com.tw/cgi-bin/page/archive.pl?No=593

### de1_soc

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=165&No=836

### ecp5_evn

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/ECP5EvaluationBoard

### FPC-III

https://repo.or.cz/fpc-iii.git

### ice40hx1k_evb

https://www.olimex.com/wiki/ICE40HX1K-EVB

### ice40-hx8k_breakout

http://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/iCE40HX8KBreakoutBoard.aspx


### iceFUN

https://www.robot-electronics.co.uk/products/fpga/icefun.html

### iceWerx

https://www.robot-electronics.co.uk/icewerx.html

### lx9_microboard

https://www.avnet.com/shop/us/products/avnet-engineering-services/aes-s6mb-lx9-g-3074457345628965461/

### kcu1500

https://www.xilinx.com/products/boards-and-kits/dk-u1-kcu1500-g.html

### machXO2_breakout

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/MachXO2BreakoutBoard

### machXO3_breakout

https://www.latticesemi.com/products/developmentboardsandkits/machxo3lfstarterkit

### max1000

https://shop.trenz-electronic.de/en/TEI0001-03-08-C8-MAX1000-IoT-Maker-Board-8KLE-8-MByte-RAM

### nexys_a7

https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum

### nexys_video

https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start

### opos6ul_sp

http://www.armadeus.org/wiki/index.php?title=OPOS6UL_SP

### pipistrello

http://pipistrello.saanlima.com/index.php?title=Welcome_to_Pipistrello

### S7 Mini

https://shop.trenz-electronic.de/en/TE0890-01-25-1C-S7-Mini-Fully-Open-Source-Module-with-Xilinx-Spartan-7-7S25-64-MBit-HyperRAM

### SoCKit Development Kit

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=167&No=816

### spartan_edge_accelerator_board

https://wiki.seeedstudio.com/Spartan-Edge-Accelerator-Board/

### tinyfpga_bx

https://www.crowdsupply.com/tinyfpga/tinyfpga-bx

### ulx3s_*

https://radiona.org/ulx3s

ULX3S comes in different sizes. The targets `ulx3s_45` and `ulx3s_85` are defined for different FPGA sizes

### Upduino 2

http://www.gnarlygrey.com/

### xc6sl9_hseda_eda6.1

http://www.hseda.com/product/xilinx/XC6SLX9COREV1.0/XC6SLX9CORE.htm

### zcu102

https://www.xilinx.com/products/boards-and-kits/zcu102.html

### zcu106

https://www.xilinx.com/products/boards-and-kits/zcu106.html

### zrtech_v2

http://land-boards.com/blwiki/index.php?title=ZrTech_V2_EP4CE6_Cyclone_IV_FPGA_EP4CE6E22C8N_Development_Board_USB_V2

### Zybo Z7-10 & Zybo Z7-20

https://store.digilentinc.com/zybo-z7-zynq-7000-arm-fpga-soc-development-board/

Zybo Z7 comes with two variants of the Zynq SoC. The targets `zybo_z7-10` and `zybo_z7-20` are defined for different SoC configurations.
