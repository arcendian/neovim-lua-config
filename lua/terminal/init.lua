require('toggleterm').setup {
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = {
        border = 'single', -- | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        -- width = <value>,
        -- height = <value>,
        winblend = 3,
        highlights = {border = "Normal", background = "Normal"}
    }
}
-- The border key is *almost* the same as 'nvim_open_win'
-- see :h nvim_open_win for details on borders however
-- the 'curved' border is a custom border type
-- not natively supported but implemented in this plugin.
