set nocompatible

let mapleader = ","

filetype off

" Vundle configuration.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "The-NERD-tree"
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.orig$']

Bundle "scrooloose/nerdcommenter"

Bundle "minibufexpl.vim"
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

Bundle "Gundo"
map <leader>g :GundoToggle<CR>

Bundle "rstacruz/sparkup", {"rtp": "vim/"}
Bundle "altercation/vim-colors-solarized"
set background=dark
colorscheme solarized

Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=0

Bundle "Shougo/neocomplcache"
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

Bundle 'Lokaltog/vim-powerline'
set laststatus=2

Bundle 'tpope/vim-fugitive'

Bundle 'kchmck/vim-coffee-script'

Bundle 'kien/ctrlp.vim'

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
set mouse=a

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
map <leader>c "+y<CR>
map <leader>v "+p<CR>
map <leader>x "+c<CR>
