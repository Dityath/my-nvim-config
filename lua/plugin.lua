vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer | for updating packer itself
	use 'wbthomason/packer.nvim'

  -- lua | some lua packages for nvim
  use "nvim-lua/plenary.nvim" 
  use 'nvim-lua/popup.nvim'

  -- nvim theme | nvim colorscheme/theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'vim-airline/vim-airline-themes'

  -- wakatime | for monitoring hours of code
  use 'wakatime/vim-wakatime'

  -- scrolling | increase good scrolling experience 
  use 'yuttie/comfortable-motion.vim'

  -- tmux | navigator and stuffs
  use 'christoomey/vim-tmux-navigator'

  -- telescope | for finding files
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- vim status bar | using airline
  use 'hoob3rt/lualine.nvim'

  -- completion | using coc 
  use 'neoclide/coc.nvim'

  -- nerdtree
  use 'preservim/nerdtree'
  use 'xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'

  -- vim commentary
  use 'tpope/vim-commentary'

  -- ale formatting (never use it tho lol)
  use 'dense-analysis/ale'

  -- fugitive
  use 'tpope/vim-fugitive'

  -- tagalong
  use 'AndrewRadev/tagalong.vim'

  -- emmet
  use 'mattn/emmet-vim'

  -- syntastic
  use 'scrooloose/syntastic'

  -- git gutter
  use 'airblade/vim-gitgutter'

  -- prettier (didnt work)
  use 'prettier/vim-prettier'

  -- js plugin
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'

  -- jsx syntax highlighting
  use 'maxmellon/vim-jsx-pretty'
  use 'mxw/vim-jsx'

  -- vue plugin
  use 'leafOfTree/vim-vue-plugin'

  -- css syntax
  use 'ap/vim-css-color'
  use 'hail2u/vim-css3-syntax'

  -- html language
  use 'rstacruz/sparkup'

  -- markdown
  use 'preservim/vim-markdown'

  -- lsp 
  use 'neovim/nvim-lspconfig'
  use "lukas-reineke/lsp-format.nvim"
  use "hrsh7th/cmp-nvim-lsp"
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

end)
