#!  /bin/bash

echo "> setup ssh key ..."

SSH_PATH=$HOME/.ssh/
sudo rm -r $HOME/.ssh/
sudo mkdir $HOME/.ssh/
sudo cp id_rsa* $HOME/.ssh/
sudo chmod  600 $SSH_PATH/id_rsa
sudo chmod 644 $SSH_PATH/id_rsa.pub

echo "> ssh setup is complete."
