dir=${DOTFILEDIR:-$HOME/.dotfiles}/install/parts/apps/install
appdir=${APPDIR:-$HOME/applications}

betterdiscord=$appdir/betterdiscord

pwd=$PWD

sh $dir/161_discord.sh

cd $betterdiscord
pnpm inject

cd $pwd
