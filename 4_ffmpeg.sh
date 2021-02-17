echo 'Clonando y compilando FFMpeg...'
git clone --depth 1 https://github.com/FFmpeg/FFmpeg
cd FFmpeg
./configure \
	--extra-cflags="-I/usr/local/include" \
	--extra-ldflags="-L/usr/local/lib -latomic" \
	--extra-libs="-lpthread -lm" \
	--arch=armel \
	--enable-shared \
	--enable-libv4l2 \
	--enable-gmp \
	--enable-gpl \
	--enable-libaom \
	--enable-libass \
	--enable-libdav1d \
	--enable-libdrm \
	--enable-libfdk-aac \
	--enable-libfreetype \
	--enable-libkvazaar \
	--enable-libmp3lame \
	--enable-libopencore-amrnb \
	--enable-libopencore-amrwb \
	--enable-libopus \
	--enable-librtmp \
	--enable-libsnappy \
	--enable-libsoxr \
	--enable-libssh \
	--enable-libvorbis \
	--enable-libvpx \
	--enable-libwebp \
	--enable-libzimg \
	--enable-libx264 \
	--enable-libx265 \
	--enable-libxml2 \
	--enable-mmal \
	--enable-nonfree \
	--enable-omx \
	--enable-omx-rpi \
	--enable-version3 \
	--target-os=linux \
	--enable-pthreads \
	--enable-openssl \
	--enable-hardcoded-tables
make -j4
sudo make install
sudo ldconfig
cd ..