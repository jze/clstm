#!/bin/sh

. /build/config.sh

apt-get update -y
apt-get install -y --no-install-recommends $BUILD_PACKAGES

cd /build/

git clone --depth 1 --single-branch --branch 3.3-rc1 "https://github.com/RLovelett/eigen" /usr/local/include/eigen3
git clone --depth 1 --single-branch --branch separate-derivs "https://github.com/tmbdev/clstm.git"
cd clstm
scons hdf5lib=hdf5

find -maxdepth 1 -executable -exec mv {}  /usr/local/bin/ \;
