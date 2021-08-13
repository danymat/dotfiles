vim.cmd [[
    colorscheme ayu " other good themes are dracula and monokai
    let ayucolor="mirage"
]]

require('configuration')
--require('configs.lsp')
require('plugins')
require('keybinds')

vim.cmd [[
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-Space> compe#complete()


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
