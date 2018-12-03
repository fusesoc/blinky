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
