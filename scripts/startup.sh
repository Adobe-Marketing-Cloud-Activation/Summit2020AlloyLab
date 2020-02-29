#!/bin/sh

# Remove the directory if already there to get a fresh copy
if [ -d ~/Desktop/Summit2020AlloyLab ]
then
    echo "Folder Already Exists"
    rm -Rf ~/Desktop/Summit2020AlloyLab
fi

# Pull the most recent version of the Lab File
echo "Download Lab Assets"
cd ~/Desktop
git clone --recurse-submodules https://github.com/Adobe-Marketing-Cloud-Activation/Summit2020AlloyLab.git Summit2020AlloyLab
cd Summit2020AlloyLab
git fetch --all
git pull 
npm i
npm run start
# cd site
# git submodule init
# git submodule update

# Launch the localhost pages
echo "Open Chrome Tabs"
open -a Google\ Chrome "http://launch.adobe.com/"
open -a Google\ Chrome "http://alloyio.com:8080"
# open -a Google\ Chrome "http://bit.ly/Lab779"

exit