#!/bin/bash
 
# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/jenkins/vfs/drive_ccache
export KBUILD_BUILD_USER=Vatsal
export KBUILD_BUILD_HOST=BuildBot


prebuilts/misc/linux-x86/ccache/ccache -M 490G
 
#repo sync
repo sync -j4
 
# clean
make clean && make clobber
 
cd /home/jenkins/vfs/user_1/pac
. build/envsetup.sh
lunch cm_$device-userdebug
make bacon -j9


