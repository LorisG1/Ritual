#!/bin/bash
PROJECT_NAME="Ritual"


echo ""
echo -e "\e[1m\e[32m###########################################################################################"
echo -e "\e[1m\e[32m### Installing Foundry node... \e[0m" && sleep 1
echo ""
## Install Foundry
cd
mkdir foundry
cd foundry
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup


# Install the necessary dependencies  
cd ~/infernet-container-starter/projects/hello-world/contracts
forge install --no-git foundry-rs/forge-std
rm /usr/bin/forge
export PATH="/root/.foundry/bin:$PATH"
forge install --no-git ritual-net/infernet-sdk
cd ../../../
