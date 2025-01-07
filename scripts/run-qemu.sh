#!/bin/bash
source scripts/env.sh

sudo qemu-system-x86_64 -enable-kvm \
  -drive file=$WORK_DIR/disk.img,format=raw \
  -bios OVMF.fd
