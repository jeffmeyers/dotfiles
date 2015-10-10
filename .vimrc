execute pathogen#infect()
syntax on
set number
set incsearch
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2

let mapleader = ","
map <Leader>f :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-k> :tabn<CR>
map <C-j> :tabp<CR>
map <C-x> :tabclose<CR>

" open quickbuf results in a new tab
set switchbuf+=newtab

filetype plugin indent on
