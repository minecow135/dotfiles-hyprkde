#!/bin/bash

while getopts ":n" opt; do
  case $opt in
      n) NORESTART=1 ;;
      ?) echo "ERROR: Invalid option '-$OPTARG' (Valid: n)" >&2; exit 1 ;;
  esac
done

dir=${DOTFILEDIR:-"$HOME/.dotfiles/"}
mkdir -p $dir

git clone https://github.com/minecow135/dotfiles-hyprkde.git $dir

# run archinstall script
$dir/install/parts/01_archinstall.sh

if [[ -z $NORESTART ]]
then
  reboot
fi
