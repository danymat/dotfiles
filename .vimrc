" Vim configuration file by Daniel Mathiot 

set nocompatible " not vi compatible so that VIM works 
"----------------
" Syntax and indent
"----------------
syntax on " turn on syntax highlight
set showmatch " show matching braces when selector is inside one of them
colorscheme codedark " nice theme 
" colorscheme desert " nice theme if you don't have codedark installed

set autoindent " auto indent lines if the previous line was indented 
filetype plugin indent on " enable filetype and plugin detection

"--------------------
" Basic editing config
"----------------
set visualbell noerrorbells " visual bell instead of sound when error
set cursorline "show cursor below line
set mouse=a "allow mouse 
set number "set number of lines
set rnu "set relative number of lines
"set rnu "set relative line numbering

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
