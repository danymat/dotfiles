local packer = require('packer')

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
    use { 'VundleVim/Vundle.vim' }
    use { 'preservim/nerdtree' }
    use { 'tpope/vim-surround' }
    use { 'rakr/vim-one' }
    use { 'joshdick/onedark.vim' }
    use { 
        'vim-airline/vim-airline',
        config = function()
            vim.g.airline_theme = 'deus'
        end,
        requires = "vim-airline/vim-airline-themes"
    }
    use { 'tpope/vim-fugitive' }
    use { 'preservim/nerdcommenter' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'mhinz/vim-startify' }
    use { 'sheerun/vim-polyglot' }
    use { 'airblade/vim-gitgutter' }
    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-lua/plenary.nvim' }

    use { 
        'nvim-telescope/telescope.nvim',
        config = function()
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
        end
    }

    use { 'ayu-theme/ayu-vim' }
    use { 'junegunn/goyo.vim' }
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
            }
        end
    }

    use { 
        'hrsh7th/nvim-compe',
        config = function ()
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
        end
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
    use { 'hrsh7th/vim-vsnip' }
    use { 'nvim-telescope/telescope-project.nvim' }
    use { 'nvim-treesitter/nvim-tree-docs' }
    use { 'nacro90/numb.nvim' }
    use { 'danymat/neorg' }
    use { 'tami5/sql.nvim' }
    use { 'nvim-telescope/telescope-frecency.nvim' }
    use { 'sudormrfbin/cheatsheet.nvim' }
    use { 'glepnir/prodoc.nvim' }
end)
