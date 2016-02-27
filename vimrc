execute pathogen#infect()
syntax on
colorscheme Tomorrow-Night
set number
set incsearch
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,trail:▫,eol:¬
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

let mapleader = ","
map <Leader>f :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-k> :tabn<CR>
map <C-j> :tabp<CR>
map <C-x> :wq<CR>
map <C-f> :NERDTreeFind<CR>

" open quickbuf results in a new tab
set switchbuf+=newtab

filetype plugin indent on

" RSpec.vim mappings
let g:rspec_command = "!bundle exec rspec --color {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>