build:
	cargo build

run: build
	./scripts/make-qemu-disk.sh
	./scripts/run-qemu.sh
