local colors = require("onenord.colors").load()

require("onenord").setup({
  styles = {
    keywords = "italic",
    comments = "italic",
  },
  disable = {
    background = true,
  },
  custom_highlights = {
    TSType = { fg = colors.cyan },
  },
})
