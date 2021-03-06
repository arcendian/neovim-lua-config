local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd("packadd packer.nvim")
end

local packer = require("packer")

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function()
  -- ======================= UTILITIES ================================== --
  use("wbthomason/packer.nvim")

  -- Pre-requisites
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")

  -- lsp configurations
  use("neovim/nvim-lspconfig")
  use("hrsh7th/nvim-cmp")
  use("mfussenegger/nvim-jdtls")

  -- completion sources
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lua")
  use("lukas-reineke/cmp-rg")

  -- sorting completion suggestions
  -- use 'lukas-reineke/cmp-under-comparator'

  -- snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  -- telescope - fuzzy finder and more
  use({
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim",
  })

  -- telescope extensions
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    requires = "nvim-telescope/telescope.nvim",
    run = "make",
  })
  use({
    "jvgrootveld/telescope-zoxide",
    requires = "nvim-telescope/telescope.nvim",
  })
  use({
    "cljoly/telescope-repo.nvim",
    requires = "nvim-telescope/telescope.nvim",
  })
  use({
    "nvim-telescope/telescope-file-browser.nvim",
    requires = "nvim-telescope/telescope.nvim",
  })

  -- auto-pairing brackets
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")
  use("RRethy/nvim-treesitter-endwise")

  -- keybindings
  use("folke/which-key.nvim")

  -- autoformatting -- trying out this plugin for now
  use("mhartington/formatter.nvim")
  -- use( "lukas-reineke/lsp-format.nvim" )

  -- plugin for easier use of builtin terminal
  use("numToStr/FTerm.nvim")

  -- git stuff
  use({
    "TimUntersberger/neogit",
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
  })
  use({
    "sindrets/diffview.nvim",
    requires = "nvim-lua/plenary.nvim",
  })
  use("lewis6991/gitsigns.nvim")

  -- ARM assembly syntax hightlighting
  use("ARM9/arm-syntax-vim")

  -- julia programming support
  use("JuliaEditorSupport/julia-vim")

  -- undo-tree
  use("mbbill/undotree")

  -- ========================== UI ====================================== --
  -- better syntax highlighting with tree-sitter and more
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  -- tree-sitter extensions
  use({
    "p00f/nvim-ts-rainbow",
    requires = "nvim-treesitter/nvim-treesitter",
  })
  use({
    "JoosepAlviste/nvim-ts-context-commentstring",
    requires = "nvim-treesitter/nvim-treesitter",
  })

  -- colorscheme
  use("rmehri01/onenord.nvim")
  use("ishan9299/modus-theme-vim")

  -- fancy statusline
  use({
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      opt = true,
    },
  })

  -- comments plugins
  use("numToStr/Comment.nvim")

  -- colors for hex color values
  use({
    "rrethy/vim-hexokinase",
    run = "make hexokinase",
  })

  -- icons/glyphs
  use("kyazdani42/nvim-web-devicons")

  -- file-explorer (netrw is nice but this looks nicer)
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
  })

  -- notifications plugin
  use("rcarriga/nvim-notify")

  -- ======================= WRITING ================================== --
end)
