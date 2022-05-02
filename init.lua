--
--  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄ ▄▄▄▄▄▄▄        ▄      ▄    ▄   ▄▄
--    █    █▀▄  █   █      █           █      █    █   ██
--    █    █ █▄ █   █      █           █      █    █  █  █
--    █    █  █ █   █      █           █      █    █  █▄▄█
--  ▄▄█▄▄  █   ██ ▄▄█▄▄    █      █    █▄▄▄▄▄ ▀▄▄▄▄▀ █    █
--
--  Michael Espeña (https://gitlab.com/arcendian/neovim-lua-config)
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
	"neogit",
	"diffview",
	"notify",
	"snippets",
}

for _, config in ipairs(configs) do
	require(cgf_dir .. "." .. config)
end
