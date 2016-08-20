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

"tab navigation
map <space>l :tabn<CR>
map <space>h :tabp<CR>

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent

set autowrite
set ruler

set term=xterm-256color
let g:solarized_termcolors=256
set t_Co=256
set background=dark

set hlsearch
"colorscheme peachpuff

" ctrl+c to toggle highlight.
let hlstate=1
nnoremap <c-c> :nohlsearch<cr>

colorscheme peachpuff

"se non ho lanciato la sessione da gnome
if empty($GDMSESSION)
  colorscheme peachpuff
  au VimLeave * :!echo -e '\E[m' && clear   
endif

"newline
map <space>m :set paste<CR>m`o<Esc>``:set nopaste<CR>
map <space>n :set paste<CR>m`O<Esc>``:set nopaste<CR>

"Marker folding
set foldmethod=marker

"Change marker for latex
au FileType tex set foldmarker={tex-,-tex}

"Directory for swp files
set directory=/home/davide/.vim/swp,.

"Case insensitive search
set ignorecase

" Non saltare quando cerco
nnoremap * :keepjumps normal *``<cr>
