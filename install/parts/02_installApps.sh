#!/bin/bash

dir=${DOTFILEDIR:-"$HOME/.dotfiles/"}

appDir=$dir/install/parts/apps/
InstalledDir=$dir/install/parts/installedApps/

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

