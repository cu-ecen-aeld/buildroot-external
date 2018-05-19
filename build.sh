#!/bin/bash
BUILDROOT_DIR=buildroot
EXTERNAL_DIR=base_external
EXTERNAL_DIR_BR_RELATIVE=../${EXTERNAL_DIR}
DEFCONFIG=${EXTERNAL_DIR}/configs/x86_64_qemu_defconfig

set -e
if [ ! -e ${BUILDROOT_DIR}/.config ]; then
    echo "Missing buildroot configuration, using defconfig"
    make -C ${BUILDROOT_DIR}
    make defconfig BR2_DEFCONFIG=${DEFCONFIG}
else
    echo "Using existing buildroot config.  To force update, delete ${BUILDROOT_DIR}/.config"
fi

make -C ${BUILDROOT_DIR} BR2_EXTERNAL=${EXTERNAL_DIR_BR_RELATIVE}
