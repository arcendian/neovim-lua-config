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
require'nvim-web-devicons'.setup { default = true; }
require('file-explorer')
require("todo-comments").setup { }
require('tree-sitter-config')
require('autopairs')
require('completion')
require('lsp-configuration')
require('md-preview')
require("which-key").setup { }
require "lsp_signature".setup { } 
require('writing')
