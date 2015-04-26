#!/bin/bash

export PATH=/data/bin:$PATH
export USE_CCACHE=1
export CCACHE_DIR=/data/ccache/vatsal
export KBUILD_BUILD_USER=vatsal
export KBUILD_BUILD_HOST=Automation

prebuilts/misc/linux-x86/ccache/ccache -M 60G

make clean

cd /data/vatsal/

. build/envsetup.sh
lunch CM_$device-userdebug
make bacon -j8
