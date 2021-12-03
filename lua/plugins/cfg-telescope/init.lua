local tele = require("telescope")

tele.setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--hidden",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		file_ignore_patterns = {
			"node_modules",
			"__pycache__",
			".git",
			"%.png",
			"%.jpg",
			"%.svg",
			"%.cat",
			"%.pdf",
			"%.epub",
			"%.djvu",
			"%.mkv",
			"%.mp4",
			"%.mp3",
			"%.m4a",
			"%.webm",
			"%.wav",
			"%.ttf",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

-- load extensions
tele.load_extension("fzf")
tele.load_extension("zoxide")

local opts = { noremap = true, silent = true }

-- keybindings for builtin functions
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)

-- zoxide keybindings
vim.api.nvim_set_keymap(
	"n",
	"<leader>cd",
	":lua require'telescope'.extensions.zoxide.list{}<CR>",
	{ noremap = true, silent = true }
)
