echo 'Clonando y compilando Tuna...'
git clone --recursive https://github.com/univrsal/tuna
cd tuna
# La versión de Febrero 2021 de Tuna no compila, así que usamos una de Enero
git reset 3f3e71eff4337deb465990a4d42f1ce285a5e5f3 --hard
# Borramos la palabra clave volatile, que tira error
sed -i 's/# define ATOMIC_INT volatile int/# define ATOMIC_INT int/g' deps/taglib/taglib/toolkit/trefcounter.cpp
mkdir build
cd build
cmake ..
make -j4
sudo make install
mkdir -p ~/.config/obs-studio/plugins/tuna/
cp -r /usr/local/tuna/* ~/.config/obs-studio/plugins/tuna/
cd ../..