 "Vim configuration file by Daniel Mathiot

set nocompatible " not vi compatible so that VIM works
filetype off     " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'rakr/vim-one'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'wakatime/vim-wakatime'
Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate'}
Plugin 'neovim/nvim-lspconfig'
Plugin 'hrsh7th/nvim-compe'
Plugin 'szw/vim-maximizer'
Plugin 'ThePrimeagen/harpoon'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'Yggdroot/indentLine'

"
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
let g:airline_theme='deus'
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
set cc=80 "create a vertical line at 80 character
set scrolloff=3 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
set t_Co=256 " Visual config of 256 colors
set termguicolors " Add true colors support
" Deleted arrow buttons for practice
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

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
:runtime! ftplugin/man.vim " add vim to man pages
set grepprg=rg\ --vimgrep\ --smart-case\ --follow "change grep with rg
set nohlsearch "disable automatic highlight

"----------
" Undo/Redo
"----------
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir " Undo directory (to create if not created)

"######################################################################
"######################## Personal key bindings #######################
"######################################################################

" Note: I use REMAP <Key>: ... in order to parse the content
" I use __REMAP for useful existing keys
" I use __REMAP_NT for nerdtree keys
" I use __REMAP_... for ... keys

nnoremap <SPACE> <Nop>
let mapleader = " "

"######################################################################
"######################################################################
"######################################################################

"--------------------
" Surround Plugin
"----------------
" __REMAP ds <surround>: delete the surround parenthesis/brackets..
" __REMAP S <surround>: add surround in selection
" __REMAP yss <surround>: surround inline
" __REMAP cs <surround><surround>: change the surround parenthesis/brackets..
autocmd FileType vue let b:surround_123 = "{{ \r }}"

"-----------
" Telescope (TLC) 
"-----------
" __REMAP_TLC CTRL-f: FZF files
"nnoremap <silent> <C-f> :Telescope find_files<CR>
nnoremap <silent> <C-f> :lua require'telescope.builtin'.find_files()<cr>
" __REMAP_TLC LEADER-f: FZF inside files
nnoremap <silent> <leader>f :Telescope live_grep<CR>
" __REMAP_TLC LEADER-b: open buffers
nnoremap <silent> <leader>b :lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>
" __REMAP_TLC LEADER-o: recently opened files
nnoremap <leader>o :lua require("telescope.builtin").oldfiles()<CR>
" __REMAP_TLC LEADER-gls: view commit tree
nnoremap <leader>gls :lua require("telescope.builtin").git_branches()<CR>

" -----------------------
" Zettelkasten stuff (ZK)
" -----------------------
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
"nnoremap <leader>§§ :lua require("telescope.builtin").live_grep({ default_text = "§§" })<CR>
"nnoremap <leader>§§ :lua require("configs.telescope").open_starting_files()<CR>
" __REMAP_ZK LEADER-z&: Go to next pair of [[
nnoremap <leader>z& /[[<CR>w

" __REMAP_ZK LEADER-go: Toggle Goyo
let g:goyo_width = 75
nnoremap <Leader>go :Goyo<CR>
autocmd! User GoyoEnter set linebreak
autocmd! User GoyoLeave set linebreak!



" -----
" Vimrc
" -----
" REMAP LEADER-ev: open vimrc
" REMAP LEADER-sv: source vimrc
nnoremap <leader>ev :lua require("configs.telescope").search_dotfiles()<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

"--------------------
" Window management
"----------------
set splitright " new window comes right
set splitbelow " new window comes below
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
" REMAP LEADER-r: rotate windows
nnoremap <leader>r <C-w>r<CR>

" -------------
" NERDTree (NT)
" -------------
" __REMAP_NT C: Move current directory to the one specified
" __REMAP_NT CD: Move current directory to the CWD
" __REMAP_NT cd: Change working directory to the one specified
" __REMAP_NT LEADER-n: Open NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
            \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" -------------
" Fugitive (FG)
" -------------
" __REMAP_FG gs: git status
nnoremap <leader>gs :G<CR>
" __REMAP_FG gq: accept left change
nnoremap <leader>gq :diffget //2<CR>
" __REMAP_FG gm: accept right change
nnoremap <leader>gm :diffget //3<CR>
" __REMAP_FG d: diff split
nnoremap <leader>d :Gvdiffsplit HEAD<CR>
nnoremap <leader>gl :lua require("telescope.builtin").git_commits()<CR>

" ---------
" LSP Stuff (completion.nvim and lspconfig) (LSP)
" ---------
lua << EOF
-- See https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md for more lsp servers
require'lspconfig'.pyright.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.flow.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vuels.setup{}
require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end

EOF

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect
lua << EOF
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}
EOF
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-Space> compe#complete()
" __REMAP_LSP LEADER-gd: Go to definition
" __REMAP_LSP LEADER-gi: Go to implementation
" __REMAP_LSP LEADER-gr: Find all references
" __REMAP_LSP LEADER-r: Rename symbol
" __REMAP_LSP <C-b> or C-n>: Go to prev or next diagnostic
" __REMAP_LSP K: Find documentation (double K to enter)
nnoremap <silent> <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>r <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <C-b> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" ---------
" Maximizer
" ---------
" __REMAP LEADER-zz: Toggle Zoom
nnoremap <silent> <leader>zz <cmd>MaximizerToggle<CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

" ---------
" GitGutter
" Disable all concurrent mappings of <leader>h...
" ---------
let g:gitgutter_map_keys = 0

" -------
" Harpoon
" -------
" __REMAP_HRP xa: Add current file to harpoon
" __REMAP_HRP xo: Add current file to harpoon
" __REMAP_HRP &: Jump to file 1
" __REMAP_HRP é: Jump to file 2
" __REMAP_HRP \": Jump to file 3
nnoremap <silent> <leader>xa <cmd>:lua require("harpoon.mark").add_file()<CR>
nnoremap <silent> <leader>xo <cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent> <leader>& <cmd>:lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent> <leader>é <cmd>:lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent> <leader>" <cmd>:lua require("harpoon.ui").nav_file(3)<CR>
