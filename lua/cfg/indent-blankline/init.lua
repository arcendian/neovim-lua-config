local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.g.indent_blankline_max_indent_increase = 1
vim.g.indent_blankline_filetype_exclude = { "help", "dashboard", "packer" }
vim.g.indent_blankline_buftype_exclude = { "terminal" }
vim.g.indent_blankline_bufname_exclude = { "*.md" }

vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("trail:·")
vim.opt.listchars:append("precedes:←")
vim.opt.listchars:append("extends:→")
vim.opt.listchars:append("nbsp:·")
-- vim.opt.listchars:append("tab:▸ ")

indent_blankline.setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})
