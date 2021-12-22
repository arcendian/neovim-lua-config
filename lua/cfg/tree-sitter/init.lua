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
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
})

vim.cmd([[
	hi rainbowcol1 guifg=#e06c75
	hi rainbowcol2 guifg=#d19a66
	hi rainbowcol3 guifg=#ebcb8b
	hi rainbowcol4 guifg=#b988d0
	hi rainbowcol5 guifg=#a3b38c
	hi rainbowcol6 guifg=#88c0d0
]])
