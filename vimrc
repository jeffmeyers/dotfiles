call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'dracula/vim'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'mileszs/ack.vim'
Plug 'mklabs/split-term.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
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
set mouse=a

let mapleader = ","
map <Leader>gg :Ack!<Space>
map <Leader>gc :Ack!<C-R><C-W><CR>
map <Leader>p :FZF<CR>
map <Leader>b :Buffers<CR>
map <Leader>rb :terminal irb<CR>
map <Leader>tt :VTerm<CR>
map <Tab> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-k> :tabn<CR>
map <C-j> :tabp<CR>
map <C-x> :wq<CR>
map <C-f> :NERDTreeFind<CR>

" use ag when searching
let g:ackprg = 'ag --nogroup --nocolor --column'

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

let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }

" do not nest nvim in terminal emulation
if has('nvim')
  let $VISUAL = 'nvr -cc split --remote-wait'
endif
