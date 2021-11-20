-- Bootstrapping
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- prerequisites
  use 'kyazdani42/nvim-web-devicons'

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- colorscheme
  use 'maaslalani/nordbuddy'

  -- lsp configurations
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  -- snippets
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-vsnip'
  use "rafamadriz/friendly-snippets"

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- better syntax highlighting with tree-sitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- colors
  use { 'rrethy/vim-hexokinase', run = 'make hexokinase'}

  -- terminal inside neovim -- floating
  use 'voldikss/vim-floaterm'

  -- fancy statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- distraction free mode for neovim
  use 'junegunn/goyo.vim'

  -- auto-pairing brackets
  use 'windwp/nvim-autopairs'

  -- markdown preview in browser
  use { 'iamcco/markdown-preview.nvim',  run = 'cd app && yarn install' }

	-- git wrapper
	use 'tpope/vim-fugitive'

	-- ARM assembly syntax hightlighting
	use 'ARM9/arm-syntax-vim'
end)
