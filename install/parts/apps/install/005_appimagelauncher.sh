dir=${DOTFILEDIR:-$HOME/.dotfiles}

yay -S --answerdiff None --answerclean None --removemake --noconfirm appimagelauncher

cp $dir/install/copy/dot-config/appimagelauncher.cfg $HOME/.config/

