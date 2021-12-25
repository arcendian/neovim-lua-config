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
		"markdown",
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
})
