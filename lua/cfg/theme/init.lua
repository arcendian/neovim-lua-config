local colors = require("onenord.colors").load()

require("onenord").setup({
	theme = nil,
	borders = true,
	fade_nc = false,
	styles = {
		comments = "italic",
		strings = "NONE",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		diagnostics = "undercurl",
	},
	disable = {
		background = false,
		cursorline = false,
		eob_lines = true,
	},
	custom_highlights = {
		TSType = { fg = "#8fbcbb" },
	},
})
