local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.rust_analyzer.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.pyright.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.tsserver.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.cssls.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.html.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.bashls.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.texlab.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
}

lspconfig.arduino_language_server.setup({
    cmd = {
        "arduino-language-server", "-cli-config",
        "/home/mice/.arduino15/arduino-cli.yaml", "-cli",
        "/usr/bin/arduino-cli", "-clangd", "/usr/bin/clangd"
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities())
})

require('lsp_signature').setup {hint_prefix = '💡 '}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {
            prefix = '●' -- Could be '●', '▎', 'x'
        }
    })

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
