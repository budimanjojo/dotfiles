local fn = vim.fn
local cmd = vim.cmd

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  _G.packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local packer = require('packer')

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  },
  profile = {
    enable = true,
    threshold = 1,
  }
})

packer.startup({
  function(use)
    use 'wbthomason/packer.nvim'

    -- Syntax highlighting
    use 'pearofducks/ansible-vim'
    use 'alker0/chezmoi.vim'
    use {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end
    }

    -- Appearance
    use 'folke/tokyonight.nvim'
    use 'stevearc/dressing.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        require('configs._lualine')
      end
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
        require('indent_blankline').setup()
      end
    }

    -- LSP
    use {
      'neovim/nvim-lspconfig',
      requires = {
        'b0o/schemastore.nvim',
        'ray-x/lsp_signature.nvim',
        'lewis6991/gitsigns.nvim',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig',
        'jose-elias-alvarez/null-ls.nvim',
        'nvim-lua/plenary.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
      },
      config = function()
        require('configs._lspconfig')
      end
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('configs._treesitter')
      end
    }
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'f3fora/cmp-spell',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'onsails/lspkind-nvim',
        'rafamadriz/friendly-snippets',
        'neovim/nvim-lspconfig'
      },
      config = function()
        require('configs._nvim-cmp')
      end
    }
    use {
      'folke/trouble.nvim',
      opt = true,
      event = 'BufReadPost',
      config = function()
        require('trouble').setup()
      end
    }
    use {
      'windwp/nvim-ts-autotag',
      config = function()
        require('nvim-ts-autotag').setup()
      end
    }

    -- Fuzzy finder
    use {
      'ibhagwan/fzf-lua',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      opt = true,
      event = 'VimEnter',
      config = function()
        require('configs._fzf-lua')
      end
    }
    use {
      'phaazon/hop.nvim',
      branch = 'v2',
      config = function()
        require('hop').setup()
      end
    }

    -- Enhancement
    use {
      'max397574/better-escape.nvim',
      config = function()
        require('better_escape').setup { mapping = { 'ii' }}
      end
    }

    -- System utility
    use 'numToStr/FTerm.nvim'
    use {
      'tamago324/lir.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'tamago324/lir-git-status.nvim',
        { 'kyazdani42/nvim-web-devicons', opt = true }
      },
      module = 'lir',
      config = function ()
        require('configs._lir')
      end
    }
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('configs._gitsigns')
      end
    }

    -- Editing support
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('configs._autopairs')
      end
    }
    use {
      'kylechui/nvim-surround',
      config = function()
        require('nvim-surround').setup()
      end
    }

    -- Braindead doctor
    use {
      'folke/which-key.nvim',
      config = function()
        require('which-key').setup()
      end
    }

    -- Other
    use 'andweeb/presence.nvim'

    if packer_bootstrap then
      require('packer').sync()
    end
  end
})

cmd [[
  augroup PackerSync
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]]
