# NEOVIM

<!-- vim-markdown-toc GFM -->

* [How it looks](#how-it-looks)
* [File structure](#file-structure)
* [TODO:](#todo)

<!-- vim-markdown-toc -->

## How it looks

This is my work-in-progress neovim setup configured in/migrated to Lua. It looks like this (with some sample codes from the textbook):

![Neovim-config Screenshot](./assets/screenshots/neovim-screenshot-2021-11-28_17-25.png)

## File structure

This is the current structure of my neovim directory (eliding non-config files). The configuration for the plugins installed is in the `cfg` directory under `lua` with their respective `<plugin>/init.lua`. Most of the plugins are _plug and play_ and the configurations copied from their wikis.

```text
📂$HOME/.config/nvim
├── 📂after
│ └── 📂ftplugin
├── 🌑 init.lua
├── 📂lua
│ ├── 📂cfg
│ │ ├── 📂autopairs
│ │ ├── 📂comment
│ │ ├── 📂completion
│ │ ├── 📂custom
│ │ ├── 📂dashboard
│ │ ├── 📂devicons
│ │ ├── 📂filetree
│ │ ├── 📂formatting
│ │ ├── 📂gitsigns
│ │ ├── 📂hex-colors
│ │ ├── 📂indent-blankline
│ │ ├── 📂lspconfig
│ │ ├── 📂md-preview
│ │ ├── 📂statusline
│ │ ├── 📂telescope
│ │ ├── 📂terminal
│ │ ├── 📂theme
│ │ ├── 📂tree-sitter
│ │ ├── 📂vimwiki
│ │ └── 📂writing
│ ├── 📂plugins
│ ├── 📂remaps
│ └── 📂settings
```

## TODO:

- [ ] Explore more vim/neovim builtin stuff.
- [ ] Explore telescope builtin functions.
- [ ] Explore tree-sitter capabilities.
- [ ] Explore packer.nvim features.
- [ ] Add more custom functions in `cfg/custom`
- [ ] Add dictionary for my own made up words. LOL!
