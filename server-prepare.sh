#!/bin/bash

# Import Colors
source <(wget -qO- 'https://raw.githubusercontent.com/LorisG1/Ritual/refs/heads/main/bash-colors.sh')

cd $HOME

#Ubuntu update and upgrade
print_header "Updating and Upgrading server..."
sudo apt update && sudo apt upgrade -y


#Install software
print_header "Installing dependencies to server..."
sudo apt install curl mc git jq screen lz4 build-essential htop zip unzip wget rsync ufw snapd make gcc tmux -y
sudo snap install yq

#Install screen
sudo apt install screen -y && screen -Rd ritual
