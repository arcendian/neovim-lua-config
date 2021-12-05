-- ======================== HEADLINES ====================================== --
-- horizontal highlights for text filetypes, like markdown, rmd,
-- vimwiki and orgmode
require("headlines").setup()

-- ======================= ZEN MODE ======================================== --
require("zen-mode").setup({
	window = {
		options = {
			signcolumn = "no",
			number = false,
			relativenumber = false,
			cursorline = false,
			cursorcolumn = false,
			foldcolumn = "0",
			list = false,
		},
	},
	plugins = { options = { enabled = true, ruler = false, showcmd = false } },
	on_open = function(win)
		vim.opt_local.colorcolumn = "0"
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en"
	end,
	on_close = function()
		vim.opt_local.colorcolumn = "80"
		vim.opt_local.wrap = false
		vim.opt_local.spell = false
	end,
})

-- ============================ ORG MODE =================================== --
-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- parser_config.org = {
-- 	install_info = {
-- 		url = "https://github.com/milisims/tree-sitter-org",
-- 		revision = "main",
-- 		files = { "src/parser.c", "src/scanner.cc" },
-- 	},
-- 	filetype = "org",
-- }

-- require("nvim-treesitter.configs").setup({
-- 	highlight = {
-- 		enable = true,
-- 		disable = { "org" },
-- 		additional_vim_regex_highlighting = { "org" },
-- 	},
-- 	ensure_installed = { "org" }, -- Or run :TSUpdate org
-- })

-- require("orgmode").setup({
-- 	org_agenda_files = { "~/Documents/Org/*" },
-- 	org_default_notes_file = "~/Documents/Org/notes/index.org",
-- })

-- require("org-bullets").setup({
-- 	symbols = { "◉", "○", "✸", "✿" },
-- })
