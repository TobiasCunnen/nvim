require('packer').startup(function(use)

  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Theme
	use "EdenEast/nightfox.nvim"

  -- Lua status line
  use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- Telescope
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}

  --Treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

	-- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'

	-- Autocomplete
	use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

	-- Snippets
	use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

  -- Mason LSP server and Linter manager 
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "mfussenegger/nvim-lint"
  use "mhartington/formatter.nvim"

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  if install_plugins then
    require('packer').sync()
  end
end)

