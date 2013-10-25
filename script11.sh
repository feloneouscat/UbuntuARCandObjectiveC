export CC=clang
export CXX=clang++

cd core/base/
make clean
./configure --disable-mixedabi
make
sudo -E make install
sudo ldconfig

