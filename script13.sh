export CC=clang
export CXX=clang++

cd core/back/
make clean
./configure
make
sudo -E make install
sudo ldconfig

