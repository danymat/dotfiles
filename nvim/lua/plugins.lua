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

    use { 'Yggdroot/indentLine' }
    use { 'jiangmiao/auto-pairs' }
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
            require('neogen').setup {
                enabled = true,
            }
        end
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

end)
