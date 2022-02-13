-- ======================= ZEN MODE ======================================== --
local zen_loaded, zen_mode = pcall(require, "zen-mode")
if not zen_loaded then
	return
end

local twilight_loaded, twilight = pcall(require, "twilight")
if not twilight_loaded then
	return
end

twilight.setup({
	{
		dimming = {
			alpha = 0.25,
			-- color = { "Normal", "#435c5e" },
			inactive = true,
		},
		context = 10,
		treesitter = true,
		expand = {
			"function",
			"method",
			"table",
			"if_statement",
		},
		exclude = {}, -- exclude these filetypes
	},
})

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
