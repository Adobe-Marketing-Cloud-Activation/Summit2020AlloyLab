#!/bin/sh

if [ -d ~/Desktop/Summit2020AlloyLab ]
then
    rm -Rf ~/Desktop/Summit2020AlloyLab
fi

function print {
    msg=$1
    echo "\n----------------------"
    echo ${msg}
    echo "----------------------\n"
}

function openBrowser {
    print "Opening Chrome Tabs..."
    open -a Google\ Chrome "http://launch.adobe.com/"
    open -a Google\ Chrome "http://alloyio.com:8080"
}

print "Cloning the lab's repo..."
cd ~/Desktop
git clone --recurse-submodules https://github.com/Adobe-Marketing-Cloud-Activation/Summit2020AlloyLab.git Summit2020AlloyLab
cd Summit2020AlloyLab
git fetch --all
git pull 

print "Installing dependencies..."
npm i

print "Starting the lab's website..."
npm run start | openBrowser

exit
