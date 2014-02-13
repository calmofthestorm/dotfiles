#!/bin/sh

cd $HOME
if [ -e "dotfiles" ]; then
    echo "Won't clobber existing ${HOME}/dotfiles."
    echo "rm -fr ${HOME}/dotfiles/ ${HOME}/.vimrc ${HOME}/.vim*"
    exit 1
fi

if [ -e ".vim" ]; then
    echo "Won't clobber existing ${HOME}/.vim"
    echo "rm -fr ${HOME}/dotfiles/ ${HOME}/.vimrc ${HOME}/.vim*"
    exit 1
fi

if [ -e ".vimrc" ]; then
    echo "Won't clobber existing ${HOME}/.vimrc"
    echo "rm -fr ${HOME}/dotfiles/ ${HOME}/.vimrc ${HOME}/.vim*"
    exit 1
fi

git clone https://github.com/calmofthestorm/dotfiles.git dotfiles
ln -s ${HOME}/dotfiles/vim .vim
ln -s .vim/rc.vim .vimrc

cd ${HOME}/dotfiles/vim

tar -xjf bootstrap.tar.bz2 

vim -u bundles.vim +BundleInstall +q +q
