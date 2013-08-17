# vim-config

---------------------

## Dependencies

  1. [xsel](http://www.kfish.org/software/xsel/)
  2. [exuberant-ctags](http://ctags.sourceforge.net/)
  3. [ack-grep](http://betterthangrep.com/)

``` bash
# For Debian/Ubuntu
sudo apt-get install xsel exuberant-ctags ack-grep libclang-dev

```

## Installation

  1. Install the dependencies
  2. cd ~/; mkdir dev; cd dev
  3. git clone 'https://github.com/indianajohn/vim-config/'
  4. cd vim_config
  5. ./install.sh
  6. Build the C++ portion of YouCompleteMe (see https://github.com/Valloric/YouCompleteMe)

``` bash
# For Ubuntu 12.04 LTS
sudo sh -c 'deb http://llvm.org/apt/precise/ llvm-toolchain-precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key|sudo apt-key add -
sudo apt-get install xsel exuberant-ctags ack-grep clang-3.4 clang-3.4-doc libclang-common-3.4-dev libclang-3.4-dev libclang1-3.4 libllvm-3.4-ocaml-dev libllvm3.4 lldb-3.4 llvm-3.4 llvm-3.4-dev llvm-3.4-doc llvm-3.4-examples llvm-3.4-runtime cpp11-migrate-3.4 clang-format-3.4 
cd ~/
mkdir dev
cd dev
git clone 'https://github.com/indianajohn/vim-config/'
cd vim-config
./install.sh
mkdir -p ~/dev/ycm_build
cd ~/dev/ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=/usr/lib/llvm-3.4 . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_core
```

## Plugins

  1. [Vundle](https://github.com/gmarik/vundle) -The plug-in manager for Vim
  2. [Molokai](https://github.com/tomasr/molokai) -Molokai color scheme for Vim
  3. [Vim-powerline](https://github.com/Lokaltog/vim-powerline) -The ultimate statusline/prompt utility.
  4. [GoldenView.Vim](https://github.com/zhaocai/GoldenView.Vim) -Always have a nice view for vim split windows!
  5. [PrettyGuides](https://github.com/adonis0147/prettyGuides) -Indent guides - displaying indent levels by vertical lines for Vim editor
  6. [Ack.vim](https://github.com/mileszs/ack.vim) -Vim plugin for the Perl module / CLI script 'ack'
  7. [Vim-easymotion](https://github.com/Lokaltog/vim-easymotion) -Vim motions on speed!
  8. [Nerdtree](https://github.com/scrooloose/nerdtree) -A tree explorer plugin for vim
  9. [Tagbar](https://github.com/majutsushi/tagbar) -Vim plugin that displays tags in a window, ordered by class etc
  10. [Syntastic](https://github.com/scrooloose/syntastic) -Syntax checking hacks for vim
  11. [Vim-unimpaired](https://github.com/tpope/vim-unimpaired) -unimpaired.vim: pairs of handy bracket mappings
  12. [Nerdcommenter](https://github.com/scrooloose/nerdcommenter) -Vim plugin for intensely orgasmic commenting
  13. [Auto-pairs](https://github.com/jiangmiao/auto-pairs) -Vim plugin, insert or delete brackets, parens, quotes in pair
  14. [Clang_complete](https://github.com/Rip-Rip/clang_complete) -Vim plugin that use clang for completing C/C++ code.
  15. [Ultisnips](https://github.com/SirVer/ultisnips) -This is an implementation of TextMates Snippets for the Vim Text Editor.
  16. [sudo.vim](https://github.com/vim-scripts/sudo.vim) -Allows one to edit a file with privileges from an unprivileged session
  17. [a.vim](https://github.com/vim-scripts/a.vim) -Alternate Files quickly (.c --> .h etc)
  18. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - Very good auto-completion.

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
  - `ctrl-j`  ==> UltiSnipsExpandTrigger
  - `,s`    ==> GoldenViewSwitchMain
  - `,S`    ==> GoldenViewSwitchToggle

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

## Remarks

  1. To edit a file with privileges from an unprivileged session.
    ``` bash
    # For example, we want to edit /etc/sudoers and type it in terminal:
    sudo vim /etc/sudoers
    # We will get a prompt - neocomplcache disabled: "sudo vim" is detected and $HOME is set to your user's home. You may want to use the sudo.vim plugin, the "-H" option with "sudo" or set always_set_home in /etc/sudoers instead.

    # Instead of typing "sudo vim /etc/sudoers" in terminal, we should type:
    vim sudo:/etc/sudoers
    ```
  2. To check the syntax of some programing languages, we should install the check tools for those languages.
    ```bash
    # For example, Python requires either flake8, pyflakes or pylint.
    # For Debian/Ubuntu
    sudo apt-get install pyflakes
    ```
    For details, you can see [https://github.com/scrooloose/syntastic](https://github.com/scrooloose/syntastic).

## References

  1. [https://github.com/amix/vimrc](https://github.com/amix/vimrc)
  2. [https://github.com/mbrochh/vim-as-a-python-ide](https://github.com/mbrochh/vim-as-a-python-ide)
  3. [https://github.com/humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc)

