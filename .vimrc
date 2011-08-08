"
set encoding=utf-8
set nocompatible
set title
set ruler
set visualbell
set number

"
syntax on
filetype on
filetype plugin indent on

"
set listchars=tab:>-,eol:¬
set list

" Search
set incsearch
set hlsearch

"
let mapleader=","

"
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

" Code folding
set foldmethod=indent
set foldlevel=99

" Color scheme
colorscheme desert

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" SuperTab Python code completition
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletitionType="context"
set completeopt=menuone,longest,preview

" Another SuperTab code completition
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS

" Pylint compiler
autocmd FileType python compiler pylint
let g:pylint_onwrite=0
"let g:pylint_show_rate=0
"let g:pylint_cwindow=0

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

