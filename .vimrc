" Pathogen configuration.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Syntax coloring and filetype detection.
syntax on
filetype plugin on

" List configuratio List configurationn
set listchars=tab:▸\ ,eol:¬
set list

"
set encoding=utf-8
set nocompatible
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
let NERDTreeIgnore = ["\~$"]


