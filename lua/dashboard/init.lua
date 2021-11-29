vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_footer = {
    'I just keep googling stuff and it keeps working - Jerry Smith'
}

vim.g.dashboard_custom_section = {
    a = {description = {''}, command = ''},
    b = {description = {''}, command = ''},
    c = {
        description = {'  Find File            SPC f f'},
        command = ':Telescope find_files<CR>'
    },
    d = {
        description = {'  Search Text          SPC f g'},
        command = ':Telescope live_grep<CR>'
    },
    e = {
        description = {'  Recent Files         SPC f o'},
        command = ':Telescope oldfiles<CR>'
    },
    f = {
        description = {'  Edit Config          SPC r c'},
        command = '<cmd>lua require("arcendian.mod-telescope").search_dotfiles()<CR>'
    },
    g = {description = {''}, command = ''},
    h = {description = {''}, command = ''}
}

vim.api.nvim_set_keymap('n', '<leader>rc',
                        '<cmd>lua require("arcendian.mod-telescope").search_dotfiles()<CR>',
                        {noremap = true, silent = true})

vim.g.dashboard_custom_header = {
    [[         ___           ]], [[     . -^   `--,       ]],
    [[    /# =========`-_    ]], [[   /# (--====___====\  ]],
    [[  /#   .- --.  . --.|  ]], [[ /##   |  * ) (   * ), ]],
    [[ |##   \    /\ \   / | ]], [[ |###   ---   \ ---  | ]],
    [[ |####      ___)    #| ]], [[ |######           ##| ]],
    [[  \##### ---------- /  ]], [[   \####           (   ]],
    [[    `\###          |   ]], [[      \###         |   ]],
    [[       \##        |    ]], [[        \###.    .)    ]],
    [[         `======/      ]], [[                       ]]
}