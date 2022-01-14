local status_ok, theme = pcall(require, "onenord")
if not status_ok then
	return
end

theme.setup({
	theme = "dark",
	borders = true,
	styles = {
		comments = "italic",
		keywords = "italic",
		functions = "italic",
		diagnostics = "undercurl",
	},
	custom_highlights = {
		TSType = { fg = "#8fbcbb" },
	},
})
