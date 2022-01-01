local M = {}

function M.map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- toggle highlighting when searching in buffer
M.map("n", "<leader>nh", "<cmd>set hlsearch!<cr>")

-- buffer navigation
-- M.map("n", "<C-h>", "<C-w>h")
-- M.map("n", "<C-j>", "<C-w>j")
-- M.map("n", "<C-k>", "<C-w>k")
-- M.map("n", "<C-l>", "<C-w>l")

-- remap resizing splits to simple keybindings to avoid using command mode
M.map("n", "<c-right>", "<cmd>vertical resize +3<cr>")
M.map("n", "<c-left>", "<cmd>vertical resize -3<cr>")
M.map("n", "<c-up>", "<cmd>resize +3<cr>")
M.map("n", "<c-down>", "<cmd>resize -3<cr>")

-- greatest remap ever according to the primeagen
-- send the visually highlighted text to the
-- void register which is just like /dev/null
M.map("v", "<leader>p", '"_d')

-- ============================ CFG-WRITING ================================ --
-- Toggle spell checking on and off
M.map("n", "<Leader>wc", "<cmd>set spell!<CR>")

-- Toggle zen-mode on and off
M.map("n", "<Leader>wz", "<cmd>ZenMode<CR>")
M.map("n", "<Leader>wt", "<cmd>Twilight<CR>")
M.map("n", "<Leader>we", "<cmd>TwilightEnable<CR>")
M.map("n", "<Leader>wd", "<cmd>TwilightDisable<CR>")

-- ======================== CFG-FILE-EXPLORER ============================== --
-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and
-- NvimTreeResize are also available if you need them
M.map("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>")
M.map("n", "<leader>nr", "<cmd>NvimTreeRefresh<CR>")
M.map("n", "<leader>nf", "<cmd>NvimTreeFindFile<CR>")

-- ========================= CFG-TELESCOPE ================================= --
-- keybindings for builtin functions
-- assorted pickers
M.map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
M.map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
M.map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
M.map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
M.map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>")
M.map("n", "<leader>fs", "<cmd>Telescope grep_string<CR>")
M.map("n", "<leader>fc", "<cmd>Telescope command<CR>")
M.map("n", "<leader>fm", "<cmd>Telescope man_pages<CR>")
M.map("n", "<leader>fv", "<cmd>Telescope vim_options<CR>")
M.map("n", "<leader>fp", "<cmd>Telescope planets<CR>")
M.map("n", "<leader>ft", "<cmd>Telescope treesitter<CR>")
M.map("n", "<leader>fr", "<cmd>Telescope reloader<CR>")

-- git stuff
M.map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>")
M.map("n", "<leader>gb", "<cmd>Telescope git_bcommits<CR>")
M.map("n", "<leader>gl", "<cmd>Telescope git_branches<CR>")
M.map("n", "<leader>gs", "<cmd>Telescope git_status<CR>")
M.map("n", "<leader>gt", "<cmd>Telescope git_stash<CR>")

-- vim stuff
M.map("n", "<leader>tc", "<cmd>Telescope command_history<CR>")
M.map("n", "<leader>ts", "<cmd>Telescope search_history<CR>")
M.map("n", "<leader>tr", "<cmd>Telescope registers<CR>")
M.map("n", "<leader>tm", "<cmd>Telescope marks<CR>")
M.map("n", "<leader>tk", "<cmd>Telescope keymaps<CR>")
M.map("n", "<leader>tf", "<cmd>Telescope filetypes<CR>")
M.map("n", "<leader>tj", "<cmd>Telescope jumplist<CR>")
M.map("n", "<leader>tq", "<cmd>Telescope quickfix<CR>")
M.map("n", "<leader>tl", "<cmd>Telescope loclist<CR>")

-- extensions
M.map("n", "<leader>cd", "<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>")
M.map("n", "<leader>cg", "<cmd>lua require'telescope'.extensions.repo.list{}<CR>")
M.map("n", "<leader>fe", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>")
M.map("n", "<leader>cn", "<cmd>lua require('telescope').extensions.notify.notify()<CR>")

-- =========================== CFG-CUSTOM ================================== --
M.map("n", "<leader>sn", '<cmd>lua require("cfg.custom.telescope").search_nvimrc()<CR>')
M.map("n", "<leader>sd", '<cmd>lua require("cfg.custom.telescope").search_dotfiles()<CR>')

-- ======================== CFG-MD-PREVIEW ================================= --
M.map("n", "<leader>md", "<cmd>MarkdownPreview<CR>")
M.map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>")
M.map("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>")

-- ======================== CFG-FORMATTING ================================= --
-- remaps (in case format on save is disabled)
M.map("n", "<leader>bf", "<cmd>Format<CR>")
M.map("n", "<leader>bw", "<cmd>FormatWrite<CR>")

-- ======================== CFG-HEX-COLORS ================================= --
M.map("n", "<leader>xt", "<cmd>HexokinaseToggle<CR>")
M.map("n", "<leader>xn", "<cmd>HexokinaseTurnOn<CR>")
M.map("n", "<leader>xf", "<cmd>HexokinaseTurOff<CR>")

-- ========================== CFG-TERMINAL ================================= --
M.map("n", "<A-i>", '<cmd>lua require("FTerm").toggle()<CR>')
M.map("t", "<A-i>", '<C-\\><C-n><cmd>lua require("FTerm").toggle()<CR>')

-- ========================== CFG-BARBAR =================================== --
M.map("n", "<A-,>", ":BufferPrevious<CR>")
M.map("n", "<A-.>", ":BufferNext<CR>")
-- Re-order to previous/next
M.map("n", "<A-<>", ":BufferMovePrevious<CR>")
M.map("n", "<A->>", " :BufferMoveNext<CR>")
-- Goto buffer in position...
M.map("n", "<A-1>", ":BufferGoto 1<CR>")
M.map("n", "<A-2>", ":BufferGoto 2<CR>")
M.map("n", "<A-3>", ":BufferGoto 3<CR>")
M.map("n", "<A-4>", ":BufferGoto 4<CR>")
M.map("n", "<A-5>", ":BufferGoto 5<CR>")
M.map("n", "<A-6>", ":BufferGoto 6<CR>")
M.map("n", "<A-7>", ":BufferGoto 7<CR>")
M.map("n", "<A-8>", ":BufferGoto 8<CR>")
M.map("n", "<A-9>", ":BufferGoto 9<CR>")
M.map("n", "<A-0>", ":BufferLast<CR>")
-- Close buffer
M.map("n", "<A-c>", ":BufferClose<CR>")
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
M.map("n", "<C-p>", ":BufferPick<CR>")
-- Sort automatically by...
M.map("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>")
M.map("n", "<Space>bd", ":BufferOrderByDirectory<CR>")
M.map("n", "<Space>bl", ":BufferOrderByLanguage<CR>")

return M
