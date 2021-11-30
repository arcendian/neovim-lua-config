-- Sane defaults
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.updatetime = 100
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.exrc = true
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 999
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.opt.completeopt = "menuone,noselect"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 500
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
vim.opt.mouse = "a"

vim.g.wildignore = {
	"*.git/*",
	"*.tags",
	"tags",
	"*.o",
	"*.class",
	"*.ccls-cache",
}

-- highlight yanked text
vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })

-- ignore files
vim.opt.path:append({ I = "**/.git/*" })

-- remove the annoying tilde characters in empty lines (EOB)
vim.cmd([[
	let &fcs='eob: '
]])

-- assembly programming settings (LOL. I don't know what I'm doing.)
vim.cmd([[
  autocmd BufNew,BufRead *.asm set ft=nasm
]])

-- TAG JUMPING
-- With the command above we now can:
-- * Use ^] to jump to tag under cursor
-- * Use g^] for ambiguous tags
-- * Use ^t to jump back up the tag stack
--
-- Things to consider:
-- * This doesn't help if you want a visual list of tags
-- vim.cmd([[
--   command! MakeTags !ctags -R .
-- ]])

-- FINDING FILES
-- Search down into subfolders
-- Provides tab-completion for all file-related tasks
-- vim.opt.path:append{ I = "**"}

-- Display all matching files when we tab-complete
vim.opt.wildmenu = true

-- The following configuration removes the pipes that
-- acts as separators on splits
-- NOTE: There is a SPACE typed in after the backslash
-- otherwise the pipes will just be replaced with
-- backlashes instead
-- vim.opt.fillchars:append { I = "vert:\ " }

-- With the last two configs set above we now can:
-- * hit TAB to :find by partial match
-- * use * to make it fuzzy
--
-- Things to consider:
-- * :b lets you autocomplete any open buffer

-- Tweaks for browsing using netrw
-- * :edit a folder to open a file browser
-- * <CR>/v/t to open in an h-split/v-split/tab
-- * check |netrw-browse-maps| for more mappings
-- vim.g.netrw_banner = 0				-- disable banner
-- vim.g.netrw_browse_split = 4		-- open in prior window
-- vim.g.netrw_altv = 1				-- open spilts to the right
-- vim.g.netrw_liststyle = 3			-- tree view
-- vim.g.netrw_list_hide = 'netrw_gitignore#Hide()'
-- vim.g.netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

-- source settings I still don't know how to translate to lua
-- TODO: Translate to Lua
vim.cmd([[
	set undodir=~/.local/share/undodir/nvim
	
	"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

	" ---------- FIXME FIXME FIXME ---------- "
	" The following configuration removes the pipes that
	" acts as separators on splits
	" WARNING: There is a SPACE typed in after the backslash
	" otherwise the pipes will just be replaced with
	" backlashes instead
	" set fillchars+=vert:\ 

	au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
]])
