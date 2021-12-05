local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set space key as leader key
map("n", "<space>", "<nop>", opts)
vim.g.mapleader = " "

-- toggle highlighting when searching in buffer
map("n", "<leader>nh", "<cmd>set hlsearch!<cr>", opts)

-- remap resizing splits to simple keybindings to avoid using command mode
map("n", "<c-right>", "<cmd>vertical resize +3<cr>", opts)
map("n", "<c-left>", "<cmd>vertical resize -3<cr>", opts)
map("n", "<c-up>", "<cmd>resize +3<cr>", opts)
map("n", "<c-down>", "<cmd>resize -3<cr>", opts)

-- greatest remap ever according to the primeagen
-- send the visually highlighted text to the
-- void register which is just like /dev/null
map("v", "<leader>p", '"_d', opts)

-- ============================ CFG-WRITING ================================ --
-- Toggle spell checking on and off
map("n", "<Leader>wc", "<cmd>set spell!<CR>", opts)

-- Toggle zen-mode on and off
map("n", "<Leader>wz", "<cmd>ZenMode<CR>", opts)
map("n", "<Leader>wt", "<cmd>Twilight<CR>", opts)
map("n", "<Leader>we", "<cmd>TwilightEnable<CR>", opts)
map("n", "<Leader>wd", "<cmd>TwilightDisable<CR>", opts)

-- ======================== CFG-FILE-EXPLORER ============================== --
-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and
-- NvimTreeResize are also available if you need them
map("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>", opts)
map("n", "<leader>nr", "<cmd>NvimTreeRefresh<CR>", opts)
map("n", "<leader>nf", "<cmd>NvimTreeFindFile<CR>", opts)

-- ========================= CFG-TELESCOPE ================================= --
-- keybindings for builtin functions
-- assorted pickers
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)
map("n", "<leader>fs", "<cmd>Telescope grep_string<CR>", opts)
map("n", "<leader>fc", "<cmd>Telescope command<CR>", opts)
map("n", "<leader>fm", "<cmd>Telescope man_pages<CR>", opts)
map("n", "<leader>fv", "<cmd>Telescope vim_options<CR>", opts)

-- git stuff
map("n", "<leader>fic", "<cmd>Telescope git_commits<CR>", opts)
map("n", "<leader>fib", "<cmd>Telescope git_bcommits<CR>", opts)
map("n", "<leader>fil", "<cmd>Telescope git_branches<CR>", opts)
map("n", "<leader>fis", "<cmd>Telescope git_status<CR>", opts)
map("n", "<leader>fit", "<cmd>Telescope git_stash<CR>", opts)

-- vim stuff
map("n", "<leader>ftc", "<cmd>Telescope command_history<CR>", opts)
map("n", "<leader>fts", "<cmd>Telescope search_history<CR>", opts)
map("n", "<leader>fnr", "<cmd>Telescope registers<CR>", opts)
map("n", "<leader>fnm", "<cmd>Telescope marks<CR>", opts)
map("n", "<leader>fnk", "<cmd>Telescope keymaps<CR>", opts)
map("n", "<leader>fnf", "<cmd>Telescope filetypes<CR>", opts)

-- zoxide keybindings
map("n", "<leader>cd", "<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>", opts)

-- ========================== CFG-DASHBOARD ================================ --
map("n", "<leader>sn", '<cmd>lua require("cfg.custom.telescope").search_nvimrc()<CR>', opts)
map("n", "<leader>sd", '<cmd>lua require("cfg.custom.telescope").search_dotfiles()<CR>', opts)

-- ======================== CFG-MD-PREVIEW ================================= --
map("n", "<leader>md", "<cmd>MarkdownPreview<CR>", opts)
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", opts)
map("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- ======================== CFG-FORMATTING ================================= --
-- remaps (in case format on save is disabled)
map("n", "<leader>bf", "<cmd>Format<CR>", opts)
map("n", "<leader>bw", "<cmd>FormatWrite<CR>", opts)

-- ======================== CFG-HEX-COLORS ================================= --
map("n", "<leader>xt", "<cmd>HexokinaseToggle<CR>", opts)
map("n", "<leader>xn", "<cmd>HexokinaseTurnOn<CR>", opts)
map("n", "<leader>xf", "<cmd>HexokinaseTurOff<CR>", opts)

-- ====================== CFG-LSPCONFIG ==================================== --
-- NOTE: the following remaps are commented out and include only in this file
-- for documentation because they are defined in a local `on attach` function
-- in `cfg-lspconfig`. They are only mapped after the language server attaches to
-- the current buffer

-- buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
-- buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
-- buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
-- buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
-- buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
-- buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
-- buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
-- buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
-- buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
-- buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

-- ======================== CFG-COMMENT ==================================== --

-- == Basic mapping == --
-- These mappings are enabled by default. (config: mappings.basic)

-- Normal mode
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using linewise comment

-- Visual mode
-- `gco` - Insert comment to the next line and enters INSERT mode
-- `gcO` - Insert comment to the previous line and enters INSERT mode
-- `gcA` - Insert comment to end of the current line and enters INSERT mode

-- == Extra mappings == --
-- These mappings are enabled by default. (config: mappings.extra)

-- Normal mode
-- `gco` - Insert comment to the next line and enters INSERT mode
-- `gcO` - Insert comment to the previous line and enters INSERT mode
-- `gcA` - Insert comment to end of the current line and enters INSERT mode

-- == Extended mappings == --
-- These mappings are disabled by default. (config: mappings.extended)
--
-- Normal mode
-- `g>[count]{motion}` - (Op-pending) Comments the region using linewise comment
-- `g>c` - Comments the current line using linewise comment
-- `g>b` - Comments the current line using blockwise comment
-- `g<[count]{motion}` - (Op-pending) Uncomments the region using linewise comment
-- `g<c` - Uncomments the current line using linewise comment
-- `g<b`- Uncomments the current line using blockwise comment

-- Visual mode
-- `g>` - Comments the region using single line
-- `g<` - Unomments the region using single line

-- ====== WHICH-KEY ====== --
require("which-key").setup({})
