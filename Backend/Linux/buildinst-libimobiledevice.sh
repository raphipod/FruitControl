#!/bin/bash

sudo apt install build-essential checkinstall git autoconf automake libtool-bin libssl-dev pkg-config cython3 libusb-1.0-0-dev

git clone https://github.com/libimobiledevice/libplist
git clone https://github.com/libimobiledevice/libusbmuxd
git clone https://github.com/libimobiledevice/libimobiledevice
git clone https://github.com/libimobiledevice/usbmuxd
git clone https://github.com/libimobiledevice/libimobiledevice-glue

cd libplist
./autogen.sh
make && sudo make install
sudo ldconfig
cd ..

cd libusbmuxd
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh
make && sudo make install
sudo ldconfig
cd ..

cd libimobiledevice
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh --enable-debug
make && sudo make install
cd ..

cd usbmuxd
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./autogen.sh --prefix=/usr --sysconfdir=/etc --localstatedir=/var --runstatedir=/run
make && sudo make install
cd ..

cd libimobiledevice-glue
./autogen.sh
make && sudo make install
sudo lconfig
cd ..

sudo killall usbmuxd

rm -fr libplist/ libusbmuxd/ libimobiledevice/ usbmuxd/ libimobiledevice-glue/