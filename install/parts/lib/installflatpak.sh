app=$1
appname=$2

dir=${APPDIR:-"$HOME/applications"}
mkdir -p $dir/flatpak/run

flatpak install -uy flathub $app

cat >$dir/flatpak/run/$app <<EOF
flatpak run $app
EOF

ln -s $dir/flatpak/run/$app $dir/bin/$appname
