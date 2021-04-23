" Vim configuration file by Daniel Mathiot

set nocompatible " not vi compatible so that VIM works
filetype off     " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'wsdjeg/vim-todo'
Plugin 'stsewd/fzf-checkout.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'wakatime/vim-wakatime'

let g:airline_theme='deus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"----------------
" Syntax and indent
"----------------
syntax on " turn on syntax highlight
set showmatch " show matching braces when selector is inside one of them
colorscheme one " nice theme
"colorscheme gruvbox
set background=dark
"colorscheme desert " nice theme if you don't have codedark installed
set encoding=UTF-8
set smartindent " auto indent lines if the previous line was indented
set cindent " auto indent lines for c program if recognized

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
set t_Co=256 " Visual config of 256 colors
set termguicolors

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
set grepprg=rg\ --vimgrep\ --smart-case\ --follow "change grep with rg
set nohlsearch "disable automatic highlight

"--------------------
" Undo/Redo
"----------------
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir " Undo directory (to create if not created)

"--------------------
" Personal key bindings
" Note: I use REMAP <Key>: ... in order to parse the content
"----------------
" __REMAP ds <surround>: delete the surround parenthesis/brackets.. 
" __REMAP vS <surround>: add surround in selection
" __REMAP <C-o>: jumps backwards
" __REMAP <C-i>: jumps forwards
"
" __REMAP cs <surround><surround>: change the surround parenthesis/brackets..
" ()
nnoremap <SPACE> <Nop>
let mapleader = " "
" REMAP CTRL-f: FZF files
nnoremap <silent> <C-f> :Files<CR>
" REMAP CTRL-f: FZF inside files
nnoremap <silent> <leader>f :Rg<CR>
" REMAP LEADER-b: open buffers
nnoremap <silent> <leader>b :Buffers<CR>
" REMAP LEADER-gls: view commit tree
nnoremap <silent> <leader>gls :Commits<CR>

" Deleted arrow buttons for practice
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Quick access to vimrc
" REMAP LEADER-ev: open vimrc
" REMAP LEADER-sv: source vimrc
nnoremap <leader>ev :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" YCM
" REMAP LEADER-gd: Go to definition
" REMAP LEADER-gr: Go to references
nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gr : YcmCompleter GoToReferences<CR>

" Vim-gutter
set updatetime=100

"--------------------
" Window management
"----------------
set splitright
set splitbelow
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
" REMAP LEADER-r: rotate windows
nnoremap <leader>r <C-w>r<CR>


" NERDTree
" __REMAP_NT C: Move current directory to the one specified
" __REMAP_NT CD: Move current directory to the CWD
" __REMAP_NT cd: Change working directory to the one specified

" REMAP LEADER-n: Open NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>

" Fugitive 
" __REMAP_FG gs: git status
" __REMAP_GF gq: accept left change
" __REMAP_GF gq: accept right change
nnoremap <leader>gs :G<CR>
nnoremap <leader>gq :diffget //2<CR>
nnoremap <leader>gm :diffget //3<CR>
nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>d :Gvdiffsplit HEAD<CR>

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:netrw_banner = 0
