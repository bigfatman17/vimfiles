set nocompatible

call plug#begin()
Plug 'vim-scripts/AutoComplPop'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neomake/neomake'
Plug 'justinmk/vim-syntax-extra'
Plug 'KevinGoodsell/vim-csexact'
Plug 'lifepillar/vim-solarized8'
Plug 'ap/vim-buftabline'
call plug#end()

set encoding=utf-8

filetype plugin indent on " auto filetype detect
syntax on " highlight
syntax enable

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set number
set rnu
set ruler
set laststatus=2
set noshowmode

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

" cool way to get out of insert mode, just press j and k at the same time
inoremap jk <esc>
inoremap kj <esc>

" if you hit enter in normal mode, all highlighting is cleared
nnoremap <CR> :noh<CR>

" Quickfix
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested cwindow

" Airline
let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''

" Buftabline hotkeys
noremap <C-n> :bp<CR>
noremap <C-l> :bn<CR>

" Neomake on save
autocmd! BufWritePost * Neomake!

" Variable refactorization
" Also creates a mark at q when started.
function! Refactor()
    call inputsave()
    let @z=input("'" . @z . "' ? ")
    call inputrestore()
endfunction
nnoremap gr "zyiw:call Refactor()<cr>mq:silent! norm gd<cr>[{V%:s/<C-R>//<c-r>z/c<cr>
nnoremap gR "zyiw:call Refactor()<cr>mq:silent! norm gD<cr>:%s/<C-R>//<c-r>z/c<cr>
" Line insertion on C-j and C-k
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Pasting hotkey
set pastetoggle=cs

set background=dark
set t_Co=256
set t_RV= " This, for some reason, fixed an xterm glitch where Vim would print random characters. Apparently, it's supposed to have something to
" do with getting the terminal version, but I guess it has trouble finding it
" with my xterm configuration.
let g:solarized_termcolors=256
colorscheme solarized8_dark
