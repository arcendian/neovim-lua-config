vim.g.indent_blankline_max_indent_increase = 1

vim.g.indentLine_fileTypeExclude = {
	"dashboard",
	"packer",
	"help",
}

vim.g.indentLine_bufTypeExclude = {
	"terminal",
}
vim.g.indent_blankline_bufname_exclude = {
	"%.md",
}

require("indent_blankline").setup({})
