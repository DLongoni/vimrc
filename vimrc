runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible

filetype plugin on

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=0
set smarttab

syntax on

"line numbers
set number
set rnu

set secure

set showmatch " jumps to matching bracket

"tab navigation
map <space>l :tabn<CR>
map <space>h :tabp<CR>

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent

set autowrite
set ruler

" Case insensitive search
set ignorecase
set hlsearch
" Ctrl+c to toggle highlight.
nnoremap <c-c> :nohlsearch<cr>
let hlstate=1
" Don't jump when searching
nnoremap * :keepjumps normal *``<cr>

colorscheme desert-warm-256
" colorscheme iceberg
" colorscheme lucius

" Newline above or below cursor without moving cursor, staying in normal mode
map <space>m :set paste<CR>m`o<Esc>``:set nopaste<CR>
map <space>n :set paste<CR>m`O<Esc>``:set nopaste<CR>

"Directory for swp files
set directory=/home/davide/.vim/swp,.

" gvim : switch off sounds
set noerrorbells
set vb t_vb=
if has("gui_running")
	autocmd GUIEnter * set vb t_vb=
endif

