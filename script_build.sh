#!/bin/bash
 
# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache
export KBUILD_BUILD_USER=Vatsal
export KBUILD_BUILD_HOST=Automation

prebuilts/misc/linux-x86/ccache/ccache -M 500G
 
# clean
make clean && make clobber
 
# build
. build/envsetup.sh
lunch cm_$device-userdebug
make bacon -j8
