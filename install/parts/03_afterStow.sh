#!/bin/bash

dir=${DOTFILEDIR:-"$HOME/.dotfiles/"}

appDir=$dir/install/parts/apps/afterstow/
InstalledDir=$dir/install/parts/installedApps/install/

if [ ! -d $InstalledDir ]
then
  mkdir -p $InstalledDir
fi

for file in $appDir*
do   
  if [ -f "$file" ]
  then 
    fileName=${file/$appDir/}
    installedName=$InstalledDir/$fileName
    
    if [ -f $installedName ]
    then
      echo "$fileName already installed"
    else
      echo "Installing $fileName"

      sh $file

      cp $file $InstalledDir
    fi
  fi
done

