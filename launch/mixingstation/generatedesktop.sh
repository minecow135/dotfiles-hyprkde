dir=${APPDIR:-$HOME/applications}
dotdir=${DOTFILEDIR:-$HOME/.dotfiles}

cat >$dir/shortcuts/discord.desktop <<EOF
[Desktop Entry]

Type=Application
Name=Mixing station
Comment=Mixer controller app
Path=${dotdir}/launch/mixingstation/
Exec=sh ${dotdir}/launch/mixingstation/mixingstation.sh
Icon=${dotdir}/launch/mixingstation/mixingstation.png
Terminal=false
Categories=audio;
X-Desktop-File-Install-Version=0.28
EOF

