" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Set numbers:
set number 

set encoding=UTF-8

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Enable Syntax
syntax enable

set autoindent expandtab tabstop=2 shiftwidth=2

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
