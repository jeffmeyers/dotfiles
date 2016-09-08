execute pathogen#infect()
syntax on
colorscheme Tomorrow-Night
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
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
set backspace=indent,eol,start

let mapleader = ","
map <Leader>p :CtrlP<CR>
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

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Ag <cword><CR>

"grep visual selection
vnoremap K :<C-U>execute "Ag " . GetVisual()<CR>

"grep current word up to the next exclamation point using ,K
nnoremap ,K viwf!:<C-U>execute "Ag " . GetVisual()<CR>

"grep for 'def foo'
nnoremap <silent> ,gd :Ag 'def <cword>'<CR>

",gg = Grep! - using Ag the silver searcher
" open up a grep line, with a quote started for the search
nnoremap ,gg :Ag ""<left>

"Grep for usages of the current file
nnoremap ,gcf :exec "Ag " . expand("%:t:r")<CR>
