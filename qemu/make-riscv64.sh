cd ../opensbi
./make-riscv64.sh
cd ../u-boot
./make-riscv64.sh
cd ../linux
./make-riscv64.sh
cd ../buildroot
cp ../configs/buildroot/riscv64_defconfig .config
make -j16
cp ../linux/arch/riscv/boot/Image.gz ./output/target/
make -j16
cd ../qemu
