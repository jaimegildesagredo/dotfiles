set nocompatible
filetype off

" Vundle configuration.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "The-NERD-tree"
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.orig$']

Bundle "minibufexpl.vim"
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

Bundle "Gundo"
map <C-g> :GundoToggle<CR>

Bundle "rstacruz/sparkup", {"rtp": "vim/"}
Bundle "altercation/vim-colors-solarized"
set background=dark
colorscheme solarized

Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=0

Bundle "Shougo/neocomplcache"
let g:neocomplcache_enable_at_startup = 1

" Syntax coloring and filetype detection.
syntax on
filetype plugin indent on

set encoding=utf-8
set title
set ruler
set visualbell
set cursorline
set number
set listchars=tab:▸\ ,eol:¬
set list

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

" Copy & Paste stuff.
map <C-c> "+y<CR>
map <C-v> "+p<CR>
map <C-x> "+c<CR>
