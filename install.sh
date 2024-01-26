#/bin/bash

# vim setting

curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sb ${pwd}/vimrc ${HOME}/.vimrc

