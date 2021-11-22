vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_guifg = '#4c566a'

-- Default: 0.5
vim.g.limelight_default_coefficient = 0.7

-- Number of preceding/following paragraphs to include (default: 0)
vim.g.limelight_paragraph_span = 1

-- Beginning/end of paragraph
--   When there's no empty line between the paragraphs
--   and each paragraph starts with indentation
--vim.g.limelight_bop = '^\s'
--vim.g.limelight_eop = '\ze\n^\s'

-- Highlighting priority (default: 10)
--   Set it to -1 not to overrule hlsearch
vim.g.limelight_priority = -1

vim.cmd([[
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
]])
