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
	},
	context_commentstring = {
		enable = true,
	},
})
