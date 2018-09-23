#!/bin/bash
# Automatically install software bundled with Vagrant Box for user

packages="$PWD/.dependencies $PWD/.packages"
software="$PWD/software"

sudo apt-get -y install gcc gdb
git clone https://github.com/longld/peda.git ~/software/peda
git clone https://github.com/radare/radare2.git ~/software/radare2

for dir in "$software"/*; do
    if [[ $dir = "radare2" ]]; then
        sh configure
        make
        make install
    fi
done
#~/radare2/configure
#make -f ~/radare2/Makefile || exit 

echo "source ~/software/peda/peda.py" >> ~/.gdbinit
echo "set number 
set tabstop=4 
set expandtab" >> ~/.vimrc


for package in "$packages"/*; do
    if [[ $package = *.tar.gz ]]; then
        tar -C $packages -zxvf "$package"
        rm $package
    fi
done
