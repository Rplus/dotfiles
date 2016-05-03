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
sudo apt-get update  # To get the latest package lists
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y arandr bmon wmctrl curl htop easystroke gcin git gitg gitk tig gparted gtk-recordmydesktop kazam mupdf meld nodejs retext shutter synaptic vim xclip xfce4-time-out-plugin zsh ruby ruby-full

# fonts
sudo apt-get remove -y fonts-arphic-ukai fonts-arphic-uming
sudo apt-get install -y fonts-wqy-microhei fonts-wqy-zenhei gnome-font-viewer font-manager fonts-droid

# draw
sudo apt-get install -y gimp gpick gpicview gcolor2 graphicsmagick imagemagick inkscape npm

# life
sudo apt-get install -y cheese comix mplayer2 smplayer smtube vlc

# install Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
sudo dpkg -i google-chrome-unstable_current_amd64.deb

# install sublime text
cd /tmp
wget https://download.sublimetext.com/sublime-text_build-3103_amd64.deb
sudo dpkg -i sublime-text_build-3103_amd64.deb

# install nodejs
sudo npm install -g n gulp webpack grunt browser-sync npm-check semistandard standard-format diff-so-fancy postcss-cli
sudo n stable
sudo n lts

# install ruby
# curl -L https://get.rvm.io | sudo bash -s stable
# rvm requirements
# rvm install stable

# install jekyll & github-pages
gem install jekyll
gem install github-pages

# install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#etc.
