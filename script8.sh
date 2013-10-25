export CC=clang
export CXX=clang++


cd gnumake
./configure --enable-objc-nonfragile-abi
make
sudo make install
