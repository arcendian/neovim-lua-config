vim.o.scrollback = 100000

vim.cmd([[
	" window settings
	" floating terminal settings
	let g:floaterm_wintype       = 'float'     " floating terminal
	let g:floaterm_width         = 0.60
	"let g:floaterm_position      = 'bottom'    " if wintype:floating
	
	" split buffer terminal settings
	"let g:floaterm_wintype       = 'split'      " split terminal
	"let g:floaterm_height        = 0.30         " floaterm height
	"let g:floaterm_position      = 'botright'   " if wintype:split/vsplit
	
	" keymaps
	let g:floaterm_keymap_new    = '<F7>'
	let g:floaterm_keymap_prev   = '<F8>'
	let g:floaterm_keymap_next   = '<F9>'
	let g:floaterm_keymap_toggle = '<F12>'
	
	" Set floaterm window background to gray once the cursor moves out from it
	" hi FloatermNC guibg=gray
	
	" disable line numbers in terminal buffer (split/vsplitmode)
	au TermOpen * setlocal listchars= nonumber norelativenumber
]])
