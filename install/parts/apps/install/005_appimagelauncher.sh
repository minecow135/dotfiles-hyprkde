dir=${DOTFILEDIR:-$HOME/.dotfiles}

yay -S --answerdiff None --answerclean None --removemake --noconfirm appimagelauncher

cp $dir/install/parts/lib/appimagelauncher.cfg $HOME/.config/

