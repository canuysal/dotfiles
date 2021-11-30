#!/bin/bash


sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt update
sudo apt install -y i3-gaps feh rofi arandr playerctl

# polybar
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh

# install much needed calculator mode
sudo apt install rofi-dev qalc libtool
git clone https://github.com/svenstaro/rofi-calc
cd rofi-calc
autoreconf -i
mkdir build
cd build/
../configure
make
sudo make install

