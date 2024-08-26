import os
import sys

system_name = "fusesoc_utils_blinky_*"
print("")
print("Build was completed")
print("")
print("To program the board run:")
if sys.argv[1] == 'tinyprog':
    print("tinyprog --program {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'iceprog':
    print("iceprog {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'icesprog':
    print("icesprog {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'ujprog':
    print("ujprog {}".format(os.path.join(os.getcwd(), "Implementation0", system_name+"_Implementation0.bit")))
    print("Other programming options are listed here https://github.com/emard/ulx3s/blob/master/doc/MANUAL.md#programming-options")
elif sys.argv[1] == 'dfu-util':
    print("dfu-util -d 1209:5af0 -D {}".format(os.path.join(os.getcwd(), system_name+".bit")))
elif sys.argv[1] == 'dfu-util-fomu':
    print("Download and install dfu-util from http://dfu-util.sourceforge.net/")
    print("dfu-util -e -d 1209:5bf0 -D {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'quartus-OFL':
    print("  To load SRAM:")
    print("    openFPGALoader -b board_name {}".format(os.path.join(os.getcwd(), system_name+".rbf")))
    print("  To load Flash:")
    print("    openFPGALoader -b board_name -f {}".format(os.path.join(os.getcwd(), system_name+".rpd")))
