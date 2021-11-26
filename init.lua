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
require('todo-comments').setup { }
require('conf-tree-sitter')
require('autopairs')
require('completion')
require('conf-lspconfig')
require('conf-telescope')
require('conf-gitgutter')
require('conf-emmet')
require('conf-indent-blankline')
require('md-preview')
require('which-key').setup { }
require('writing')
require('dashboard')
