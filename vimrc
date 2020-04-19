call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
call plug#end()

" detect indent rules based on filetype
filetype plugin indent on

" no swapfiles
set noswapfile

" enable fzf
set rtp+=/usr/local/opt/fzf

" show line numbers
set number

" use 2 spaces for tabs
set ts=2

" use 2 spaces for <<
set sw=2

" expand tabs into spaces
set expandtab

" highlight search results incrementally
set incsearch

" highlight all search results
set hlsearch

" open new splits to the right
set splitright

" highlight corresponding bracket/paren
set showmatch

" make backspace work on macos
set backspace=indent,eol,start

" use macos clipboard
set clipboard=unnamed

" enable syntax highlighting
syntax on

" recommended by the docs, yank to end of line
map Y y$

" map leader to ,
let mapleader = ","

" ignore gitignore in fuzzy
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" ,t to fuzzy finder
map <Leader>t :Files<CR>

" ,b to fuzzy buffers
map <Leader>b :Buffers<CR>

" navigate correctly across wrapped lines
nmap j gj
nmap k gk
