#!/bin/bash
 
# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/jenkins/vfs/drive_ccache
export KBUILD_BUILD_USER=Legacy
export KBUILD_BUILD_HOST=LegacyTeam


prebuilts/misc/linux-x86/ccache/ccache -M 240G
 
#repo sync
repo sync -j4
 
# clean
make clean && make clobber
 
cd /home/jenkins/vfs/user_1/validus
 
. build/envsetup.sh
lunch validus_$device-userdebug
make validus -j8


