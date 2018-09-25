# vim-config

---------------------

## Dependencies

  1. [CMake](http://cmake.org/)
  2. [Git](http://git-scm.com/)
  3. [Python](http://python.org/)
  4. A modern version of Vim.
  5. A basic C++ compilation environment.
  6. (Optional) Spacemacs.



## Installation

  1. Install the dependencies.
  2. Install Vim..
  3. Clone the repo. ```cd ~/; mkdir dev; cd dev; git clone 'https://github.com/indianajohn/vim-config/'```
  4. Run the install script. ```cd ~/dev/vim_config; ./install.sh```

## Dependencies on MacOSX
```
npm install -g tern js-beautify eslint jshint standard flow
pip2 install pyflakes flake8 pylint
```

## Dependencies on Debian-alikes
``` bash
sudo apt-get update
sudo apt-get install xsel exuberant-ctags ack-grep gdebi python-dev cmake git build-essential python-dev pyflakes vim-gnome
```

## Plugins

  1. [Vundle](https://github.com/gmarik/vundle) - The plug-in manager for Vim
  2. [Molokai](https://github.com/tomasr/molokai) - Molokai color scheme for Vim
  3. [Ack.vim](https://github.com/mileszs/ack.vim) -Vim plugin for the Perl module / CLI script 'ack'
  4. [Nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim
  5. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - Very good auto-completion.
  6. [vim-airline](https://github.com/bling/vim-airline) - Good statusline with no configuration needed.
  7. [ctrl-p](https://github.com/kien/ctrlp.vim) - Find files easily.

## Shortcuts

  - `,e`  ==> quit
  - `,E`  ==> quit all without saving
  - `,<enter>`  ==> don't highlight the search results
  - Easier moving between windows:
    + `ctrl-j`  ==> down
    + `ctrl-k`  ==> up
    + `ctrl-h`  ==> left
    + `ctrl-l`  ==> right
  - Easier moving between tabs
    + `,n`  ==> previous tab
    + `,m`  ==> next tab
  - Copy content to clipboard
    1. Select the content
    2. In visual mode, press `ctrl-c`
  - `,f`  ==> toggle ctrlp
  - `<F3>`  ==> toggle nerdtree
  - `<F4>`  ==> toggle tagbar
  - `<F5>`  ==> build a project
  - `<F9>`  ==> build and run(only available for a single source code file)
  - ack a word which is under the cursor
    1. `,a` ==> toggle ack command
    2. Edit the command
    3. Press `enter`

## Plugins Management

### Install

  1. Edit *~/.vim/plugins.vim*
  2. Add the name of the plugin you want to install
  3. In normal mode, type `:BundleInstall`
  4. Press `enter`

### Uninstall

  1. Edit *~/.vim/plugins.vim*
  2. Comment the name of the plugin you want to uninstall
  3. In normal mode, type `:BundleClean`
  4. Press `enter`

### Update

  1. In normal mode, type `:BundleInstall!`
  2. Press `enter`

For details, you can see [https://github.com/gmarik/vundle](https://github.com/gmarik/vundle).
