echo 'Clonando y compilando OBS...'
git clone --recursive https://github.com/obsproject/obs-studio
cd obs-studio
git reset 7a4844e2fcccc40dd36aab8669fdd8426d1293fb --hard
mkdir -p build
cd build
cmake -DUNIX_STRUCTURE=1 -DCMAKE_INSTALL_PREFIX=/usr ..
make -j4
sudo make install
sudo ldconfig
cd ../..