local colors = require("onenord.colors")

require("onenord").setup({
	borders = true,
	italics = {
		comments = true,
		strings = false,
		keywords = true,
		functions = true,
		variables = false,
	},
	custom_highlights = {
		TSNamespace = { fg = colors.cyan },
		TSType = { fg = "#8fbcbb" },
	},
})
