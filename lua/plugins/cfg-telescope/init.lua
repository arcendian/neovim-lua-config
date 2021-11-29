require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
}

require('telescope').load_extension('fzf')

-- keybindings for builtin functions
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>',
                        {noremap = true, silent = true})
