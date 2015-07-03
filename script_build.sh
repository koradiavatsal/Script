#!/bin/bash
 
# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/jenkins/vfs/drive_ccache
export KBUILD_BUILD_USER=Legacy
export KBUILD_BUILD_HOST=LegacyTeam


prebuilts/misc/linux-x86/ccache/ccache -M 490G
 
#repo sync
repo sync -j4
 
# clean
make clean && make clobber
 
cd /home/jenkins/vfs/user_1/<folder name>
 
. build/envsetup.sh
lunch <rom name>_$device-userdebug
make bacon -j8


