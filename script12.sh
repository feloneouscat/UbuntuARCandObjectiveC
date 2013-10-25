export CC=clang
export CXX=clang++

cd core/gui/
make clean
./configure
make
sudo -E make install
sudo ldconfig

