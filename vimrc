call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'altercation/vim-colors-solarized'
Plug 'git@github.com:slim-template/vim-slim.git'
Plug 'posva/vim-vue'
Plug 'cespare/vim-toml'
Plug 'sheerun/vim-polyglot'
Plug 'mechatroner/rainbow_csv'
call plug#end()

set background=dark
colorscheme solarized

" equalize split sizes when resized
au VimResized * :wincmd =

" detect indent rules based on filetype
" filetype plugin indent on

" no swapfiles
set noswapfile

" enable undo file
set undodir=~/.vim/undo-dir
set undofile

" enable fzf
set rtp+=/usr/local/opt/fzf

" show line numbers
set number

" use 2 spaces for tabs
set ts=2

" use 2 spaces for <<
set sw=2

" display indentation guides
set listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set list

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

" allow loading fzf results into quickfix
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

" configure fzf actions
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" ,t to fuzzy finder
map <Leader>f :Files<CR>

" ,g to search project
map <Leader>g :Ag

" ,ig to search under cursor
" https://github.com/junegunn/fzf.vim/issues/50#issuecomment-161676378
map <Leader>ig :Ag <C-R><C-W><CR>

" ,b to fuzzy buffers
map <Leader>b :Buffers<CR>

" navigate correctly across wrapped lines
nmap j gj
nmap k gk

" toggle buffers with space
noremap <Space> :b#<CR>

" NERDTree
map <C-f> :NERDTreeFind<CR>
map <C-t> :NERDTreeToggle<CR>

" folds
set foldmethod=indent
set foldlevel=20

" yank file path
map <C-p> :let @+ = expand("%")<CR>

" tab navigation
map H gT
map L gt

" open diffs for all tabs
ab diffall tabdo Gdiff master<CR>

" always show statusline
set laststatus=2

" Required for operations modifying multiple buffers like rename.
set hidden

" switch solarized modes
map <Leader>td :set background=dark<CR>
map <Leader>tl :set background=light<CR>

" git shortcuts
map <Leader>gl :Git pull<CR>
map <Leader>gp :Git push<CR>
map <Leader>gc :Git commit -a<CR>
map <Leader>gco :Git checkout
map <Leader>gst :Git status<CR>
map <Leader>gb :Git branch<cr>
map <Leader>gaa :Git add -A .<cr>
map <Leader>gd :Git diff<CR>
