echo 'Clonando y compilando OBS...'
git clone --recursive https://github.com/obsproject/obs-studio
cd obs-studio
mkdir -p build
cd build
cmake -DUNIX_STRUCTURE=1 -DCMAKE_INSTALL_PREFIX=/usr ..
make -j4
sudo make install
sudo ldconfig
cd ../..