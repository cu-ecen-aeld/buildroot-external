#!/bin/bash
# TODO: add all other configuration save commands here for any other modified configs
make -C buildroot savedefconfig BR2_DEFCONFIG=../base_external/configs/x86_64_qemu_defconfig
make -C buildroot linux-update-defconfig
