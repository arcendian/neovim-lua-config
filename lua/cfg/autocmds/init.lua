local M = {}

function M.autocmd(event, filetype, operations, augroup)
	vim.api.nvim_create_autocmd(event, { command = operations, pattern = filetype, group = augroup })
end

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
	"*.zig",
	"*.java",
	"*.ts",
	"*.sh",
}

local format_on_save_group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })
local assembly_files_group = vim.api.nvim_create_augroup("AssemblyFiles", { clear = true })

for _, filetype in ipairs(filetypes) do
	M.autocmd({ "BufWritePost" }, filetype, "FormatWrite", format_on_save_group)
end

M.autocmd({ "BufNew", "BufRead" }, "*.asm", "set ft=nasm", assembly_files_group)
M.autocmd({ "BufNew", "BufRead" }, "*.s, *.S", 'set ft=arm " arm=arm6/7', assembly_files_group)

return M
