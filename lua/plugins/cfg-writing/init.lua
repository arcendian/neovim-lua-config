vim.opt.spelllang = "en"
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
		vim.opt.colorcolumn = "0"
		vim.opt.wrap = true
	end,
	on_close = function()
		vim.opt.colorcolumn = "80"
		vim.opt.wrap = false
	end,
})

-- ============================ ORG MODE =================================== --
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.org = {
	install_info = {
		url = "https://github.com/milisims/tree-sitter-org",
		revision = "main",
		files = { "src/parser.c", "src/scanner.cc" },
	},
	filetype = "org",
}

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = { "org" },
		additional_vim_regex_highlighting = { "org" },
	},
	ensure_installed = { "org" }, -- Or run :TSUpdate org
})

require("orgmode").setup({
	org_agenda_files = { "~/Documents/Org/*" },
	org_default_notes_file = "~/Documents/Org/notes/index.org",
})

require("org-bullets").setup({
	symbols = { "◉", "○", "✸", "✿" },
})

-- ============================== REMAPS =================================== --
local opts = { noremap = true, silent = true }

-- Toggle spell checking on and off
vim.api.nvim_set_keymap("n", "<Leader>wc", ":set spell!<CR>", opts)

-- Toggle zen-mode on and off
vim.api.nvim_set_keymap("n", "<Leader>wz", ":ZenMode<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>wt", ":Twilight<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>we", ":TwilightEnable<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>wd", ":TwilightDisable<CR>", opts)
