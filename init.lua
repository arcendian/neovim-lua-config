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
	"formatting",
	"vimwiki",
	"hex-colors",
	"autocmds",
	"which-key",
}

for _, config in ipairs(configs) do
	require(cgf_dir .. "." .. config)
end
