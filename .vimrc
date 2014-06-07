filetype on 
set nocompatible 

" Minibuffer Explorer Settings 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

set cf " ask about saving changes
set clipboard+=unnamed
set history=256 
set ruler  
set nu  
set timeoutlen=250  

set ts=2 
set bs=2  
set shiftwidth=2  
set smartindent
set autoindent
set smarttab
set expandtab

set showmatch  
set mat=5  
set novisualbell  
set noerrorbells  
set laststatus=2  
set statusline=%-10.3n\ %t\ %y\ %P\ %{fugitive#statusline()} 
set mouse=a
set hlsearch

execute pathogen#infect()

" NERDTree mappings
map <Tab> :NERDTreeToggle<CR>

" tab mappings
map <C-j> :tabp<CR>
map <C-k> :tabn<CR>
map <C-t> :tabnew<CR>
map <C-x> :q<CR>
map <C-\> :vimgrep <cword> **/*.rb **/*.coffee **/*.feature <CR> :cwindow <CR>

syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" backup
set backupdir=~/tmp
set swapfile
set dir=~/tmp

let mapleader=","

filetype plugin indent on

" open quickbuf results in a new tab
set switchbuf+=newtab
