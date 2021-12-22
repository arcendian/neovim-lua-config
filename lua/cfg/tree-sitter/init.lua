local status_ok, treesitter_cfg = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

treesitter_cfg.setup({
	ensure_installed = {
		"bash",
		"c",
		"clojure",
		"cmake",
		"comment",
		"commonlisp",
		"cpp",
		"css",
		"fennel",
		"fortran",
		"go",
		"haskell",
		"html",
		"http",
		"java",
		"javascript",
		"jsdoc",
		"julia",
		"latex",
		"llvm",
		"lua",
		"nix",
		"org",
		"python",
		"ruby",
		"rust",
		"toml",
		"vim",
		"yaml",
		"zig",
	},
	highlight = { enable = true, additional_vim_regex_highlighting = false },
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		colors = {
			"#eceff4",
			"#d19a66",
			"#ebcb8b",
			"#b988d0",
			"#a3b38c",
			"#88c0d0",
		},
		-- termcolors = {} -- table of colour name strings
	},
})
