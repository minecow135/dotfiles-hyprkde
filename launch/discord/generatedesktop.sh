dir=${APPDIR:-$HOME/applications}

cat >$dir/shortcuts/discord.desktop <<EOF
[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=${dir}/discord/Discord
Icon=${dir}/discord/discord.png
Type=Application
Categories=Network;InstantMessaging;
Path=${dir}/discord/
EOF

