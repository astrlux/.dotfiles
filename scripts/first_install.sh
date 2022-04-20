#!/usr/bin/env zsh

# Assurance message
echo "Hey there! Thx for giving my configuration a spin\n-- WARNING --\nThis will irrevocably ERASE your current configuration\nStill wanna proceed? (y/n)"
read CONTINUE
if [ $CONTINUE = "y" ]
then
  echo "OK, proceeding with installation"
  source ~/.dotfiles/zsh/.zshrc
  sh ~/.dotfiles/scripts/install.sh
  echo "-> RESTART YOUR TERMINAL!"
elif [ $CONTINUE = "n" ]
then
  echo "Sorry to see you go!"
else
  echo "Couldn't understand your input...are you stupid?"
fi
