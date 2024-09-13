#!/bin/sh
set -e

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [bash|zsh]"
  exit 1
fi

SHELL_TYPE=$1

# Create symlinks for common files
ln -i -s $(pwd)/gitignore ~/.gitignore
ln -i -s $(pwd)/vimrc ~/.vim/vimrc

# Conditionally create symlinks for bash or zsh
if [ "$SHELL_TYPE" = "bash" ]; then
  ln -i -s $(pwd)/run_controls ~/.bashrc
  ln -i -s $(pwd)/aliases ~/.bash_aliases
  source ~/.bashrc
  source ~/.bash_aliases
  echo "Bash configuration symlinks created."
elif [ "$SHELL_TYPE" = "zsh" ]; then
  ln -i -s $(pwd)/run_controls ~/.zshrc
  read -p "Do you want to append aliases to ~/.zshrc? (y/n): " response && [[ "$response" == "y" || "$response" == "Y" ]] && cat $(pwd)/aliases >> ~/.zshrc
  source ~/.zshrc
  echo "Zsh configuration symlinks created."
else
  echo "Unknown shell type: $SHELL_TYPE"
  exit 1
fi

