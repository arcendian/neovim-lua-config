local Type = { GLOBAL_OPTION = "o", WINDOW_OPTION = "wo", BUFFER_OPTION = "bo" }

local add_options = function(option_type, options)
	if type(options) ~= "table" then
		error('options should be of type "table"')
		return
	end
	local vim_option = vim[option_type]
	for key, value in pairs(options) do
		vim_option[key] = value
	end
end

local Settings = {}

Settings.g = function(options)
	add_options(Type.GLOBAL_OPTION, options)
end

Settings.w = function(options)
	add_options(Type.WINDOW_OPTION, options)
end

Settings.b = function(options)
	add_options(Type.BUFFER_OPTION, options)
end

Settings.g({
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = false,
	updatetime = 100,
	autoindent = true,
	smartindent = true,
	wrap = false,
	incsearch = true,
	exrc = true,
	scrolloff = 999,
	sidescrolloff = 999,
	hidden = true,
	cursorline = true,
	colorcolumn = "80",
	completeopt = "menu,menuone,noselect,noinsert",
	swapfile = false,
	backup = false,
	undofile = true,
	termguicolors = true,
	showmode = false,
	timeoutlen = 500,
	ignorecase = true,
	smartcase = true,
	list = true,
	mouse = "a",
	clipboard = "unnamedplus",
	redrawtime = 500,
	virtualedit = "onemore",
	diffopt = "internal,filler,closeoff,algorithm:patience,iwhiteall",
	splitbelow = true,
	linebreak = true,
})

Settings.b({
	swapfile = false,
	shiftwidth = 4,
})

Settings.w({
	number = true,
	relativenumber = true,
	signcolumn = "yes",
	linebreak = true,
})

vim.g.wildignore = {
	"*.git/*",
	"*.tags",
	"tags",
	"*.o",
	"*.class",
	"*.ccls-cache",
}
vim.g.mapleader = " "

return Settings
