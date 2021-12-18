local formatter = require("formatter")

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
					"-style='{BasedOnStyle: mozilla, IndentWidth: 2, SpacesInAngles: true, SpacesInParentheses: true, SpaceInBrackets: true, SpaceInSquareBrackets: true}' --assume-filename",
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
					"-style='{BasedOnStyle: mozilla, IndentWidth: 2, SpacesInAngles: true, SpacesInParentheses: true, SpaceInBrackets: true, SpaceInSquareBrackets: true}' --assume-filename",
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
				args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
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
	"java",
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
