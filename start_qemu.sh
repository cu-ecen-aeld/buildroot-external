#!/bin/bash
DRIVE="-drive format=raw,file=buildroot/output/images/project.hdimg"
qemu-system-x86_64 -curses ${DRIVE}
