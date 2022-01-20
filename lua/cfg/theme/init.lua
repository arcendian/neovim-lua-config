local status_ok, theme = pcall(require, "catppuccin")
if not status_ok then
	return
end

theme.setup({
	transparent_background = true,
	term_colors = true,
	styles = {
		comments = "italic",
		functions = "italic",
		keywords = "italic",
		strings = "NONE",
		variables = "NONE",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = "italic",
				hints = "italic",
				warnings = "italic",
				information = "italic",
			},
			underlines = {
				errors = "undercurl",
				hints = "undercurl",
				warnings = "undercurl",
				information = "undercurl",
			},
		},
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitsigns = true,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = false,
		},
		which_key = true,
		indent_blankline = {
			enabled = false,
			colored_indent_levels = false,
		},
		dashboard = true,
		neogit = true,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = false,
		markdown = true,
		lightspeed = false,
		ts_rainbow = true,
		hop = false,
		notify = true,
		telekasten = false,
	},
})

vim.cmd([[colorscheme catppuccin]])
