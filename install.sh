#!/bin/sh

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp vimrc ~/.vimrc
cp plugins.vim ~/.vim/
cp plugins_config.vim ~/.vim
if [ "$(uname)" == "Darwin" ]; then
    cp .ycm_extra_conf_mac.py ~/.vim/
    mvim -v -c ":BundleInstall" -c "qa"
else
    cp .ycm_extra_conf.py ~/.vim/
    vim -c ":BundleInstall" -c "qa"
fi


cd ~/.vim/bundle/a.vim/plugin
mv a.vim a.vim.bak
sed '/imap/, +d' a.vim.bak > a.vim
cd ~/.vim/bundle/YouCompleteMe
if [[ "$unamestr" == 'Linux' ]]; then
    python install.py --clang-completer
else
    python install.py --clang-completer --system-libclang
fi
cd ~/.vim/
