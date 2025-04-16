dir=${APPDIR:-"$HOME/applications"}

mkdir -p $dir/shortcuts
ln -s $dir/shortcuts $HOME/.local/share/applications

sudo pacman -S --noconfirm --needed wget
