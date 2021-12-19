require("onenord").setup({
	theme = "dark",
	borders = true,
	styles = {
		comments = "italic",
		keywords = "italic",
		functions = "italic",
		diagnostics = "undercurl",
	},
	custom_highlights = {
		TSNamespace = { fg = "#5e81ac" },
		TSType = { fg = "#8fbcbb" },
	},
})
