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
		TSNamespace = { fg = "#5e81ac" },
		TSType = { fg = "#8fbcbb" },
	},
	custom_styles = {
		LspDiagnosticsUnderlineError = "undercurl",
		LspDiagnosticsUnderlineWarning = "undercurl",
		LspDiagnosticsUnderlineInformation = "undercurl",
		LspDiagnosticsUnderlineHint = "undercurl",
	},
	disable = {
		background = true,
	},
})
