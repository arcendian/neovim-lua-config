local status_ok, treesitter_cfg = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

treesitter_cfg.setup({
	ensure_installed = "maintained",
	highlight = { enable = true, additional_vim_regex_highlighting = false },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
		colors = {
			"#61afef",
			"#56b6c2",
			"#e5c07b",
			"#e06c75",
			"#c678dd",
			"#98c879",
		},
	},
	context_commentstring = {
		enable = true,
	},
})
