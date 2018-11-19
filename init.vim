call plug#begin('~/.nvim/plugged')


" set encoding=utf-8
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

Plug 'mhinz/vim-startify'

Plug 'jonathanfilip/vim-lucius'

Plug 'nanotech/jellybeans.vim'

Plug 'yegappan/mru'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdcommenter'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'marijnh/tern_for_vim'

Plug 'Shougo/neocomplete.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'mkusher/padawan.vim' 
let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')
let g:padawan#composer_command = "php ~/composer.phar"

let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.php =
\ ['->', '::', '(', 'use ', 'namespace ', '\']

Plug 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" hotkeys
let mapleader=","
inoremap jk <esc>
inoremap <esc> <nop>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
map <C-e> :CtrlPMRUFiles<CR>
map <C-e> :MRU<CR>

set clipboard=unnamedplus

syntax on
colorscheme jellybeans

set number

call plug#end()
