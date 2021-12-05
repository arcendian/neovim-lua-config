--
--  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄ ▄▄▄▄▄▄▄        ▄      ▄    ▄   ▄▄
--    █    █▀▄  █   █      █           █      █    █   ██
--    █    █ █▄ █   █      █           █      █    █  █  █
--    █    █  █ █   █      █           █      █    █  █▄▄█
--  ▄▄█▄▄  █   ██ ▄▄█▄▄    █      █    █▄▄▄▄▄ ▀▄▄▄▄▀ █    █
--
--  Michael Espeña (https://github.com/Arcendian/nvim)
--
require("plugins")
require("settings")
require("remaps")

local cgf_dir = "cfg"
local configs = {
	"theme",
	"statusline",
	"terminal",
	"autopairs",
	"completion",
	"md-preview",
	"writing",
	"dashboard",
	"filetree",
	"devicons",
	"comment",
	"tree-sitter",
	"lspconfig",
	"telescope",
	"gitsigns",
	"indent-blankline",
	"formatting",
	"vimwiki",
	"hex-colors",
	"autocmds",
}

for _, config in ipairs(configs) do
	require(cgf_dir .. "." .. config)
end
