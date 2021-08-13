local packer = require('packer')

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
    use { 'VundleVim/Vundle.vim' }
    use { 'preservim/nerdtree' }
    use { 'tpope/vim-surround' }
    use { 'rakr/vim-one' }
    use { 'joshdick/onedark.vim' }
    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }
    use { 'tpope/vim-fugitive' }
    use { 'preservim/nerdcommenter' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'mhinz/vim-startify' }
    use { 'sheerun/vim-polyglot' }
    use { 'airblade/vim-gitgutter' }
    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'ayu-theme/ayu-vim' }
    use { 'junegunn/goyo.vim' }
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'nvim-treesitter/playground' }
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-compe' }
    use { 'szw/vim-maximizer' }
    use { 'ThePrimeagen/harpoon' }
    use { 'kabouzeid/nvim-lspinstall' }
    use { 'Yggdroot/indentLine' }
    use { 'jiangmiao/auto-pairs' }
    use { 'sbdchd/neoformat' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'nvim-telescope/telescope-project.nvim' }
    use { 'ray-x/lsp_signature.nvim' }
    use { 'nvim-treesitter/nvim-tree-docs' }
    use { 'nacro90/numb.nvim' }
    use { 'danymat/neorg' }
    use { 'tami5/sql.nvim' }
    use { 'nvim-telescope/telescope-frecency.nvim' }
    use { 'sudormrfbin/cheatsheet.nvim' }
    use { 'glepnir/prodoc.nvim' }
end)
