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
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-dispatch'
Plug 'thoughtbot/vim-rspec'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
call plug#end()

" equalize split sizes when resized
au VimResized * :wincmd =

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
map <Leader>f :Files<CR>

" ,b to fuzzy buffers
map <Leader>b :Buffers<CR>

" navigate correctly across wrapped lines
nmap j gj
nmap k gk

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bin/rspec {spec}"

" toggle buffers with space
noremap <Space> :b#<CR>

" 80 character line
" set colorcolumn=80
" highlight ColorColumn ctermbg=7

" ale config
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'javascriptreact': ['prettier'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_linters_explicit = 1 " only run explicitly configured linters
let g:ale_fix_on_save = 1
