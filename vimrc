set nocompatible
filetype off

" Vundle configuration.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "The-NERD-tree"

" Syntax coloring and filetype detection.
syntax on

" List configuratio List configurationn
set listchars=tab:▸\ ,eol:¬
set list

"
set encoding=utf-8
set title
set ruler
set visualbell
set number

" Personal mapleader.
let mapleader=","

" Color scheme
colorscheme desert

" MiniBufExplorer plugin configuration.
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" SuperTab plugin configuration.
let g:SuperTabDefaultCompletitionType="context"

" NERDTRee plugin configuration.
map <leader>n :NERDTreeToggle<CR>
"let NERDTreeIgnore = ["\~$"]


