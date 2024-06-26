#!/usr/bin/python3
# This file made for extracting certain data around 4b96e

import sys
import os

sys.path.append(os.path.dirname(__file__) + '/..')
from common import *

if len(sys.argv) < 3:
    print('Usage: ' + sys.argv[0] + ' romfile startaddress endaddress')
    sys.exit()

romFile = open(sys.argv[1], 'rb')
rom = bytearray(romFile.read())

startAddress = int(sys.argv[2])
endAddress = int(sys.argv[3])

address = startAddress

while address < endAddress:
    print('.db ' + wlahex(rom[address], 2))
    print('.dw ' + wlahex(read16(rom, address+1), 4))
    print()
    address += 3
