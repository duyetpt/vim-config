" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add plugins here.
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on
