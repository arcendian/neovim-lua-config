-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them
vim.api.nvim_set_keymap('n', '<leader>nt', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true}) 
vim.api.nvim_set_keymap('n', '<leader>nr', '<cmd>NvimTreeRefresh<CR>', { noremap = true, silent = true}) 
vim.api.nvim_set_keymap('n', '<leader>nf', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true}) 

vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "◌"
    },
    folder = {
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    }
}

require'nvim-tree'.setup {
    auto_close = true,
}
