vim.opt.list = true
-- NOTE: it doesn't show in the statusline what the buffer is called when
-- using builtin terminal so I just put an empty string which seems to do
-- the trick of disabling indent_blankline in terminal;
-- TODO: documentations show what the terminal buffer is called but I don't
-- know how to put the name properly here for the moment
vim.g.indentLine_fileTypeExclude = {
	"dashboard",
	"packer",
	"help",
	"ToggleTerm",
	"",
}
require("indent_blankline").setup({})
