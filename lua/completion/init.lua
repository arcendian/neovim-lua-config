local cmp = require 'cmp'
local lspkind = require('lspkind')

cmp.setup({
    snippet = {expand = function(args) vim.fn["vsnip#anonymous"](args.body) end},
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-k>'] = cmp.mapping.confirm({select = true})
    },
    sources = {
        {name = 'nvim_lsp'}, {name = 'tree-sitter'}, {name = 'vsnip'},
        {name = 'buffer'}, {name = 'path'}, {name = 'cmdline'}
    },
    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            maxwidth = 50,
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                vsnip = "[Vsnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]"
            })
        })
    }
})
