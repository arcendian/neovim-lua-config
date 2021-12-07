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
		TSType = { fg = "#8fbcbb" },
	},
})
