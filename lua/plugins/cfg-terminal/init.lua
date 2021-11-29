require('toggleterm').setup {
    open_mapping = [[<c-\>]],
    direction = 'float',
    shade_terminals = false,
    float_opts = {
        border = 'single',
        -- width = <value>,
        -- height = <value>,
        winblend = 3,
        highlights = {border = "Normal", background = "Normal"}
    }
}
