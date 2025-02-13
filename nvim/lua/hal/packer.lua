vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- themes
    use ({
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox",
    })

    use({
        "neanias/everforest-nvim",
        as = "everforest",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup()
        end,
    })
  
    -- search & syntax
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
	}

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- git
    use('tpope/vim-fugitive')

    -- navigation
    use('theprimeagen/harpoon')
    
    -- mistakes were made
    use('mbbill/undotree')

    -- code specific
    use('jiangmiao/auto-pairs')

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

end)
