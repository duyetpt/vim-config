#!/bin/sh

#backup
rm -rf backup
mkdir backup
mv ~/.vim ./backup/vim
mv ~/.vimrc ./backup/vimrc
mv ~/.spacemacs ./backup/spacemacs
cp -rf ./.doom.d/ ~/.doom.d/ 

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
    if [ -x `which pip2` ]; then
        pip2 install pyflakes flake8 pylint
    else
        echo "Did not install Pyflake and Pylint; recommended:"
        echo "1. Install Homebrew: https://brew.sh/"
        echo "2. brew install python"
        echo "3. pip2 install pyflakes flake8 pylint"
    fi
else
    cp .ycm_extra_conf.py ~/.vim/
    vim -c ":BundleInstall" -c "qa"
fi

if [ -x `which npm` ]; then
    npm install -g tern js-beautify eslint jshint standard
else
    echo "Did not install Javascript dependendencies. If you want tp"
    echo "use Javascript completion and linting:"
    echo "1. Install Node.js on your platform."
    echo "2. npm install -g tern js-beautify eslint jshint standard"
fi


cd ~/.vim/bundle/a.vim/plugin
mv a.vim a.vim.bak
sed '/imap/, +d' a.vim.bak > a.vim
cd ~/.vim/bundle/YouCompleteMe
python install.py --clang-completer
cd ~/.vim/
