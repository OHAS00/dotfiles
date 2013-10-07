#!/bin/bash

for file in `find $HOME/dotfiles -name '.*' | grep -v 'dotfiles/.git$' | perl -nle 'm!dotfiles/(.+)$! and print $1'`; do
    ln -fs $HOME/dotfiles/$file $HOME/$file
done

rm ../.gitignore
rm ../.gitmodules
