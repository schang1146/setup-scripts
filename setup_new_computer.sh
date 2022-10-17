#!/bin/bash

VERSION="v0.0.1"
#===============================================================================
# title           setup-new-computer.sh
# author          Sammy Chang
#                 https://github.com/schang1146
# thanks to       Joel Kesler
#                 https://github.com/joelkesler
#===============================================================================
#   A shell script to help with the quick setup and installation of tools and 
#   applications for new developers at Vendasta.
# 
#   Quick Instructions:
#
#   1. Make the script executable:
#      chmod +x ./setup-new-computer.sh
#
#   2. Run the script:
#      ./setup-new-computer.sh
#
#   3. Some installs will need your password
#
#   4. You will be promted to fill out your git email and name. 
#      Use the email and name you use for Github
#
#   5. Follow the Post Installation Instructions in the Readme:
#      "https://github.com/schang1146/setup-scripts#post-installation-instructions"
#  
#===============================================================================

# Ubuntu 22.04

# update packages
sudo apt -y update
sudo apt -y upgrade

# check if you have snap

# download software with snap
# git
sudo apt -y install git-all
# vscode
sudo snap install --classic code
# spotify
sudo snap install spotify
# bitwarden
sudo snap install bitwarden
# kdenlive
sudo snap install kdenlive
# slack
sudo snap install slack
# obsidian
# v1.0.0 requires downloading the *.snap file from their website
sudo snap install --dangerous --classic obsidian_1.0.0_amd64.snap
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
# discord
sudo snap install discord
# azure data studio
# requires download *.deb file into current working directory
sudo dpkg -i azuredatastudio-linux-<version string>.deb
rm azuredatastudio-linux-<version string>.deb
# obs studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install ffmpeg obs-studio
# vlc media player
sudo snap install vlc
# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
# pyenv
sudo apt install curl # curl did not come standard with Ubuntu 22.04
curl https://pyenv.run | bash
echo '' >> ~/.bashrc
echo '# pyenv setup' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo '' >> ~/.profile
echo '# pyenv setup' >> ~/.profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
