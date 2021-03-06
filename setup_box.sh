#!/bin/bash
# Automatically install software bundled with Vagrant Box for user

move_folders(){
echo "Moving folders to home directory..."

#TODO Make this dynamic
cp -r /vagrant/challenges ~/
cp -r /vagrant/scripts ~/
cp -r /vagrant/tutorials ~/

echo "Done moving folders."
}

install_tools(){
echo "Installing tools..."

sudo apt-get -y install gcc gdb gcc-multilib
git clone https://github.com/longld/peda.git ~/software/peda
#git clone https://github.com/radare/radare2.git ~/software/radare2



for directory in "$PWD/software"/*; do
    if [ -e "$directory"/configure ]; then
        (cd -- "$directory" && sh configure)
        (cd -- "$directory" && make)
        (cd -- "$directory" && sudo make install)
    fi
done

echo "source ~/software/peda/peda.py" >> ~/.gdbinit
echo "set number autoindent tabstop=4 noexpandtab shiftwidth=4" >> ~/.vimrc

echo "Done installing tools."
}

setup_challenges(){
echo "Setting up challenges..."

for directory in "~/challenges"/*; do
    if [ -e "$directory"/makefile ]; then
        (cd ${0%/*} && make)
    fi
done

echo "Done setting up challenges."
}


##################################
# Main body of script starts here#
##################################
move_folders
install_tools
setup_challenges
