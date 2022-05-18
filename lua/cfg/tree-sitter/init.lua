require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,

		colors = {
			"#BF616A",
			"#A3BE8C",
			"#88C0D0",
			"#EBCB8B",
			"#81A1C1",
			"#B988B0",
			"#E5E9F0",
		},
	},
	context_commentstring = {
		enable = true,
	},
})
