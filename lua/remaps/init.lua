-- ====== WHICH-KEY ====== --
require('which-key').setup {}

-- set Space key as Leader key
vim.api
    .nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- toggle highlighting when searching in buffer
vim.api.nvim_set_keymap('n', '<Leader>nh', ':set hlsearch!<CR>',
                        {noremap = true, silent = true})

-- Remap resizing splits to simple keybindings 
-- to avoid using command mode
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +3<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -3<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +3<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -3<CR>',
                        {noremap = true, silent = true})

-- greatest remap ever according to the Primeagen
-- send the visually highlighted text to the
-- void register which is just like /dev/null
vim.api
    .nvim_set_keymap('v', '<leader>p', '"_d', {noremap = true, silent = true})

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
