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
Plugin 'neoclide/coc.nvim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'rakr/vim-one'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'wsdjeg/vim-todo'
"Plugin 'stsewd/fzf-checkout.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'wakatime/vim-wakatime'
Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
"Plugin 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plugin 'ayu-theme/ayu-vim'
Plugin 'junegunn/goyo.vim'

let g:airline_theme='deus'
" All of your Plugins must be added before the following line
call vundle#end()            " required

lua require("configs")


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
"colorscheme onedark " nice theme
colorscheme ayu
let ayucolor="mirage"
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
"set mouse=a "allow mouse
set number "set number of lines
set rnu "set relative number of lines
set cc=80
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
" I use __REMAP for useful existing keys
" I use __REMAP_NT for nerdtree keys
"----------------
" __REMAP ds <surround>: delete the surround parenthesis/brackets..
" __REMAP vS <surround>: add surround in selection
" __REMAP <C-o>: jumps backwards
" __REMAP <C-i>: jumps forwards
" __REMAP cs <surround><surround>: change the surround parenthesis/brackets..

nnoremap <SPACE> <Nop>
let mapleader = " "

" Telescope 
" REMAP CTRL-f: FZF files
"nnoremap <silent> <C-f> :Telescope find_files<CR>
nnoremap <silent> <C-f> :lua require'telescope.builtin'.find_files()<cr>
" REMAP LEADER-f: FZF inside files
nnoremap <silent> <leader>f :Telescope live_grep<CR>
" REMAP LEADER-b: open buffers
nnoremap <silent> <leader>b :lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>
" REMAP LEADER-o: recently opened files
nnoremap <leader>o :lua require("telescope.builtin").oldfiles()<CR>
" REMAP LEADER-gls: view commit tree
nnoremap <leader>gls :lua require("telescope.builtin").git_branches()<CR>

let g:zettelkasten = "/Users/danielmathiot/Documents/000 Meta/00.01 NewBrain/"
command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . " <args>.md"
" __REMAP_ZK LEADER-zn: create a new zettel
nnoremap <leader>zn :NewZettel 
" __REMAP_ZK LEADER-zif: find zettels in file
nnoremap <leader>zif :lua require("configs.telescope").search_zettelkasten_in_files()<CR>
" __REMAP_ZK LEADER-zf: find zettels
nnoremap <leader>zf :lua require("configs.telescope").search_zettelkasten()<CR>
" __REMAP_ZK LEADER-zl: find links
nnoremap <leader>zl :lua require("configs.telescope").find_link()<CR>
" __REMAP_ZK LEADER-yf: Copy file name
nnoremap <leader>yf :let @+=expand("%:t:r")<CR>      " Mnemonic: yank File Name
" __REMAP_ZK LEADER-§§: Open search for starting files
nnoremap <leader>§§ :lua require("configs.telescope").open_starting_files()<CR>
" __REMAP_ZK LEADER-z&: Go to next pair of [[
nnoremap <leader>z& /[[<CR>w

" Deleted arrow buttons for practice
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Quick access to vimrc
" REMAP LEADER-ev: open vimrc
" REMAP LEADER-sv: source vimrc
nnoremap <leader>ev :lua require("configs.telescope").search_dotfiles()<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>


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

" __REMAP_NT LEADER-n: Open NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>

" Fugitive 
" __REMAP_FG gs: git status
" __REMAP_FG gq: accept left change
" __REMAP_FG gm: accept right change
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

" Recommended settings for Coc
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver']

" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile


let g:netrw_banner = 0
