echo 'Clonando y compilando codecs...'

# FDK-AAC
git clone --depth 1 https://github.com/mstorsjo/fdk-aac
cd fdk-aac
autoreconf -fiv
./configure --enable-shared
make -j4
sudo make install
cd ..

# DAV1D
git clone --depth 1 https://code.videolan.org/videolan/dav1d
cd dav1d
mkdir -p build
cd build
meson ..
ninja
sudo ninja install
cd ../..

# KVAZAAR
git clone --depth 1 https://github.com/ultravideo/kvazaar
cd kvazaar
./autogen.sh
./configure --enable-shared
make -j4
sudo make install
cd ..

# LIBVPX
git clone --depth 1 https://chromium.googlesource.com/webm/libvpx
cd libvpx
./configure --disable-examples --disable-tools --disable-unit_tests --disable-docs --enable-shared
make -j4
sudo make install
cd ..

# ZIMG
git clone --depth 1 https://github.com/sekrit-twc/zimg
cd zimg
./autogen.sh
./configure --enable-shared
make -j4
sudo make install
cd ..

# X264
wget http://anduin.linuxfromscratch.org/BLFS/x264/x264-20200218.tar.xz
tar -xf x264-20200218.tar.xz
cd x264-20200218
./configure --enable-shared --enable-pic --disable-cli
make -j4
sudo make install
sudo ldconfig
cd ..