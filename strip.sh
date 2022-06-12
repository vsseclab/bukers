KDIRECT=$pwd
KERN_IMG=$KDIRECT/out/arch/arm/boot/Image.gz-dtb
ZIP_DIR=$HOME/sdirect/AnyKernel
CONFIG_DIR=$KDIRECT/arch/arm/configs
CONFIG=viper_defconfig
CORES=$(grep -c ^processor /proc/cpuinfo)
THREAD="-j$CORES"
# PATH
CROSS_COMPILE+="ccache "
CROSS_COMPILE+="~/kdirect/gcc64/bin/aarch64-linux-android-"
CROSS_COMPILE_ARM32+="~/kdirect/gcc32/bin/arm-linux-androideabi-"
CROSSC=aarch64-linux-android-
CROSSC32=arm-linux-androideabi-
# Export
export ARCH=arm
export SUBARCH=arm
export PATH=$HOME/bin:/usr/lib/ccache:$CROSSC:$CROSSC32:$PATH
export CROSS_COMPILE
export CROSS_COMPILE_ARM32
export KBUILD_BUILD_USER=B4gol
export KBUILD_BUILD_HOST=CircleCI
##