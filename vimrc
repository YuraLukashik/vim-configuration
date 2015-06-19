call plug#begin('~/.vim/plugged')


set encoding=utf-8
set backspace=indent,eol,start
set cursorline


Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

let g:syntastic_auto_jump               = 1
let g:syntastic_error_symbol            = '✖'
let g:syntastic_warning_symbol          = '►'
let g:syntastic_style_error_symbol      = '~'
let g:syntastic_style_warning_symbol    = '⚠'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 

let g:syntastic_php_phpcs_args='--tab-width=0 --standard=PSR1,PSR2'
let g:syntastic_php_checkers = ['php', 'phpcs']



" Configuring tabulation and codestyle
Plug 'Raimondi/delimitMate'
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
" Default tabulation options
" Should be override in ft-configs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent		" always set autoindenting on
set smarttab
set smartindent

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-fugitive'

Plug 'Bling/vim-airline'

" hotkeys
map <C-n> :NERDTreeToggle<CR>

set clipboard=unnamedplus

syntax on
colorscheme vividchalk

call plug#end()
