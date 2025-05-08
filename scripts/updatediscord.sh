dir=${DOTFILEDIR:-$HOME/.dotfiles}/install/parts/apps/install
appdir=${APPDIR:-$HOME/applications}

betterdiscord=$appdir/betterdiscord

pwd=$PWD

sh $dir/161_discord.sh

timeout 10 discord

cd $betterdiscord

git fetch
git pull

pnpm install
pnpm build
pnpm inject

cd $pwd
