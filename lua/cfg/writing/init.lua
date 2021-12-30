-- ======================= ZEN MODE ======================================== --
local status_ok, zen_mode = pcall(require, "zen-mode")
if not status_ok then
	return
end

zen_mode.setup({
	window = {
		options = {
			signcolumn = "no",
			number = false,
			relativenumber = false,
			cursorline = false,
			cursorcolumn = false,
			foldcolumn = "0",
			list = false,
		},
	},
	plugins = { options = { enabled = true, ruler = false, showcmd = false } },
	on_open = function(win)
		vim.opt_local.colorcolumn = "0"
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en"
	end,
	on_close = function()
		vim.opt_local.colorcolumn = "80"
		vim.opt_local.wrap = false
		vim.opt_local.spell = false
	end,
})
