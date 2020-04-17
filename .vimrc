" Vim configuration file by Daniel Mathiot 

set nocompatible " not vi compatible so that VIM works 

"----------------
" Syntax and indent
"----------------
syntax on " turn on syntax highlight
set showmatch " show matching braces when selector is inside one of them
colorscheme codedark " nice theme 
" colorscheme desert " nice theme if you don't have codedark installed

set smartindent " auto indent lines if the previous line was indented 
set cindent " auto indent lines for c program if recognized
filetype plugin indent on " enable filetype and plugin detection

"--------------------
" Basic editing config
"----------------
set visualbell noerrorbells " visual bell instead of sound when error
set cursorline "show cursor below line
set mouse=a "allow mouse 
set number "set number of lines
set rnu "set relative number of lines
set scrolloff=3 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.

"--------------------
" Tabulation
"----------------
set expandtab "tabs are spaces (thanks python)
set tabstop=4 "number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4 "number of spaces in tab when editing

"--------------------
" Searching
"----------------
set incsearch "show search as characters entered 
:runtime! ftplugin/man.vim
"--------------------
" Undo/Redo
"----------------
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir " Undo directory (to create if not created)

let g:netrw_banner = 0


