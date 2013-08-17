" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Add plugins here.
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'adonis0147/prettyGuides'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'indianajohn/Syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Rip-Rip/clang_complete'
Bundle 'SirVer/ultisnips'
Bundle 'sudo.vim'
Bundle 'a.vim'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on
