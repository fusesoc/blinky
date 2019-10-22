import os
import sys

print("")
print("Build was completed")
print("")
print("To program the board run:")
if sys.argv[1] == 'tinyprog':
    print("tinyprog --program {}".format(os.path.join(os.getcwd(), "fusesoc_utils_blinky_0.bin")))
elif sys.argv[1] == 'iceprog':
    print("iceprog {}".format(os.path.join(os.getcwd(), "fusesoc_utils_blinky_0.bin")))
elif sys.argv[1] == 'ujprog':
    print("ujprog {}".format(os.path.join(os.getcwd(), "Implementation0", "fusesoc_utils_blinky_0_Implementation0.bit")))
    print("Other programming options are listed here https://github.com/emard/ulx3s/blob/master/doc/MANUAL.md#programming-options")
