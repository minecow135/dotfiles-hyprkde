dir=${APPDIR:-"$HOME/applications"}

mkdir -p $dir/shortcuts
ln -s $dir/shortcuts $HOME/.local/share/applications

mkdir -p $dir/bin

sudo pacman -S --noconfirm --needed wget
