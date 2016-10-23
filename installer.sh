#!/usr/bin/env bash


install_main() {
  git clone https://github.com/shotastage/ppap.git $HOME/.Toolchains/ppap/
}

add_path() {
  echo 'export PATH=$HOME/.Toolchains/papp:"${PATH}"' >> $HOME/.bash_profile
}


install_main
add_path
exec bash -l
