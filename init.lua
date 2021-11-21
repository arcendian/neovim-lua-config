--
--  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄ ▄▄▄▄▄▄▄        ▄      ▄    ▄   ▄▄
--    █    █▀▄  █   █      █           █      █    █   ██
--    █    █ █▄ █   █      █           █      █    █  █  █
--    █    █  █ █   █      █           █      █    █  █▄▄█
--  ▄▄█▄▄  █   ██ ▄▄█▄▄    █      █    █▄▄▄▄▄ ▀▄▄▄▄▀ █    █
--
--  Michael Espeña (https://github.com/Arcendian/nvim)

require('plugins')
require('theme')
require('statusline')
require('settings')
require('remaps')
require('floaterm')
require'nvim-tree'.setup { }
require'nvim-web-devicons'.setup { default = true; }
require("todo-comments").setup { }
require('tree-sitter-config')
require('autopairs')
require('lsp-configuration')
require('md-preview')
require("which-key").setup { }
