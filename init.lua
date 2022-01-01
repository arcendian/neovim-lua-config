--
--  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄ ▄▄▄▄▄▄▄        ▄      ▄    ▄   ▄▄
--    █    █▀▄  █   █      █           █      █    █   ██
--    █    █ █▄ █   █      █           █      █    █  █  █
--    █    █  █ █   █      █           █      █    █  █▄▄█
--  ▄▄█▄▄  █   ██ ▄▄█▄▄    █      █    █▄▄▄▄▄ ▀▄▄▄▄▀ █    █
--
--  Michael Espeña (https://gitlab.com/paperbackwriter/neovim-lua-config)
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
	"headlines",
	"neogit",
	"diffview",
	"notify",
	"barbar",
}

for _, config in ipairs(configs) do
	require(cgf_dir .. "." .. config)
end
