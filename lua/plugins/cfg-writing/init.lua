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

-- Toggle zen-mode on and off
vim.api.nvim_set_keymap("n", "<Leader>wz", ":ZenMode<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wt", ":Twilight<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>we", ":TwilightEnable<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>wd", ":TwilightDisable<CR>", { noremap = true, silent = true })

-- Spell checking
vim.opt.spelllang = "en"

-- Toggle spell checking on and off
vim.api.nvim_set_keymap("n", "<Leader>wc", ":set spell!<CR>", { noremap = true, silent = true })
