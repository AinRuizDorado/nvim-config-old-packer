local use = require('packer').use




require('packer').startup(function()

  -- el propio Packer, si se borra es F total
  use 'wbthomason/packer.nvim'

  -- status bar
  use({
    "maximbaz/lightline-ale",
    "itchyny/lightline.vim",
  })

  -- Themes
  use({
    "ryanoasis/vim-devicons",
    -- "folke/tokyonight.nvim",
    --
    "nvim-lualine/lualine.nvim",
    'norcalli/nvim-colorizer.lua'
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

  -- Auto read, en teoria actualiza el archivo sin tener que abrir y cerrar VIM
  use({
    "djoshea/vim-autoread",
  })

  -- IDE
  use({
    "easymotion/vim-easymotion",
    "jremmen/vim-ripgrep",
  })

  -- FZF
  use({
    "junegunn/fzf",
    "junegunn/fzf.vim",
  })

  -- NerdTree
  use({
    "scrooloose/nerdtree",
  })

  -- Completition
  use({
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip-integ",
    "rafamadriz/friendly-snippets",
    "mattn/emmet-vim",
    "onsails/lspkind.nvim",
  })

  -- LSP SAGA
use({
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})

  -- LSP
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "MunifTanjim/eslint.nvim",
  })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  -- Treesitter context
  -- use 'nvim-treesitter/nvim-treesitter-context'

  use "lukas-reineke/indent-blankline.nvim"

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }
  use 'kyazdani42/nvim-web-devicons'

end)
