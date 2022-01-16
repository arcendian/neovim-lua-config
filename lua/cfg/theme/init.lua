local status_ok, theme = pcall(require, "onedark")
if not status_ok then
	return
end

theme.setup({
	code_style = {
		keywords = "italic",
		functions = "italic",
	},
	highlights = {
		MatchParen = { fg = "$yellow" },
		TSNamespace = { fg = "#a9a1e1" },
	},
	toggle_style_key = "<leader>cs",
})
theme.load()
