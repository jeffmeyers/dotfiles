call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'
call plug#end()

syntax on
colorscheme solarized
set background=dark
let g:ctrlp_max_files=0
set wildignore+=*/.git/*,*/node_modules/*,*/vendor
set number
set incsearch
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,trail:▫,eol:¬
set nobackup
set nowritebackup
set backspace=indent,eol,start
set clipboard=unnamedplus

let mapleader = ","
map <Leader>p :FZF<CR>
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

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

"FZF
set rtp+=/usr/local/opt/fzf
