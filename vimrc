runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
set t_Co=256

" Key Mappings {{{
let mapleader=" "
" Tab Navigation
noremap <leader>k :bnext<CR>
noremap <leader>j :bprevious<CR>
" Ctrl+c to toggle highlight.
nnoremap <c-c> :nohlsearch<cr>
" Don't jump when searching
nnoremap * :keepjumps normal *``<cr>
" Newline above or below cursor without moving cursor, staying in normal mode
noremap <leader>m :set paste<CR>m`o<Esc>``:set nopaste<CR>
noremap <leader>n :set paste<CR>m`O<Esc>``:set nopaste<CR>
" Emmet zencoding remap
nnoremap <leader>z <C-y>,
" inoremap <leader>z <C-y>, " this causes issues when typing
vnoremap <leader>z <C-y>,
" Edit My Vimrc
nnoremap <leader>ev :vs $MYVIMRC<cr>
" Source My Vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Use jk to exit insert mode
inoremap jk <esc>
inoremap JK <esc>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Up> <nop>
" When pressing esc in multi cursor insert mode go back to multi cursor normal
" mode instead of quitting multi cursor
let g:multi_cursor_exit_from_insert_mode=0

vnoremap < <gv 
vnoremap > >gv 
" add space after commas without a space (pep8)
nnoremap <leader>sc :s/,\(\S\)\@=/, /g<cr> :nohlsearch<cr>
nnoremap <leader>sa i<space><esc>la<space><esc>h
nnoremap <leader>sd hxlxh
nnoremap <leader>n  A<space><space>#<space>NOQA<esc>0
nnoremap <leader>w  <C-w>
" PyMode
let g:pymode_rope = 1
let g:pymode_rope_rename_bind = '<leader>f'
" }}}

" Basic Settings {{{

filetype plugin on
syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=0
set smarttab
set hidden " to use buffers effectively
set foldmethod=marker
set secure
set showmatch " jumps to matching bracket

set encoding=utf-8

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent

set autowrite

" Case insensitive search
set ignorecase
set hlsearch
set incsearch

set history=500
set wildmenu

"Directory for swp files
set directory=/home/davide/.vim/swp,$HOME\swp,. " Linux, then Windows
let g:pymode_python = 'python3'
let g:pymode_lint_ignore = ['E221']
" let &pythonthreedll = 'C:\Users\u368208\AppData\Local\Programs\Python\Python36\python36.dll'
" }}}

" GUI {{{
"line numbers
set number
set relativenumber
set ruler
set guifont=Consolas:h11
set linespace=0
set scrolloff=3 " Keep 3 rows above and below the cursor row inside window limits
set laststatus=2 " Always add status line to new windows and buffers

let g:markdown_enable_spell_checking = 0 " Disable vim-markup spell check

colorscheme monokai
" colorscheme desert-warm-256

set splitright " vertical split puts the new window on the right

" GVIM
set noerrorbells
set visualbell t_vb=
autocmd GUIEnter * set vb t_vb=
" gvim: hide upper bars
set guioptions-=T
set guioptions-=m
set guioptions-=e
set mouse= " turn off mouse on gvim

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set guifont=Inconsolata\ for\ Powerline:h12
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"
" }}}
