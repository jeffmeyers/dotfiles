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

map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
map <C-\> :!rspec spec/<CR>
map <C-c> :!cucumber features/<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-x> :q<CR>

" buffers
map <F8> :buffers<CR>

map <F1> :b1<CR>
map <F2> :b2<CR>
map <F3> :b3<CR>
map <F4> :b4<CR>
map <F5> :b5<CR>
map <F6> :b6<CR>
map <F7> :b7<CR>

syntax enable
"colorscheme ir_black

set showtabline=2
