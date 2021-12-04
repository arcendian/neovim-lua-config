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

local cfg = "cfg"
local cfg_plugins = {
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
}

for _, plugin in ipairs(cfg_plugins) do
	require(cfg .. "." .. plugin)
end
