--vim.cmd [[
    --colorscheme ayu " other good themes are dracula and monokai
    --let ayucolor="mirage"
--]]
--
require('rose-pine').set()
vim.g.rose_pine_variant = 'moon'
vim.g.rose_pine_enable_italics = true
vim.g.rose_pine_disable_background = false


require('globals')
require('configuration')
require('plugins')
require('keybinds')

vim.cmd [[
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ---------
" GitGutter
" Disable all concurrent mappings of <leader>h...
" ---------
let g:gitgutter_map_keys = 0


]]
