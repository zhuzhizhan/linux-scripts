qemu-system-riscv64 -M virt -m 256M -nographic -bios ../opensbi/build/platform/generic/firmware/fw_jump.bin -kernel ../u-boot/u-boot-nodtb.bin -drive file=../buildroot/output/images/rootfs.ext2,format=raw,id=hd0 -device virtio-blk-device,drive=hd0 -append "root=/dev/vda rw console=ttyS0"