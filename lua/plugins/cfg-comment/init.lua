require('todo-comments').setup {}

require('nvim_comment').setup({
    comment_empty = false,
    create_mappings = true,
    -- line_mapping = "<leader>cl",
    -- operator_mapping = "<leader>c",
    marker_padding = true
})