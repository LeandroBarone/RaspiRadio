echo 'Clonando y compilando x264...'
git clone https://code.videolan.org/videolan/x264/
cd x264
git reset ca5408b13cf0e58a7505051861f20a63a7a6aec1 --hard
./configure --enable-shared --enable-pic --disable-cli
make -j4
sudo make install
sudo ldconfig
cd ..