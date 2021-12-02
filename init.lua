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

local plugins = {
	"plugins.cfg-theme",
	"plugins.cfg-statusline",
	"plugins.cfg-terminal",
	"plugins.cfg-autopairs",
	"plugins.cfg-completion",
	"plugins.cfg-md-preview",
	"plugins.cfg-writing",
	"plugins.cfg-dashboard",
	"plugins.cfg-file-explorer",
	"plugins.cfg-devicons",
	"plugins.cfg-comment",
	"plugins.cfg-tree-sitter",
	"plugins.cfg-lspconfig",
	"plugins.cfg-telescope",
	"plugins.cfg-gitgutter",
	"plugins.cfg-emmet",
	"plugins.cfg-indent-blankline",
	"plugins.cfg-formatting",
	"plugins.cfg-vimwiki",
}

for _, plugin in ipairs(plugins) do
	require(plugin)
end
