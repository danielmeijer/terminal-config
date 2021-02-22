#! /bin/bash

### FUNCTIONS ###

function install_zsh {
    sudo apt-get install zsh git-core
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    chsh -s `which zsh`
}

function add_custom_config {
    echo "Adding custom config"
    cp config/.zshrc ~/.zshrc
    cp config/alias.sh ~/.oh-my-zsh/alias.sh

    echo "Installing plugins"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions    
}

###


if [ "$1" == "--quiet" ]
then 

    install_zsh
    add_custom_config

elif [ "$1" == "config" ]
then
    add_custom_config
else 

    echo "Enter to proceed with the installation"
    read enter
    install_zsh
    add_custom_config

fi