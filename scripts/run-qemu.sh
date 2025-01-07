#!/bin/bash
source scripts/env.sh

sudo qemu-system-x86_64 \
  -drive file=$WORK_DIR/disk.img,format=raw \
  -accel kvm \
  -bios OVMF.fd
