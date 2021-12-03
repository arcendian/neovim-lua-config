-- ====== WHICH-KEY ====== --
require("which-key").setup({})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set Space key as Leader key
map("n", "<Space>", "<NOP>", opts)
vim.g.mapleader = " "

-- toggle highlighting when searching in buffer
map("n", "<Leader>nh", "<cmd>set hlsearch!<CR>", opts)

-- Remap resizing splits to simple keybindings to avoid using command mode
map("n", "<C-Right>", "<cmd>vertical resize +3<CR>", opts)
map("n", "<C-Left>", "<cmd>vertical resize -3<CR>", opts)
map("n", "<C-Up>", "<cmd>resize +3<CR>", opts)
map("n", "<C-Down>", "<cmd>resize -3<CR>", opts)

-- greatest remap ever according to the Primeagen
-- send the visually highlighted text to the
-- void register which is just like /dev/null
map("v", "<leader>p", '"_d', opts)

vim.cmd([[
	" NOTE: You can use other key to expand snippet.
    " Expand
    imap <expr> <C-s>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-s>'
    smap <expr> <C-s>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-s>'
    
    " Expand or jump
    imap <expr> <C-m>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-m>'
    smap <expr> <C-m>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-m>'
    
    " Jump forward or backward
    imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
    smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
    imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
    smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
    
    " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
    " See https://github.com/hrsh7th/vim-vsnip/pull/50
    " nmap        s   <Plug>(vsnip-select-text)
    " xmap        s   <Plug>(vsnip-select-text)
    " nmap        S   <Plug>(vsnip-cut-text)
    " xmap        S   <Plug>(vsnip-cut-text)
    
    " If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
    let g:vsnip_filetypes = {}
    let g:vsnip_filetypes.javascriptreact = ['javascript']
    let g:vsnip_filetypes.typescriptreact = ['typescript']
]])

-- =-========================== CFG-WRITING ================================ --
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
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)

-- zoxide keybindings
map("n", "<leader>cd", "<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>", opts)

-- ========================== CFG-DASHBOARD ================================ --
map("n", "<leader>sn", '<cmd>lua require("plugins.cfg-custom.telescope").search_nvimrc()<CR>', opts)
map("n", "<leader>sd", '<cmd>lua require("plugins.cfg-custom.telescope").search_dotfiles()<CR>', opts)

-- ======================== CFG-MD-PREVIEW ================================= --
vim.api.nvim_set_keymap("n", "<leader>md", "<cmd>MarkdownPreview<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- ======================== CFG-FORMATTING ================================= --
-- remaps (in case format on save is disabled)
vim.api.nvim_set_keymap("n", "<leader>bf", "<cmd>Format<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>bw", "<cmd>FormatWrite<CR>", opts)

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
