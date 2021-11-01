local cmp = require("cmp")
local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local luasnip = require("luasnip")

-- Do not jump to snippet if i'm outside it
-- https://github.com/L3MON4D3/LuaSnip/issues/78
luasnip.config.setup({
	region_check_events = "CursorMoved",
	delete_check_events = "TextChanged",
})

local lspkind = require("lspkind")
local neogen = require("neogen")

cmp.setup({
	documentation = {
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
	},
	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			maxwidth = 50,
			menu = {
				buffer = "﬘ (buffer)",
				nvim_lsp = " (lsp)",
				luasnip = " (luaSnip)",
				nvim_lua = " (lua)",
				latex_symbols = " (latex)",
			},
		}),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	-- You must set mapping if you want.
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
			elseif neogen.jumpable() then
				vim.fn.feedkeys(t("<cmd>lua require('neogen').jump_next()<CR>"), "")
			else
				fallback()
			end
		end, {
			"i",
			"s",
            "c"
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
			else
				fallback()
			end
		end, {
			"i",
			"s",
            "c"
		}),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
	},

	-- You should specify your *installed* sources.
	sources = {
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
		{ name = "buffer", keyword_length = 5, max_item_count = 5 },
		{ name = "neorg" },
	},

	experimental = {
		ghost_text = true,
	},
})

require'cmp'.setup.cmdline(':', {
  sources = {
    { name = 'cmdline', keyword_length = 3}
  }
})

