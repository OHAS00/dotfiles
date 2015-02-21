#!/bin/sh

ln -fs $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -fs $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -fs $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -fs $HOME/dotfiles/tmuxinator $HOME/.tmuxinator

rm -f $HOME/dotfiles/tmuxinator/tmuxinator

vim +":NeoBundleClean" +:q
vim +":NeoBundleInstall" +:q
