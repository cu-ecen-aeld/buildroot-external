#!/bin/bash
qemu-system-x86_64 -curses -drive format=raw,file=buildroot/output/images/project.hdimg
