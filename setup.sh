#!/bin/sh

git submodule init && git submodule update

ln -fs $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -fs $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -fs $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -fs $HOME/dotfiles/tmuxinator $HOME/.tmuxinator

rm -f $HOME/dotfiles/tmuxinator/tmuxinator

vim +":NeoBundleClean" +:q >> /dev/tty
vim +":NeoBundleInstall" +:q >> /dev/tty

cd ~/dotfiles/vim/bundle/vimproc
make -f make_unix.mak
