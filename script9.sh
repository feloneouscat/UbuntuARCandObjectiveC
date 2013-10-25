export CC=clang
export CXX=clang++

cd libdispatch
make clean
sh autogen.sh
./configure CFLAGS="-I/usr/include/kqueue" LDFLAGS="-lkqueue -lpthread_workqueue -pthread -lm"
make
sudo -E make install
sudo ldconfig

