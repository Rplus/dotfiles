#!/bin/sh

# Are you root?
if [ "$(id -u)" == 0 ]; then
  echo "You should not run this script directly as root."
  exit 1
elif ! sudo -v; then
  echo "Please configure sudo correctly before running this script."
  exit 1
fi

sudo add-apt-repository ppa:git-core/ppa -y
# sudo add-apt-repository ppa:rvm/smplayer

# sublime
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update  # To get the latest package lists
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y --ignore-missing arandr bmon wmctrl htop easystroke gcin gparted kazam mupdf shutter synaptic xclip xfce4-time-out-plugin gnome-disk-utility
# gtk-recordmydesktop

# dev
sudo apt-get install -y git gitg gitk tig vim zsh cloc meld jq
# retext
# sudo apt-get install -y nodejs npm
curl -L https://git.io/n-install | bash

# download
sudo apt-get install -y curl axel

# fonts
sudo apt-get remove -y fonts-arphic-ukai fonts-arphic-uming
sudo apt-get install -y --ignore-missing fonts-wqy-microhei fonts-wqy-zenhei gnome-font-viewer font-manager fonts-droid

# draw
sudo apt-get install -y --ignore-missing gimp gpick gpicview graphicsmagick imagemagick viewnior libimage-exiftool-perl inkscape

# life
sudo apt-get install -y cheese vlc
# smplayer smtube vlc

# install Chrome
# cd /tmp
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome-stable_current_amd64.deb
# wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
# sudo dpkg -i google-chrome-unstable_current_amd64.deb

# install sublime text
# sudo apt-get install sublime-text
# wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
# sudo dpkg -i sublime-text_build*

# install nodejs
# sudo npm install -g n gulp webpack grunt browser-sync npm-check semistandard standard-format diff-so-fancy postcss-cli
# sudo n stable
# sudo n lts

# install zsh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# chsh -s $(which zsh)

#etc.
