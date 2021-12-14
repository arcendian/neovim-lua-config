local M = {}

function M.autocmd(event, triggers, operations)
	local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
	vim.cmd(cmd)
end

function M.exec(augrp)
	local begin_augroup = "augroup FormatAutogroup\nautocmd!"
	local end_augroup = "augroup END"
	local augroup = string.format("%s\nautocmd %s\n%s", begin_augroup, augrp, end_augroup)
	vim.api.nvim_exec(augroup, true)
end

local on_newfile = "BufNew,BufRead"
local ft_nasm = "*.asm"
local ft_arm = "*.s,*.S"
local set_nasm = "set ft=nasm"
local set_arm = 'set ft=arm " arm=arm6/7'

-- assembly files
M.autocmd(on_newfile, ft_nasm, set_nasm)
M.autocmd(on_newfile, ft_arm, set_arm)

-- formatting
local on_save = "BufWritePost "
local format = " FormatWrite"
local filetypes = {
	"*.js",
	"*.rs",
	"*.lua",
	"*.c",
	"*.cpp",
	"*.md",
	"*.tex",
	"*.latex",
	"*.h",
	"*.hpp",
	"*.py",
	"*.toml",
	"*.yaml",
	"*.yml",
	"*.html",
	"*.css",
	"*.ino",
	"*.hs",
	"*.fnl",
	"*.go",
}
local function for_each(ftTable)
	local ft_string = table.concat(ftTable, ",")
	return ft_string
end

M.exec(on_save .. for_each(filetypes) .. format)

return M
