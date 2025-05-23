dir=${APPDIR:-"$HOME/applications"}
app="discord"
url="https://discord.com/api/download?platform=linux&format=tar.gz"
format="tar.gz"
executable=Discord

if [ -d $dir/$app ]
then
  echo "Moving old version to /tmp/$app-old"
  if [ -d /tmp/$app-old ]
  then
    rm -rf /tmp/$app-old
  fi
  mv $dir/$app "/tmp/$app-old"
fi

wget $url -O /tmp/$app.$format

mkdir /tmp/$app-download

tar -xvzf "/tmp/$app.$format" -C "/tmp/$app-download/"

mv /tmp/$app-download/** "$dir/$app/"

if [ -f $DOTFILEDIR/launch/$app/generatedesktop.sh ] && [ ! -f $dir/shortcuts/$app.desktop ]
then
  sh "$DOTFILEDIR/launch/$app/generatedesktop.sh"
fi

if [ ! -f $dir/bin/$executable ]
then
  ln -s "$dir/$app/$executable" $dir/bin/$app
fi

rm -rf /tmp/$app.$format
rm -rf /tmp/$app-download

