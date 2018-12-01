#!/bin/sh

#software list
# vim
# tmux
# zsh
# i3?



# Config steps for new system
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mv ./config/.vimrc ~/.vimrc
mv ./config/.zshrc ~/.zshrc

# Colorize git
git config --global color.ui auto


# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
