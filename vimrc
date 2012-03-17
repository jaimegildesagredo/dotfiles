set nocompatible
filetype off

" Vundle configuration.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "The-NERD-tree"
Bundle "fholgado/minibufexpl.vim"
Bundle "Gundo"
Bundle "rstacruz/sparkup", {"rtp": "vim/"}

" Syntax coloring and filetype detection.
syntax on

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

" Color scheme
colorscheme desert

" MiniBufExplorer plugin configuration.
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" NERDTRee plugin configuration.
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.orig$']

" Gundo plugin configuration.
map <C-g> :GundoToggle<CR>


" Copy & Paste stuff.
map <C-c> "+y<CR>
map <C-v> "+p<CR>
map <C-x> "+c<CR>
