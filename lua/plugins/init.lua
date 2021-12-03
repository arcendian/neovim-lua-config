-- Bootstrapping
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

return require("packer").startup(function()
	-- ======================= UTILITIES ================================== --
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })

	-- Pre-requisites
	use({ "nvim-lua/plenary.nvim" })
	use({ "nvim-lua/popup.nvim" })

	-- lsp configurations
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "ray-x/lsp_signature.nvim" })

	-- snippets
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/vim-vsnip-integ" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "rafamadriz/friendly-snippets" })

	-- telescope - fuzzy finder and more
	use({ "nvim-telescope/telescope.nvim" })

	-- telescope extensions
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "jvgrootveld/telescope-zoxide" })

	-- auto-pairing brackets
	use({ "windwp/nvim-autopairs" })

	-- keybindings
	use({ "folke/which-key.nvim" })

	-- essential web dev tool I just want to try out
	use({ "mattn/emmet-vim" })

	-- autoformatting -- trying out this plugin for now
	use({ "mhartington/formatter.nvim" })

	-- plugin for easier use of builtin terminal
	use({ "akinsho/toggleterm.nvim" })

	-- markdown preview in browser
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })
	use({ "mzlogin/vim-markdown-toc" })

	-- git stuff
	use({ "tpope/vim-fugitive" })
	use({ "lewis6991/gitsigns.nvim" })

	-- ARM assembly syntax hightlighting
	use({ "ARM9/arm-syntax-vim" })

	-- ========================== UI ====================================== --
	-- better syntax highlighting with tree-sitter and more
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- colorscheme
	use({ "rmehri01/onenord.nvim" })

	-- fancy statusline
	use({ "nvim-lualine/lualine.nvim" })

	-- comments plugins
	use({ "terrortylor/nvim-comment" }) -- maybe I don't need this but ...

	-- dashboard
	use({ "glepnir/dashboard-nvim" })

	-- add indentation guides to all lines (including empty lines).
	use({ "lukas-reineke/indent-blankline.nvim" })

	-- colors for hex color values
	use({ "rrethy/vim-hexokinase", run = "make hexokinase" })

	-- icons/glyphs
	use({ "kyazdani42/nvim-web-devicons" })

	-- file-explorer (netrw is nice but this looks nicer)
	use({ "kyazdani42/nvim-tree.lua" })

	-- ======================= WRITING ================================== --
	--  plugins for writing
	use({ "folke/zen-mode.nvim" })
	use({ "folke/twilight.nvim" })
	use({ "vimwiki/vimwiki" })

	-- installing orgmode nvim plugins so I can view org files in vim with
	-- syntax highlighting in case Doom Emacs breaks on me.
	-- uninstalling orgmode for now;
	-- waiting for #86(https://github.com/nvim-orgmode/orgmode/issues/86)
	-- to be resolved.
	-- use({ "nvim-orgmode/orgmode" })
	-- use({ "akinsho/org-bullets.nvim" })
	use({ "lukas-reineke/headlines.nvim" })
end)
