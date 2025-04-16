pwd=$PWD

git clone --single-branch -b main https://github.com/BetterDiscord/BetterDiscord.git /tmp/BetterDiscord-download

cd /tmp/BetterDiscord-download
pnpm install
pnpm build
pnpm inject

cd $pwd

rm -rf /tmp/BetterDiscord-download/

