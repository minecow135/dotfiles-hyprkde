#!/bin/bash

while getopts ":nld:" opt; do
  case $opt in
    n) NORESTART=1 ;;
    l) LOCAL=1 ;;
    d) DIR=$OPTARG ;;
    :) echo "ERROR: Option '-$OPTARG' requires an argument" >&2; exit 1 ;;
    ?) echo "ERROR: Invalid option '-$OPTARG' (Valid: n, l, d)" >&2; exit 1 ;;
  esac
done

if [[ $DIR ]]
then
  dir=$DIR
else
  dir=${DOTFILEDIR:-"$HOME/.dotfiles/"}
fi

echo $dir

if [[ -z $LOCAL ]]
then
  mkdir -p $dir
  git clone https://github.com/minecow135/dotfiles-hyprkde.git $dir
fi

# run archinstall script
$dir/install/parts/01_archinstall.sh

if [[ -z $NORESTART ]]
then
  reboot
fi
