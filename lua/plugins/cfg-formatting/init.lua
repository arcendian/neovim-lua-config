local formatter = require("formatter")

local formatterConfig = {
    rust = {
        function()
            return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
        end
    },

    sh = {function() return {exe = "shfmt", args = {"-i", 2}, stdin = true} end},

    lua = {function() return {exe = "lua-format", stdin = true} end},

    cpp = {
        function()
            return {
                exe = "clang-format",
                args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                stdin = true,
                cwd = vim.fn.expand('%:p:h') -- Run clang-format in cwd of the file.
            }
        end
    },

    c = {
        function()
            return {
                exe = "clang-format",
                args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                stdin = true,
                cwd = vim.fn.expand('%:p:h') -- Run clang-format in cwd of the file.
            }
        end
    },

    python = {function() return {exe = "black", args = {'-'}, stdin = true} end},

    tex = {function() return {exe = "latexindent", stdin = true} end}
}

local prettierConfig = function()
    return {
        exe = "prettier",
        args = {
            "--stdin-filepath",
            vim.fn.shellescape(vim.api.nvim_buf_get_name(0)), "--single-quote"
        },
        stdin = true
    }
end

local commonFT = {
    "css", "scss", "html", "java", "javascript", "typescript",
    "typescriptreact", "markdown", "markdown.mdx", "json", "yaml", "toml"
}

-- set prettier as formatter for common filetypes above
for _, ft in ipairs(commonFT) do formatterConfig[ft] = {prettierConfig} end

formatter.setup({logging = false, filetype = formatterConfig})

-- format on save
vim.api.nvim_exec([[
	augroup FormatAutogroup
	  autocmd!
	  autocmd BufWritePost *.js,*.rs,*.lua,*.c,*.cpp,*.md,*.tex,*.latex,*.h,*.hpp FormatWrite
	augroup END
]], true)
