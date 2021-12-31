vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_footer = {
	"I just keep googling stuff and it keeps working - Jerry Smith",
}

vim.g.dashboard_custom_section = {
	a = {
		description = { "  Explore files        SPC f e" },
		command = "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
	},
	b = {
		description = { "  Find File            SPC f f" },
		command = "<cmd>Telescope find_files<CR>",
	},
	c = {
		description = { "  Search Text          SPC f g" },
		command = "<cmd>Telescope live_grep<CR>",
	},
	d = {
		description = { "  Recent Files         SPC f o" },
		command = "<cmd>Telescope oldfiles<CR>",
	},
	e = {
		description = { "  Edit Config          SPC s n" },
		command = '<cmd>lua require("cfg.custom.telescope").search_nvimrc()<CR>',
	},
	f = {
		description = { "  Edit Dotfiles        SPC s d" },
		command = '<cmd>lua require("cfg.custom.telescope").search_dotfiles()<CR>',
	},
	g = {
		description = { "  Search help          SPC f h" },
		command = "<cmd>Telescope help_tags<CR>",
	},
	h = { description = { "" }, command = "" },
}

vim.g.dashboard_custom_header = {
	[[         ___           ]],
	[[     . -^   `--,       ]],
	[[    /# =========`-_    ]],
	[[   /# (--====___====\  ]],
	[[  /#   .- --.  . --.|  ]],
	[[ /##   |  * ) (   * ), ]],
	[[ |##   \    /\ \   / | ]],
	[[ |###   ---   \ ---  | ]],
	[[ |####      ___)    #| ]],
	[[ |######           ##| ]],
	[[  \##### ---------- /  ]],
	[[   \####           (   ]],
	[[    `\###          |   ]],
	[[      \###         |   ]],
	[[       \##        |    ]],
	[[        \###.    .)    ]],
	[[         `======/      ]],
	[[                       ]],
}
