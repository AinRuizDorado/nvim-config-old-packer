local use = require('packer').use




require('packer').startup(function()

    use 'wbthomason/packer.nvim'

    -- status bar 
    use({
        "maximbaz/lightline-ale",
	"itchyny/lightline.vim",
    })

    -- Themes 
    use({
        "ryanoasis/vim-devicons",
    })


    -- Typing
    use({
        "tpope/vim-surround",
	"tpope/vim-commentary",
	"alvan/vim-closetag",
    })

    -- css 
    use({
        "ap/vim-css-color",
    })

    -- Terminal 
    use({
        "tc50cal/vim-terminal",
    })

    -- Auto read, en teoria actualiza el archivo sin tener que abrir y cerrar VIM 
    use({
        "djoshea/vim-autoread",
    })

    -- IDE
    use({
        "easymotion/vim-easymotion",
        "jremmen/vim-ripgrep",
    })
-- Completition
    -- use({
    --     "hrsh7th/nvim-cmp",
    --     requires = {
    --         "hrsh7th/cmp-buffer",
    --         "hrsh7th/cmp-path",
    --         "hrsh7th/cmp-nvim-lua",
    --         "hrsh7th/cmp-nvim-lsp",
    --         "hrsh7th/cmp-cmdline",
    --         "hrsh7th/cmp-git",
    --         "rcarriga/cmp-dap",
    --         "saadparwaiz1/cmp_luasnip",
    --         "onsails/lspkind-nvim",
    --         "L3MON4D3/LuaSnip",
    --         "windwp/nvim-autopairs",
    --     },
    -- })

    -- LSP
    use({
        "neovim/nvim-lspconfig",
	"williamboman/nvim-lsp-installer",
        -- "hrsh7th/cmp-nvim-lsp-signature-help",
        "jose-elias-alvarez/null-ls.nvim",
    })
end)


