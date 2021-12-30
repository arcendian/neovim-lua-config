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
			"#88c0d0",
			"#81a1c1",
			"#ebcb8b",
			"#bf616a",
			"#b48ead",
			"#a3be8c",
		},
	},
})
