local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
	return
end

local formatterConfig = {
	rust = {
		function()
			return { exe = "rustfmt", args = { "--emit=stdout" }, stdin = true }
		end,
	},

	sh = {
		function()
			return { exe = "shfmt", args = { "-i", 2 }, stdin = true }
		end,
	},

	lua = {
		function()
			return { exe = "stylua", args = { "-" }, stdin = true }
		end,
	},

	cpp = {
		function()
			return {
				exe = "clang-format",
				args = {
					"--assume-filename",
					vim.api.nvim_buf_get_name(0),
				},
				stdin = true,
				cwd = vim.fn.expand("%:p:h"),
			}
		end,
	},

	c = {
		function()
			return {
				exe = "clang-format",
				args = {
					"--assume-filename",
					vim.api.nvim_buf_get_name(0),
				},
				stdin = true,
				cwd = vim.fn.expand("%:p:h"),
			}
		end,
	},

	arduino = {
		function()
			return {
				exe = "clang-format",
				args = {
					"--assume-filename",
					vim.api.nvim_buf_get_name(0),
				},
				stdin = true,
				cwd = vim.fn.expand("%:p:h"),
			}
		end,
	},

	python = {
		function()
			return { exe = "black", args = { "-" }, stdin = true }
		end,
	},

	tex = {
		function()
			return { exe = "latexindent", stdin = true }
		end,
	},

	haskell = {
		function()
			return { exe = "ormolu", stdin = true }
		end,
	},

	toml = {
		function()
			return { exe = "taplo", args = { "fmt -" }, stdin = true }
		end,
	},

	fennel = {
		function()
			return {
				exe = "fnlfmt",
				args = { vim.api.nvim_buf_get_name(0) },
				stdin = true,
			}
		end,
	},

	go = {
		function()
			return {
				exe = "gofmt",
				args = { vim.api.nvim_buf_get_name(0) },
				stdin = true,
			}
		end,
	},

	java = {
		function()
			return {
				exe = "clang-format",
				args = {
					"--assume-filename",
					vim.api.nvim_buf_get_name(0),
				},
				stdin = true,
				cwd = vim.fn.expand("%:p:h"),
			}
		end,
	},

	zig = {
		function()
			return {
				exe = "zig fmt",
				args = { "--stdin" },
				stdin = true,
			}
		end,
	},
}

local prettierConfig = function()
	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
			"--single-quote",
		},
		stdin = true,
	}
end

local commonFT = {
	"css",
	"scss",
	"html",
	"javascript",
	"typescript",
	"typescriptreact",
	"markdown",
	"markdown.mdx",
	"vimwiki",
	"json",
	"yaml",
}

-- set prettier as formatter for common filetypes above
for _, ft in ipairs(commonFT) do
	formatterConfig[ft] = { prettierConfig }
end

formatter.setup({ logging = false, filetype = formatterConfig })
