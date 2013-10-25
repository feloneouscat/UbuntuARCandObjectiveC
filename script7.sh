echo "export CC=clang"  >> ~/.bashrc
echo "export CXX=clang++" >> ~/.bashrc

source ~/.bashrc
export CC=clang
export CXX=clang++

cd libobjc2
rm -rf build
mkdir build
cd build
cmake ..
make debug=no 
sudo -E make install

