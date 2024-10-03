LED to believe
==============

[![LibreCores](https://www.librecores.org/olofk/led-to-believe/badge.svg?style=flat)](https://www.librecores.org/olofk/led-to-believe)

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

The simulation target depends on the `vlog_tb_utils` core which is found in another library. If you don't already have the `fusesoc-cores` library in your workspace, you can add it with `fusesoc library add fusesoc-cores https://github.com/fusesoc/fusesoc-cores`.

*Example:* To run four pulses with a simulated clock frequency of 4MHz and creating a VCD file, run `fusesoc run --target=sim fusesoc:utils:blinky --pulses=4 --clk_freq_hz=4000000 --vcd`.

The default simulator to use is Icarus Verilog, but other simulators can be used by setting the `--tool` parameter after the `run` command.

Currently supported simulators for this target are icarus, modelsim and xsim. To use e.g. modelsim run `fusesoc run --target=sim --tool=modelsim fusesoc:utils:blinky`.

What to do next
---------------
That was fun, wasn't it? And did you know that once you have gotten a LED to blink in this way, you are actually 90% of the way already to run a small SoC with a RISC-V CPU on the same board. Maybe your board is already supported? Or maybe you're up to the challenge of adding support for it. All it takes is to create a 16MHz clock and allocate an output pin to connect a UART. For more info, move on to learn about and run [SERV](https://github.com/olofk/serv), the world's smallest RISC-V CPU


Board support
-------------

The following boards are currently supported:

### A-C4E6E1 Cyclone IV FPGA EP4CE6E22C8N Development Board

http://land-boards.com/blwiki/index.php?title=A-C4E6_Cyclone_IV_FPGA_EP4CE6E22C8N_Development_Board

### AC701

https://www.xilinx.com/products/boards-and-kits/ek-a7-ac701-g.html

### Altera Agilex 5 FPGA E-Series 065B Premium Development Kit

https://www.intel.com/content/www/us/en/products/details/fpga/development-kits/agilex/a5e065b-premium.html

### AnalogMax

https://www.arrow.com/en/products/tei0001-03-16-c8/trenz-electronic-gmbh

### afp27

http://www.armadeus.org/wiki/index.php?title=APF27

### afp51

http://www.armadeus.org/wiki/index.php?title=APF51

### Alchitry

Supports the Alchitry [Cu](https://alchitry.com/boards/cu), [Au](https://alchitry.com/boards/au), and [Au+](https://www.sparkfun.com/products/17514) boards, plus the [Io Element expansion board](https://alchitry.com/boards/cu-1-1) which can be used by any of the devices.  Use the following targets:

* Cu: `alchitry_cu`
* Cu with Io Element: `alchitry_cu_io`
* Au: `alchitry_au`
* Au+: `alchitry_au_plus`
* Au+ with Io Element: `alchitry_au_plus_io`

All `.bin` files need to be loaded onto the devices using the Alchitry Loader (which is part of [Alchitry Labs](https://alchitry.com/alchitry-labs)).

The cores for the Cu are built using IceStorm, and the cores for the Au and Au+ are built with Xilinx Vivado.  Since Vivado does not recognize the devices natively, when building for the Au pass the `--setup` and `--build` flags.  Otherwise, FuseSoC will fail when trying to load onto the device.

### Alhambra II

https://alhambrabits.com/alhambra/

### arty_a7_35t/arty_a7_100t

https://digilent.com/shop/arty-a7-artix-7-fpga-development-board/

### ax309

http://www.alinx.com/en/index.php/default/content/143.html

### bemicro_max10

https://www.arrow.com/en/products/bemicromax10/arrow-development-tools

### cmod_a7

This are two variants for this board:
- 15t has ~10K LUTs. Use `--target=cmod_a7_15t`
- 35t has ~20K LUTs. Use `--target=cmod_a7_35t`

https://digilent.com/reference/programmable-logic/cmod-a7/reference-manual

### basys3

https://store.digilentinc.com/basys-3-artix-7-fpga-beginner-board-recommended-for-introductory-users/

### c10lp_refkit

https://shop.trenz-electronic.de/en/TEI0009-02-055-8CA-Cyclone-10-LP-RefKit-10CL055-Development-Board-32-MByte-SDRAM-16-MByte-Flash

### Chameleon96 (Arrow 96 CV SoC Board)

https://github.com/SoCFPGA-learning/Chameleon96

### colorlight_5a75b

https://fr.aliexpress.com/item/32281130824.html

### crosslink_nx_evn

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/CrossLink-NXEvaluationBoard

### cyc1000

https://shop.trenz-electronic.de/en/TEI0003-02-CYC1000-with-Cyclone-10-FPGA-8-MByte-SDRAM

### Cisco HWIC-3G-CDMA

https://github.com/tomverbeure/cisco-hwic-3g-cdma

### Waveshare CoreEP4CE10

https://www.waveshare.com/wiki/CoreEP4CE10

### de0_nano

https://www.terasic.com.tw/cgi-bin/page/archive.pl?No=593

### de1_soc

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=165&No=836

### de10_lite

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1021

### de10_nano

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=205&No=1046

### de10_nano_mistral

Build de10_nano bitstream with project [mistral](https://github.com/Ravenslofty/mistral)

### DECA

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=&No=944&PartNo=1

### EBAZ4205 'Development' Board

This development board featuring `Zynq 7010` was the control card of Ebit E9+
BTC miner.

Note: The Zynq PL on this board doesn't have a reference clock without
involving the Zynq PS. To workaround this problem, the onboard 33MHz clock
oscillator can be physically bridged to the PL clock input pin. To do this,
solder a fine wire from R2340 (the clock output of X8) to the PL clock input on
the pad for the missing R1372 near X5.

https://github.com/xjtuecho/EBAZ4205

### ecp5_evn

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/ECP5EvaluationBoard

### EP2C5T144 Development Board

http://land-boards.com/blwiki/index.php?title=Cyclone_II_EP2C5_Mini_Dev_Board

### Fomu

https://tomu.im/fomu.html

### FPC-III

https://repo.or.cz/fpc-iii.git

### GMM-7550

https://www.gmm7550.dev/

### Nandland Go Board

https://www.nandland.com/goboard/introduction.html

### ice40hx1k_evb

https://www.olimex.com/wiki/ICE40HX1K-EVB

### ice40-hx8k_breakout

http://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/iCE40HX8KBreakoutBoard.aspx

### iCEBreaker FPGA

https://www.crowdsupply.com/1bitsquared/icebreaker-fpga

### iceFUN

https://www.robot-electronics.co.uk/products/fpga/icefun.html

### iceWerx

https://www.robot-electronics.co.uk/icewerx.html

### lx9_microboard

https://www.avnet.com/shop/us/products/avnet-engineering-services/aes-s6mb-lx9-g-3074457345628965461/

### kcu1500

https://www.xilinx.com/products/boards-and-kits/dk-u1-kcu1500-g.html

### Machdyne Brot

https://github.com/machdyne/brot

### Machdyne Eis

https://github.com/machdyne/eis

### Machdyne Kolibri

https://github.com/machdyne/kolibri

### Machdyne Konfekt

https://github.com/machdyne/konfekt

### Machdyne Kuchen

https://github.com/machdyne/kuchen

### Machdyne Minze

https://github.com/machdyne/minze

### Machdyne Noir

https://github.com/machdyne/noir

### Machdyne Riegel

https://github.com/machdyne/riegel

### Machdyne Schoko

https://github.com/machdyne/schoko

### machXO2_breakout

https://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/MachXO2BreakoutBoard

### machXO3_breakout

https://www.latticesemi.com/products/developmentboardsandkits/machxo3lfstarterkit

### max10_10m08evk

https://www.intel.com/content/www/us/en/products/details/fpga/development-kits/max/10m08-evaluation-kit.html 

### max10_10m50evk

https://www.intel.com/content/www/us/en/products/details/fpga/development-kits/max/10m50-evaluation-kit.html 

### max1000

https://shop.trenz-electronic.de/en/TEI0001-03-08-C8-MAX1000-IoT-Maker-Board-8KLE-8-MByte-RAM

### Microsemi Polarfire Evaluation Kit

https://www.microsemi.com/existing-parts/parts/150789

### Microsemi Polarfire Splash Kit

https://www.microchip.com/en-us/development-tool/mpf300-splash-kit

### MYIR FZ3 - Deep Learning Accelerator Card

http://www.myirtech.com/list.asp?id=630

### nexys_2

There are two vairants available for NEXYS 2 board

- For Nexys 2-500 : Use `--target=nexys_2_500`
- For Nexys 2-1200 : Use `--target=nexys_2_1200`

https://digilent.com/reference/programmable-logic/nexys-2/start

### nexys_4

https://reference.digilentinc.com/reference/programmable-logic/nexys-4/start

### nexys_a7

https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum

### nexys_video

https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start

### nitefury_ii

https://rhsresearch.com/collections/rhs-public/products/nitefury-xilinx-artix-fpga-kit-in-nvme-ssd-form-factor-2280-key-m
https://github.com/RHSResearchLLC/NiteFury-and-LiteFury

### opos6ul_sp

http://www.armadeus.org/wiki/index.php?title=OPOS6UL_SP

### pipistrello

http://pipistrello.saanlima.com/index.php?title=Welcome_to_Pipistrello

### qmtech_5cefa5f23
https://github.com/ChinaQMTECH/QM_CYCLONE_V/tree/master/5CEFA5F23

This example use [mistral toolchain](https://github.com/Ravenslofty/mistral)

### QMTECH Wukong Board Artix-7 XC7A100T & XC7A200T
The Wukong board have two revisions : [Artix-7 XC7A100T](https://github.com/ChinaQMTECH/QM_XC7A100T_WUKONG_BOARD/blob/master/QMTECH_Artix-7_XC7A100T_Wukong_Board_User_Manual(Hardware)_V01.pdf) and Artix-7 XC7A[100T](https://github.com/ChinaQMTECH/XC7A100T-200T_Wukong_Board/blob/main/User_Manual_XC7A100T/QMTECH_Artix-7_XC7A100T_Wukong_Board_V2_User_Manual(Hardware)_V01.pdf)-[200T](https://github.com/ChinaQMTECH/XC7A100T-200T_Wukong_Board/blob/main/User_Manual_XC7A200T/QMTECH_Artix-7_XC7A200T_Wukong_Board_V2_User_Manual(Hardware)_V01.pdf) . The first revision have the 50 MHz clock on the wrong pin and don't have micro sd. 

Targets are `Wukong_v1` for revision 1 , `Wukong_100t_v2` and `Wukong_200t_v2` for revision 2. Those boards can be programmed with openFPGALoader.  

### RZ-EasyFPGA A2.x

http://fpga.redliquid.pl/

### S7 Mini

https://shop.trenz-electronic.de/en/TE0890-01-25-1C-S7-Mini-Fully-Open-Source-Module-with-Xilinx-Spartan-7-7S25-64-MBit-HyperRAM

### SoCKit Development Kit

https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=167&No=816

### spartan_edge_accelerator_board

https://wiki.seeedstudio.com/Spartan-Edge-Accelerator-Board/

### tang_nano

https://tangnano.sipeed.com/en/

### tinyfpga_bx

https://www.crowdsupply.com/tinyfpga/tinyfpga-bx

### ultra96_v2

https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/ultra96-v2/

Note: There is no on-board clock for Zynq PL. Therefore, in this example PL clock is generated and supplied from
Zynq PS in the block design. Block design tcl script is generated on Vivado 2020.2. If you have an other version
of Vivado installation, you should just create and export the block design bd_ultra96_v2.tcl with fabric clock
PL0 is enabled and made external.

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

http://land-boards.com/blwiki/index.php?title=Cyclone_IV_FPGA_EP4CE6E22C8N_Development_Board_USB_V2

### Zybo Z7-10 & Zybo Z7-20

https://store.digilentinc.com/zybo-z7-zynq-7000-arm-fpga-soc-development-board/

Zybo Z7 comes with two variants of the Zynq SoC. The targets `zybo_z7-10` and `zybo_z7-20` are defined for different SoC configurations.
