vim.g.gitgutter_map_keys = 0
-- vim.g.gitgutter_sign_added = ' '
-- vim.g.gitgutter_sign_modified = ' '
-- vim.g.gitgutter_sign_removed = ' '
-- vim.g.gitgutter_sign_removed_first_line = ''
-- vim.g.gitgutter_sign_removed_above_and_below = ' '
-- vim.g.gitgutter_sign_modified_removed = ''

vim.g.gitgutter_enabled = 1
vim.api.nvim_set_keymap('n', '<leader>he', ':GitGutterEnable<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hd', ':GitGutterDisable<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ht', ':GitGutterToggle<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hp', ':GitGutterPreviewHunk<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hs', ':GitGutterStageHunk<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hu', ':GitGutterUndoHunk<CR>',
                        {noremap = true, silent = true})
