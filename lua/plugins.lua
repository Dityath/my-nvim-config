local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
  -- packer (for auto update)
  use 'wbthomason/packer.nvim'

  -- solarized theme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- neovim wakatime (for dashboard monitoring)
  use 'wakatime/vim-wakatime'

  -- lua line status bar
  use 'hoob3rt/lualine.nvim'

  -- lsp (language server protocol)
  use 'neovim/nvim-lspconfig' -- basic lsp config

  -- auto completion
  use 'onsails/lspkind-nvim' -- vscode-alike pictogram
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in lsp
  use 'hrsh7th/nvim-cmp'     -- completion

  -- snippets engine
  use 'L3MON4D3/LuaSnip'

  -- tree-sitter (for syntax higlighting)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- autopairs and autotag
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- telescope file finder
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim' -- common utilities

  -- developers icons
  use 'kyazdani42/nvim-web-devicons' -- file icons

  -- bufferline (for tabbing)
  use 'akinsho/nvim-bufferline.lua'

  -- colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- lsp saga (for better lsp ui)
  use 'glepnir/lspsaga.nvim'

  -- null ls and prettier
  use 'jose-elias-alvarez/null-ls.nvim' -- use neovim as a language server to inject LSP diagnostics, code actions, and more..
  use 'MunifTanjim/prettier.nvim'       -- prettier plugin for neovim's built in LSP client

  -- gitsigns marker
  use 'lewis6991/gitsigns.nvim'

  -- git blame and browser for nvim
  use 'dinhhuy258/git.nvim'

  -- LSP tool: mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- nerdtree for vscode alike tree folder
  use 'nvim-tree/nvim-tree.lua'

  -- tmux nvim navigator
  use 'christoomey/vim-tmux-navigator'

  -- vim leap
  use 'ggandor/leap.nvim'

  -- markdown previewer
  use { 
    "iamcco/markdown-preview.nvim", 
    run = "cd app && npm install", 
    ft = { "markdown" } 
  }

  -- nvim for c language
  use 'rhysd/vim-clang-format'
  use 'robert-oleynik/clangd-nvim'
end)
