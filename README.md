Usage:

export BR2_EXTERNAL=$(pwd)
cd $BR2_DIR
make opi_zero_defconfig
make menuconfig #optional
make

generated image will be in output/images

to commit buildroot config back to the defconfig,
make savedefconfig

