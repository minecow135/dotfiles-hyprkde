#!/usr/bin/env bash

dir=$PWD
cd $DOTFILEDIR

# fetch new updates
git fetch
git pull

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# what directories should be installable by all users including the root user
base=(
    home
)

# folders that should, or only need to be installed for a local user
#useronly=(
#    git
#)

#root=(
#    test
#)

# run the stow command for the passed in directory ($2) in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R --dotfiles -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install apps available to local users and root
for app in ${base[@]}; do
    stowit "${HOME}" $app 
done

# install only user space folders
for app in ${useronly[@]}; do
    if [[! "$(whoami)" = *"root"*]]; then
        stowit "${HOME}" $app 
    fi
done

cd $dir

echo ""
echo "##### ALL DONE"

