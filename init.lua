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

local prefix = "plugins."
local cfg_plugins = {
	"cfg-theme",
	"cfg-statusline",
	"cfg-terminal",
	"cfg-autopairs",
	"cfg-completion",
	"cfg-md-preview",
	"cfg-writing",
	"cfg-dashboard",
	"cfg-file-explorer",
	"cfg-devicons",
	"cfg-comment",
	"cfg-tree-sitter",
	"cfg-lspconfig",
	"cfg-telescope",
	"cfg-gitgutter",
	"cfg-emmet",
	"cfg-indent-blankline",
	"cfg-formatting",
	"cfg-vimwiki",
}

for _, plugin in ipairs(cfg_plugins) do
	require(prefix .. plugin)
end
