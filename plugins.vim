" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add plugins here.
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'adonis0147/prettyGuides'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/nerdcommenter'
Bundle 'SirVer/ultisnips'
Bundle 'sudo.vim'
Bundle 'a.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on
