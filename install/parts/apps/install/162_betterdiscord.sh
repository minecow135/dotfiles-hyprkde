pwd=$PWD
dir=${APPDIR:-$HOME/applications}/betterdiscord

sudo pacman -S --noconfirm --needed npm
sudo npm install -g pnpm

git clone --single-branch -b main https://github.com/BetterDiscord/BetterDiscord.git $dir

cd $dir
pnpm install
pnpm build
pnpm inject

cd $pwd

