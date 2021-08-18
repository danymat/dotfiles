-- Telescope Stuff
vim.api.nvim_set_keymap("n", "<C-f>", ":lua require'telescope.builtin'.find_files()<cr>", {})
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>b", ":lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>o", ":lua require('telescope').extensions.frecency.frecency()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>n", ":lua require('telescope.builtin').file_browser()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>p", ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>", {})


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
vim.api.nvim_set_keymap("n", "<Leader>gs", ":G<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>gq", ":diffget //2<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>gm", ":diffget //3<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>d", ":Gvdiffsplit HEAD<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>gb", ":Git blame<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>gl", ":lua require('telescope.builtin').git_commits()<CR>", {})

vim.api.nvim_set_keymap("n", "<Leader>?", ":Cheatsheet<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>cj", "<cmd>:ProDoc<CR>", {})

vim.api.nvim_set_keymap('i', "<CR>", "compe#confirm('<CR>')", { silent = true, expr = true })

vim.api.nvim_set_keymap("n", "<Leader>ng", ":Neogen<CR>", {})
