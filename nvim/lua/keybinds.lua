-- LOL STILL USING ARROWS?
vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", {})

-- Telescope Stuff
vim.api.nvim_set_keymap("n", "<C-f>", ":lua require'telescope.builtin'.find_files()<cr>", {})
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>o", ":lua require('telescope.builtin').oldfiles()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>nn", ":lua require('telescope.builtin').file_browser()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>p", ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>", {})

vim.api.nvim_set_keymap('n', "<Esc>", ":noh<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", {})

-- Goyo
vim.api.nvim_set_keymap("n", "<Leader>go", ":Goyo<CR>", { silent = true })

-- Dotfiles
vim.api.nvim_set_keymap("n", "<Leader>ev", ":lua require('configs.telescope').search_dotfiles()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sv", ":source ~/.config/nvim/init.lua<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>so", ":source %<CR>", {})

-- Window management
vim.api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>r", "<C-w>r<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>zz", "<cmd>MaximizerToggle<CR>", { silent = true })

-- Moving speed
vim.api.nvim_set_keymap("n", "÷", "{", {})
vim.api.nvim_set_keymap("n", "≠", "}", {})
vim.api.nvim_set_keymap("v", "÷", "{", {})
vim.api.nvim_set_keymap("v", "≠", "}", {})

-- thanks to theprimeagen for this
vim.api.nvim_set_keymap("n", "n", "nzzzv", {})
vim.api.nvim_set_keymap("n", "N", "Nzzzv", {})
vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true })
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", {})
vim.api.nvim_set_keymap("i", "!", "!<c-g>u", {})
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", {})
vim.api.nvim_set_keymap("i", "?", "?<c-g>u", {})

vim.api.nvim_set_keymap("n", "<Leader>t", ":NERDTreeFocus<CR>", {})

-- Fugitive
vim.api.nvim_set_keymap("n", "<Leader>gs", ":LazyGit<CR>", {})

-- Neogen
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>nt", ":lua require('neogen').generate({ type = 'type' })<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ez", ":lua R('neogen', { setup = require('configs.neogen') })<CR>", { silent = true })

-- Keybinds for toggleterm.lua
vim.api.nvim_set_keymap('n', "<Leader>shf", ":lua require('toggleterm.terminal').Terminal:new { direction = 'float', count = 1 }:toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<Leader>shr", ":lua require('toggleterm.terminal').Terminal:new { direction = 'vertical', count = 2 }:toggle()<CR>", { noremap = true, silent = true })

--vim.api.nvim_set_keymap("i", "<Tab>", "<cmd>lua require('neogen').jump_next()<CR>", { })
