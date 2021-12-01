local lspconfig = require("lspconfig")

-- ========================= Setup LSPs ==================================== --
lspconfig.clangd.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.rust_analyzer.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.pyright.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.tsserver.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.cssls.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.html.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.bashls.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.texlab.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.vimls.setup({
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.arduino_language_server.setup({
	cmd = {
		"arduino-language-server",
		"-cli-config",
		"/home/mice/.arduino15/arduino-cli.yaml",
	},
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("lspconfig").sumneko_lua.setup({
	cmd = { "lua-language-server" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua is used
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but
			-- unique identifier
			telemetry = { enable = false },
		},
	},
	capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

-- =================== LSP diagnostics customization ======================= --
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = {
		prefix = "●", -- Could be '●', '▎', 'x'
	},
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- ================= LSP signature plugin setup ============================ --
require("lsp_signature").setup({ hint_prefix = "💡 " })
