require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,

    colors = {
      "#bf616a",
      "#88c0d0",
      "#b988b0",
      "#ebcb8b",
      "#a3be8c",
      "#8fbcbb",
      "#F7F8FA",
    },
  },

  context_commentstring = {
    enable = true,
  },

  autotag = {
    enable = true,
  },

  endwise = {
    enable = true,
  },
})
