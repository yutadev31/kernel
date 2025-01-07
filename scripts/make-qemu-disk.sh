#!/bin/bash
source scripts/env.sh

mkdir -p $WORK_DIR
qemu-img create -f raw $WORK_DIR/disk.img 200M
sudo mkfs.fat -s 2 -f 2 -R 32 -F 32 $WORK_DIR/disk.img

sudo mount --mkdir -o loop $WORK_DIR/disk.img $MOUNT_POINT
sudo mkdir -p $MOUNT_POINT/EFI/BOOT
sudo cp target/x86_64-unknown-none/debug/kernel $MOUNT_POINT/EFI/BOOT/BOOTX64.EFI
sudo umount $MOUNT_POINT
sudo rm -rf $MOUNT_POINT
