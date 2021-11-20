--
--  ▄▄▄▄▄  ▄▄   ▄ ▄▄▄▄▄ ▄▄▄▄▄▄▄        ▄      ▄    ▄   ▄▄
--    █    █▀▄  █   █      █           █      █    █   ██
--    █    █ █▄ █   █      █           █      █    █  █  █
--    █    █  █ █   █      █           █      █    █  █▄▄█
--  ▄▄█▄▄  █   ██ ▄▄█▄▄    █      █    █▄▄▄▄▄ ▀▄▄▄▄▀ █    █
--
--  Michael Espeña (https://github.com/Arcendian/nvim)

-- Plugins installed via packer.nvim
require('plugins')

-- colorscheme
-- require('colo')
require('nightfox').setup({
  fox = "nordfox",
  styles = {
    comments = "italic",
    keywords = "bold",
    functions = "italic,bold"
  }
})

require('nightfox').load()

-- statusline
-- require'lualine'.setup {
-- 	options = { 
-- 		theme = 'nightfox', 
--     },
-- }
require('lualine-bubbles')

-- general settings
require('settings')

-- remaps and keybindings
require('remaps')

-- builtin terminal
require('floaterm')

-- icons
require'nvim-web-devicons'.setup {
 default = true;
}

-- setup tree sitter
require'nvim-treesitter.configs'.setup{
	highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    },
    map_cr = true
})

local ts_conds = require('nvim-autopairs.ts-conds')


---- press % => %% is only inside comment or string
--npairs.add_rules({
--  Rule("%", "%", "lua")
--    :with_pair(ts_conds.is_ts_node({'string','comment'})),
--  Rule("$", "$", "lua")
--    :with_pair(ts_conds.is_not_ts_node({'function'}))
--})


-- setup nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
  }
})

-- setup lspconfig 
require('lspconfig').clangd.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').rust_analyzer.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').pyright.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').tsserver.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').cssls.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').html.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require('lspconfig').bashls.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
-- require('lspconfig').hls.setup {
--   capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }

require('md-preview')
