vim.cmd([[
    nnoremap <F5> :UndotreeToggle<CR>

    if has("persistent_undo")
      let target_path = expand('~/.local/share/undodir/nvim')

      " create the directory and any parent directories
      " if the location does not exist.
      if !isdirectory(target_path)
          call mkdir(target_path, "p", 0700)
      endif

      let &undodir=target_path
      set undofile
    endif
]])
