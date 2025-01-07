build:
	cargo build --bin bootloader

run: build
	./scripts/make-qemu-disk.sh
	./scripts/run-qemu.sh
