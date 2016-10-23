#!/usr/bin/env bash


install_main() {
  mkdir .install_tmp
  cd .install_tmp
  git clone https://github.com/shotastage/ppap.git $HOME/.Toolchains/papp/
  cd ..
}

add_path() {
  echo 'export PATH=$HOME/.Toolchains/papp:"${PATH}"' >> $HOME/.bash_profile
}


install_main
add_path
exec bash -l
