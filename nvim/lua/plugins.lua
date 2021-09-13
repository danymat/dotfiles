vim.cmd("packadd packer.nvim")

local packer = require("packer")

packer.startup(function(use)
	use({
		"wbthomason/packer.nvim",
		opt = true,
	})

	use({ "preservim/nerdtree" })
	use({ "tpope/vim-surround" })
	use({ "preservim/nerdcommenter" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "junegunn/goyo.vim" })

	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = require("telescope.themes").get_ivy({

					winblend = 10,
					mappings = {
						i = {
							["<Down>"] = false,
							["<Up>"] = false,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
				}),
				extensions = {},
			})
			require("telescope").load_extension("project")
		end,
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope-frecency.nvim",
			"nvim-telescope/telescope-project.nvim",
		},
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

			parser_configs.norg = {
				install_info = {
					url = "https://github.com/vhyrro/tree-sitter-norg",
					files = { "src/parser.c", "src/scanner.cc" },
					branch = "main",
				},
			}

			require("nvim-treesitter.configs").setup({
				context_commentstring = {
					enable = true,
				},
				ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<TAB>",
						scope_incremental = "<TAB>",
						node_incremental = "<TAB>",
						node_decremental = "<S-TAB>",
					},
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
						},
					},
					swap = {
						enable = true,
						swap_next = {
							["<leader>sn"] = "@parameter.inner",
						},
						swap_previous = {
							["<leader>sp"] = "@parameter.inner",
						},
					},
					move = {
						enable = true,
						set_jumps = true, -- Whether to set jumps in the jumplist
						goto_next_start = {
							["gnf"] = "@function.outer",
							["gnif"] = "@function.inner",
							["gnp"] = "@parameter.inner",
							["gnc"] = "@call.outer",
							["gnic"] = "@call.inner",
						},
						goto_next_end = {
							["gnF"] = "@function.outer",
							["gniF"] = "@function.inner",
							["gnP"] = "@parameter.inner",
							["gnC"] = "@call.outer",
							["gniC"] = "@call.inner",
						},
						goto_previous_start = {
							["gpf"] = "@function.outer",
							["gpif"] = "@function.inner",
							["gpp"] = "@parameter.inner",
							["gpc"] = "@call.outer",
							["gpic"] = "@call.inner",
						},
						goto_previous_end = {
							["gpF"] = "@function.outer",
							["gpiF"] = "@function.inner",
							["gpP"] = "@parameter.inner",
							["gpC"] = "@call.outer",
							["gpiC"] = "@call.inner",
						},
					},
				},
			})
		end,
		requires = {
			"nvim-treesitter/playground",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	})

	use({ "szw/vim-maximizer" })

	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				show_current_context = true,
			})
		end,
	})

	use({
		"windwp/nvim-autopairs",
		event = "ColorScheme",
		config = function()
			require("nvim-autopairs").setup({
				fast_wrap = { map = "€" },
			})
			require("nvim-autopairs.completion.cmp").setup({
				map_cr = true, --  map <CR> on insert mode
				map_complete = true, -- it will auto insert `(` after select function or method item
				auto_select = true, -- automatically select the first item
			})
		end,
		after = "nvim-cmp",
	})

	use({
		"nacro90/numb.nvim",
		config = function()
			require("numb").setup()
		end,
	})

	use({
		"~/Developer/neorg",
		config = function()
			require("configs.neorg")
		end,
		requires = {
			"nvim-lua/plenary.nvim",
			"vhyrro/neorg-telescope",
		},
		branch = "gtd_base",
	})

	use({ "tami5/sql.nvim" })

	use({ 
        "rose-pine/neovim",
        as = "rose-pine",
        config = function ()
            require('rose-pine.functions').select_variant('moon')
            vim.g.rose_pine_enable_italics = true
            vim.g.rose_pine_disable_background = false
            vim.cmd [[ colorscheme rose-pine ]]
        end})

	use({
		"hoob3rt/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = { theme = "rose-pine" },
			})
		end,
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"andweeb/presence.nvim",
		config = function()
			require("presence"):setup({
				main_image = "file",
			})
		end,
	})

	use({
		"~/Developer/neogen",
		config = function()
			local setup = require("configs.neogen")
			require("neogen").setup(setup)
		end,
	})

	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	use({
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("configs.cmp")
		end,
		module = "cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lua",
		},
	})

	use({
		"L3MON4D3/LuaSnip",
	})

	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				direction = "float",
				size = 90,
				persists = true,
				float_opts = {
					-- The border key is *almost* the same as 'nvim_win_open'
					-- see :h nvim_win_open for details on borders however
					-- the 'curved' border is a custom border type
					-- not natively supported but implemented in this plugin.
					border = "double",
					winblend = 3,
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
			})
		end,
	})

	use("folke/lua-dev.nvim")

    use {
        '~/Developer/nvim-lspmanager',
        branch = "dev",
        config = function()
            require('lspmanager').setup()
			require("configs.lsp")
        end,
        requires = {
			"neovim/nvim-lspconfig",
			"ray-x/lsp_signature.nvim",
            "nvim-lua/plenary.nvim"
        }
    }

end)
