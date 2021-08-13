vim.cmd [[
    colorscheme ayu " other good themes are dracula and monokai
    let ayucolor="mirage"
]]

require('configuration')
require('plugins')
require('keybinds')

vim.cmd [[
let g:airline_theme='deus'

lua << EOF
require'telescope'.setup { 
    defaults = { winblend = 10 } ,
    extensions = {
        frecency = {
            show_scores = true,
            ignore_patterns = {"*.git/*", "*/tmp/*"},
            }
        }
}
require'telescope'.load_extension'frecency'
require'telescope'.load_extension'project'
EOF

let g:goyo_width = 75


" -------------
" NERDTree (NT)
" -------------
" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
            \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" ---------
" LSP Stuff (completion.nvim and lspconfig) (LSP)
" ---------

lua require('configs.lsp')

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
    neorg = true;
    };
}
EOF
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-Space> compe#complete()


lua <<EOF
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/vhyrro/tree-sitter-norg",
        files = { "src/parser.c" },
        branch = "main"
    },
}

require'nvim-treesitter.configs'.setup {
ensure_installd = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
highlight = { enable = true },
indent = { enable = true, },
incremental_selection = { 
enable = true,
keymaps = {
    init_selection = "<CR>",
    scope_incremental = "<CR>",
    node_incremental = "<TAB>",
    node_decremental = "<S-TAB>",
    },
},
}
EOF

" ---------
" GitGutter
" Disable all concurrent mappings of <leader>h...
" ---------
let g:gitgutter_map_keys = 0

lua require('configs.vsnip')
lua require('configs.neorg')
lua require('configs.cheatsheet')
lua require('numb').setup()

]]
