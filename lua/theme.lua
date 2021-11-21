require('onenord').setup {
  borders = true, 
  italics = {
    comments = true,
    strings = false,
    keywords = true, 
    functions = true, 
    variables = false, 
  },
  disable = {
    background = false, 
    cursorline = false, 
    eob_lines = true, 
  },
  custom_highlights = {}, 
}

vim.cmd [[colorscheme onenord]]
