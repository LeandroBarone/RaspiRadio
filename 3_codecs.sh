echo 'Clonando y compilando codecs...'

# FDK-AAC
git clone --depth 1 https://github.com/mstorsjo/fdk-aac
cd fdk-aac
git reset 6a2eb8b30f4a65d3b9b0422bf14eaf7007149ffd --hard
autoreconf -fiv
./configure --enable-shared
make -j4
sudo make install
cd ..

# DAV1D
git clone --depth 1 https://code.videolan.org/videolan/dav1d
cd dav1d
git reset 1d6aae4795a3e59ec4b416c0c3a22530a51fd471 --hard
mkdir -p build
cd build
meson ..
ninja
sudo ninja install
cd ../..

# KVAZAAR
git clone --depth 1 https://github.com/ultravideo/kvazaar
cd kvazaar
git reset bf0bf73665872d1b65061c5a71c3ac3eaa2c9a7a --hard
./autogen.sh
./configure --enable-shared
make -j4
sudo make install
cd ..

# LIBVPX
git clone --depth 1 https://chromium.googlesource.com/webm/libvpx
cd libvpx
git reset 24bd0733efad6ee63eda3c49ecb730e316eb2483 --hard
./configure --disable-examples --disable-tools --disable-unit_tests --disable-docs --enable-shared
make -j4
sudo make install
cd ..

# ZIMG
git clone --depth 1 https://github.com/sekrit-twc/zimg
cd zimg
git reset c0d9c49ec157fc0708129a2bb6ca8906e85eb0f0 --hard
./autogen.sh
./configure --enable-shared
make -j4
sudo make install
cd ..