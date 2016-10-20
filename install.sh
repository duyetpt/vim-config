#!/bin/sh

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc
mv ~/.spacemacs ./backup/spacemacs

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp vimrc ~/.vimrc
cp spacemacs ~/.spacemacs
unamestr=`uname`
if [ $unamestr == 'Darwin' ]; then
   sed -i "" "s|USER_HOME_TO_SUBSTITUTE|$HOME|g" ~/.spacemacs
else
    sed -i "s|USER_HOME_TO_SUBSTITUTE|$HOME|g" ~/.spacemacs
fi
cp plugins.vim ~/.vim/
cp plugins_config.vim ~/.vim
if [ "$(uname)" == "Darwin" ]; then
    cp .ycm_extra_conf_mac.py ~/.vim/.ycm_extra_conf.py
    mvim -v -c ":BundleInstall" -c "qa"
else
    cp .ycm_extra_conf.py ~/.vim/
    vim -c ":BundleInstall" -c "qa"
fi


cd ~/.vim/bundle/a.vim/plugin
mv a.vim a.vim.bak
sed '/imap/, +d' a.vim.bak > a.vim
cd ~/.vim/bundle/YouCompleteMe
python install.py --clang-completer
cd ~/.vim/
