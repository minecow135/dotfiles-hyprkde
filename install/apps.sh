#!/bin/bash

dir=${DOTFILEDIR:-"$HOME/.dotfiles/"}
mkdir -p $dir

git clone https://github.com/minecow135/dotfiles-hyprkde.git $dir

# run app install script
$dir/install/parts/02_installApps.sh

# run stow script
$dir/stow.sh

# run after stow script
$dir/install/parts/03_afterStow.sh
