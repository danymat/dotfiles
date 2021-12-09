-- LOL STILL USING ARROWS?
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", {})
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", {})

vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", {})
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", {})

-- Telescope Stuff
vim.api.nvim_set_keymap(
	"n",
	"<C-f>",
	":lua require'telescope.builtin'.find_files({ hidden = true, file_ignore_patterns = { '^.git/' }})<cr>",
	{}
)
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", {})
vim.api.nvim_set_keymap(
	"n",
	"<Leader>b",
	":lua require('telescope.builtin').buffers({ show_all_buffers = true })<CR>",
	{}
)
vim.api.nvim_set_keymap("n", "<Leader>o", ":lua require('telescope.builtin').oldfiles()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>nn", ":lua require 'telescope'.extensions.file_browser.file_browser()<CR>", {})
vim.api.nvim_set_keymap(
	"n",
	"<Leader>p",
	":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
	{}
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>§§",
	":lua require('configs.telescope').open_starting_files()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>zi",
	":lua require('configs.telescope').search_zettelkasten_in_files()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>zl",
	":lua require('configs.telescope').find_link()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>zk",
	":lua require('configs.telescope').search_zettelkasten()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>?",
	":lua require('telescope.builtin').help_tags()<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", {})

-- Dotfiles
vim.api.nvim_set_keymap("n", "<Leader>ev", ":lua require('configs.telescope').search_dotfiles()<CR>", {
	silent = true,
})
vim.api.nvim_set_keymap("n", "<Leader>sv", ":source ~/.config/nvim/init.lua<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>so", ":source %<CR>", {})

-- Window management
vim.api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>r", "<C-w>r<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>vs", "<C-w>v", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>zz", "<cmd>MaximizerToggle<CR>", { silent = true })

-- Moving speed
vim.api.nvim_set_keymap("n", "÷", "<C-u>", {})
vim.api.nvim_set_keymap("n", "≠", "<C-d>", {})
vim.api.nvim_set_keymap("v", "÷", "<C-u>", {})
vim.api.nvim_set_keymap("v", "≠", "<C-d>", {})
vim.api.nvim_set_keymap("n", "÷", "<C-u>", {})
vim.api.nvim_set_keymap("n", "≠", "<C-d>", {})
vim.api.nvim_set_keymap("v", "÷", "<C-u>", {})
vim.api.nvim_set_keymap("v", "≠", "<C-d>", {})

-- thanks to theprimeagen for this
vim.api.nvim_set_keymap("n", "n", "nzzzv", {})
vim.api.nvim_set_keymap("n", "N", "Nzzzv", {})
vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true })
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", {})
vim.api.nvim_set_keymap("i", "!", "!<c-g>u", {})
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", {})
vim.api.nvim_set_keymap("i", "?", "?<c-g>u", {})
vim.api.nvim_set_keymap("v", "<Leader>p", '"_P', {})

-- Nerdtree
vim.api.nvim_set_keymap("n", "<Leader>t", ":NERDTreeFocus<CR>", {})

-- Neogen
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", {
	silent = true,
})
vim.api.nvim_set_keymap("n", "<Leader>nt", ":lua require('neogen').generate({ type = 'type' })<CR>", { silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>ez",
	":lua R('neogen', { setup = require('configs.neogen') })<CR>",
	{ silent = true }
)

-- Keybinds for toggleterm.lua
vim.api.nvim_set_keymap(
	"n",
	"<Leader>sf",
	":lua require('toggleterm.terminal').Terminal:new { direction = 'float', count = 1 }:toggle()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>sr",
	":lua require('toggleterm.terminal').Terminal:new { direction = 'vertical', count = 2 }:toggle()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>gs",
	":lua require('toggleterm.terminal').Terminal:new { cmd = 'lazygit', hidden = true }:toggle()<CR>",
	{ noremap = true, silent = false }
)

-- Venn.nvim
-- enable or disable keymappings for venn
function _G.toggle_venn()
	local venn_enabled = vim.inspect(vim.b.venn_enabled)
	if venn_enabled == "nil" then
		vim.b.venn_enabled = true
		vim.cmd([[setlocal ve=all]])
		-- draw a line on HJKL keystokes
		vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<cr>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<cr>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<cr>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<cr>", { noremap = true })
		-- draw a box by pressing "f" with visual selection
		vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<cr>", { noremap = true })
		print("Enabled Venn")
	else
		vim.cmd([[setlocal ve=]])
		vim.cmd([[mapclear <buffer>]])
		vim.b.venn_enabled = nil
		print("Disabled Venn")
	end
end

-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap("n", "<leader>v", ":lua toggle_venn()<cr>", { noremap = true })

-- Inverse of join-line
vim.api.nvim_set_keymap("n", "<C-j>", "i<CR><Esc>J", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>ai", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true, silent = true })
-- LSP
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zzzv", {})
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zzzv", {})
vim.api.nvim_set_keymap(
	"n",
	"<Leader>aa",
	":lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_cursor({}))<cr>",
	{ noremap = true, silent = true }
)

-- Zettelkasten
vim.cmd([[
    let g:zettelkasten = "/Users/danielmathiot/Documents/000 Meta/00.01 Brain/"
command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . " <args>.md"
]])

vim.api.nvim_set_keymap("n", "<Leader>zn", ":NewZettel ", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<Leader>@", ":lua require('configs.telescope').paste_file_name()<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>z&", ":lua require('lspconfig').zk.index()<CR>", { noremap = true })

-- This is the greatest thing ever for azerty keyboards
-- https://superuser.com/questions/1044018/how-to-swap-the-numbers-row-on-azerty-keyboards-in-vim-only-while-being-in-norma
vim.api.nvim_set_keymap("n", "1", "&", { noremap = true })
vim.api.nvim_set_keymap("n", "2", "é", { noremap = true })
vim.api.nvim_set_keymap("n", "3", '"', { noremap = true })
vim.api.nvim_set_keymap("n", "4", "'", { noremap = true })
vim.api.nvim_set_keymap("n", "5", "(", { noremap = true })
vim.api.nvim_set_keymap("n", "6", "§", { noremap = true })
vim.api.nvim_set_keymap("n", "7", "è", { noremap = true })
vim.api.nvim_set_keymap("n", "8", "!", { noremap = true })
vim.api.nvim_set_keymap("n", "9", "ç", { noremap = true })
vim.api.nvim_set_keymap("n", "0", "à", { noremap = true })

vim.api.nvim_set_keymap("n", "&", "1", { noremap = true })
vim.api.nvim_set_keymap("n", "é", "2", { noremap = true })
vim.api.nvim_set_keymap("n", '"', "3", { noremap = true })
vim.api.nvim_set_keymap("n", "'", "4", { noremap = true })
vim.api.nvim_set_keymap("n", "(", "5", { noremap = true })
vim.api.nvim_set_keymap("n", "§", "6", { noremap = true })
vim.api.nvim_set_keymap("n", "è", "7", { noremap = true })
vim.api.nvim_set_keymap("n", "!", "8", { noremap = true })
vim.api.nvim_set_keymap("n", "ç", "9", { noremap = true })
vim.api.nvim_set_keymap("n", "à", "0", { noremap = true })
