runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

set nocompatible

filetype plugin on

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=0
set smarttab
set hidden

syntax on

"line numbers
set number
set rnu
set secure

set showmatch " jumps to matching bracket

"tab navigation
map <C-j> :bnext<CR>
map <C-k> :bprevious<CR>

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent

set autowrite
set ruler

" Case insensitive search
set ignorecase
set hlsearch
set incsearch

" Ctrl+c to toggle highlight.
nnoremap <c-c> :nohlsearch<cr>
let hlstate=1
" Don't jump when searching
nnoremap * :keepjumps normal *``<cr>


colorscheme desert-warm-256
" colorscheme iceberg
" colorscheme lucius

set guifont=Consolas:h11
set history=500
set linespace=0
set scrolloff=3
set wildmenu
" set cursorline " too low contrast with desert colorscheme
set splitright
set laststatus=2

" Newline above or below cursor without moving cursor, staying in normal mode
map <space>m :set paste<CR>m`o<Esc>``:set nopaste<CR>
map <space>n :set paste<CR>m`O<Esc>``:set nopaste<CR>

"Directory for swp files
set directory=/home/davide/.vim/swp,$HOME\swp,. " Linux, then Windows

" Emmet zencoding remap
nmap <C-z> <C-y>,
imap <C-z> <C-y>,
vmap <C-z> <C-y>,

" gvim : switch off sounds
set noerrorbells
set vb t_vb=
if has("gui_running")
  autocmd GUIEnter * set vb t_vb=
  " gvim: hide upper bars
  set guioptions-=T
  set guioptions-=m
  set guioptions-=e
  set mouse= " turn off mouse on gvim
endif

let g:airline#extensions#tabline#enabled=1

" Exclude the domain where I do not have any admin right, so that I can't
" install neither fonts, not python, and so on
if $USERDOMAIN!="SPIMI"  
  if $SSH_CLIENT=="" "I will use this only if I'm not ssh-ing
    let g:airline_powerline_fonts=1
    if !exists('g:airline_symbols')
      let g:airline_symbols={}
    endif
    let g:airline_symbols.space="\ua0"
  endif
endif
