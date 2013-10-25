export CC=clang
export CXX=clang++

cd core/make
make clean
## ./configure --enable-objc-nonfragile-abi --enable-objc-exceptions
##./configure --enable-objc-nonfragile-abi --with-layout=gnustep
./configure --enable-debug-by-default --enable-objc-nonfragile-abi --with-layout=gnustep
make
sudo -E make install

echo ". /usr/GNUstep/System/Library/Makefiles/GNUstep.sh" >> ~/.bashrc
source ~/.bashrc

##### make the text bold and red to stand out
echo -e "\E[1;31;40m"
echo "RED ALERT"
tput sgr0
echo " "

echo "Now open a new shell to complete the remainder of the build"
