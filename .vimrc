set nocompatible
execute pathogen#infect()

" NERDTree
nnoremap <F4> :NERDTreeToggle<CR>

filetype plugin indent on " auto filetype detect
syntax on " highlight
syntax enable

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set number
set ruler
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set hidden " let me have hidden buffers
set autoread " don't question if a file has been changed

set ignorecase
set smartcase " if capital letters, case-sensitive
set incsearch
set showmatch
set hlsearch
set gdefault

" in visual mode, cursor can go anywhere
set virtualedit+=block

" leader key - my very own key to start something (I guess similar to Meta in Emacs)
let mapleader = ","

" cool way to get out of insert mode, just press j and k at the same time
inoremap jk <esc>
inoremap kj <esc>

let g:airline_theme='powerlineish'

set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
