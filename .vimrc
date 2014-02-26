filetype on 
set nocompatible 

" Minibuffer Explorer Settings 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

set cf  
set clipboard+=unnamed  
set history=256  
set ruler  
set nu  
set timeoutlen=250  

set ts=2 
set bs=2  
set shiftwidth=2  
set formatoptions=tcqr
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

map <C-S-h> :tabp<CR>
map <C-S-h> :tabn<CR>
map <C-\> :!rspec spec/<CR>
map <C-c> :!cucumber features/<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-x> :q<CR>

syntax enable
"colorscheme ir_black

set showtabline=2

set cursorline
