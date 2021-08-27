local packer = require('packer')

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'preservim/nerdtree' }
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-fugitive' }
    use { 'preservim/nerdcommenter' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'mhinz/vim-startify' }
    use { 'airblade/vim-gitgutter' }
    use { 'junegunn/goyo.vim' }

    use { 
        'nvim-telescope/telescope.nvim',
        config = function()
            require'telescope'.setup { 
                defaults = { winblend = 10 } ,
                extensions = {
                    frecency = {
                        show_scores = true,
                        ignore_patterns = {"*.git/*", "*/tmp/*"},
                    },
                }
            }
            require'telescope'.load_extension'frecency'
            require'telescope'.load_extension'project'
        end,
        requires = {
            "nvim-lua/plenary.nvim",
            'nvim-lua/popup.nvim',
            'nvim-telescope/telescope-frecency.nvim',
            'nvim-telescope/telescope-project.nvim'
        }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = 'TSUpdate',
        config = function ()
            local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

            parser_configs.norg = {
                install_info = {
                    url = "https://github.com/vhyrro/tree-sitter-norg",
                    files = { "src/parser.c", "src/scanner.cc" },
                    branch = "main"
                },
            }

            require'nvim-treesitter.configs'.setup {
                ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
                highlight = { enable = true },
                indent = { enable = true, },
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
                        }
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
                    }
                }
            }
        end,
        requires = {
            "nvim-treesitter/playground",
            "nvim-treesitter/nvim-treesitter-textobjects"
        }
    }

    use { 'szw/vim-maximizer' }

    use {
        'kabouzeid/nvim-lspinstall',
        config = function ()
            require('configs.lsp') 
        end,
        requires = {
            "neovim/nvim-lspconfig",
            "ray-x/lsp_signature.nvim"
        }
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function ()
           require("indent_blankline").setup {
               show_current_context = true,
            }
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function ()
            require('nvim-autopairs').setup{
                fast_wrap = { map = '€'},
            }
            require("nvim-autopairs.completion.cmp").setup({
                map_cr = true, --  map <CR> on insert mode
                map_complete = true, -- it will auto insert `(` after select function or method item
                auto_select = true -- automatically select the first item
            })
        end,
        after = "nvim-cmp"
    }

    use { 'sbdchd/neoformat' }
    use { 'nvim-treesitter/nvim-tree-docs' }
    use { 'nacro90/numb.nvim' }

    use {
        '~/Developer/neorg',
        config = function ()
            require('configs.neorg')
        end,
        requires = {
            "nvim-lua/plenary.nvim",
            "vhyrro/neorg-telescope"
        },
        branch = "gtd_base"
    }

    use { 'tami5/sql.nvim' }

    use { 
        'sudormrfbin/cheatsheet.nvim',
        configs = function ()
            require('configs.cheatsheet')
        end,
        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
        }
    }

    use { 'glepnir/prodoc.nvim' }

    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use {
        'hoob3rt/lualine.nvim',
        config = function ()
            custom = require('configs.rose-pine-lualine')
            require('lualine').setup {
                options = {theme = 'rose-pine' }
            }
        end,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use 'andweeb/presence.nvim'

    use {
        '~/Developer/neogen',
        config = function ()
            local setup = require('configs.neogen')
            require('neogen').setup(setup)
        end,
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use({
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function ()
            require("configs.cmp")
        end,
        module = "cmp",
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-nvim-lua'
        },
    })

    use {
        "akinsho/toggleterm.nvim",
        config = function ()
            require("toggleterm").setup{
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
                    }
                }
            } 
        end

    }

end)

