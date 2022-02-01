local status_ok, theme = pcall(require, "onenord")
if not status_ok then
	return
end

theme.setup({
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
		background = true,
		cursorline = false,
		eob_lines = true,
	},
})
