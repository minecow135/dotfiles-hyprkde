dir=${APPDIR:-"$HOME/applications"}
app="mixingstation"
url=""https://mixingstation.app/backend/api/web/download/update/mixing-station-pc/release
format="zip"
executable=
folder=true

if [ -d $dir/$app ]
then
  echo "Moving old version to /tmp/$app-old"
  if [ -d /tmp/$app-old ]
  then
    rm -rf /tmp/$app-old
  fi
  mv $dir/$app "/tmp/$app-old"
fi

#wget $url -O /tmp/$app.$format

mkdir /tmp/$app-download

if [ $format = "tar.gz" ]
then
  tar -xvzf "/tmp/$app.$format" -C "/tmp/$app-download/"
elif [ $format = "zip" ]
then
  unzip "/tmp/$app.$format" -d "/tmp/$app-download/"
fi  

if [ $folder ]
then
  mkdir "$dir/$app"
fi

mv /tmp/$app-download/* "$dir/$app/"

if [ -f $DOTFILEDIR/launch/$app/generatedesktop.sh ] && [ ! -f $dir/shortcuts/$app.desktop ]
then
  sh "$DOTFILEDIR/launch/$app/generatedesktop.sh"
fi

if [ $executable ] && [ ! -f $dir/bin/$executable ]
then
  ln -s "$dir/$app/$executable" $dir/bin/$app
fi

#rm -rf /tmp/$app.$format
rm -rf /tmp/$app-download

