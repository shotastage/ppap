#!/usr/bin/env bash


install_main() {
  git clone https://github.com/shotastage/ppap.git $HOME/.Toolchains/ppap/
}

add_path() {
  if [ -e $HOME/.bash_profile ]; then
    echo 'export PATH=$HOME/.Toolchains/ppap:"${PATH}"' >> $HOME/.bash_profile
  elif [ -e $HOME/.bashrc ]; then
    echo 'export PATH=$HOME/.Toolchains/ppap:"${PATH}"' >> $HOME/.bash_profile
  elif [ -e $HOME/.config/fish/config.fish ]; then
    echo 'set -x PATH $HOME/.Toolchains/ppap $PATH'
  else 
    echo ""
    exit 1
  fi

}


install_main
add_path
exec bash -l
