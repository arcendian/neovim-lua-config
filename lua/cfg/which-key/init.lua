local which_key = require("which-key")

which_key.register({
	["<leader>"] = {
		f = {
			name = "file",
			f = { "<cmd>Telescope find_files<CR>", "Find file" },
			e = {
				"<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
				"File browser",
			},
			g = { "<cmd>Telescope live_grep<CR>", "Search text" },
			b = { "<cmd>Telescope buffers<CR>", "List buffers" },
			h = { "<cmd>Telescope help_tags<CR>", "Help tags" },
			o = { "<cmd>Telescope oldfiles<CR>", "Recent files" },
			s = { "<cmd>Telescope grep_string<CR>", "Find string" },
			c = { "<cmd>Telescope command<CR>", "List commands" },
			m = { "<cmd>Telescope man_pages<CR>", "List manpages" },
			v = { "<cmd>Telescope vim_options<CR>", "List vim options" },
			p = { "<cmd>Telescope planets<CR>", "Show planets" },
			t = { "<cmd>Telescope treesitter<CR>", "Treesitter queries" },
			r = { "<cmd>Telescope reloader<CR>", "Reload Lua module" },
		},
		g = {
			name = "git telescope extensions",
			c = { "<cmd>Telescope git_commits<CR>", "List commits in CWD" },
			b = { "<cmd>Telescope git_bcommits<CR>", "List commits in buffer" },
			l = { "<cmd>Telescope git_branches<CR>", "List git branches" },
			s = { "<cmd>Telescope git_status<CR>", "Telescope git status" },
			t = { "<cmd>Telescope git_stash<CR>", "List stash items" },
		},
		t = {
			name = "vim stuff in telescope",
			c = { "<cmd>Telescope command_history<CR>", "List recent commands" },
			s = { "<cmd>Telescope search_history<CR>", "Search history" },
			r = { "<cmd>Telescope registers<CR>", "List vim registers" },
			m = { "<cmd>Telescope marks<CR>", "List vim marks" },
			k = { "<cmd>Telescope keymaps<CR>", "List normal keymaps" },
			f = { "<cmd>Telescope filetypes<CR>", "List available filetypes" },
			j = { "<cmd>Telescope jumplist<CR>", "Show jumplist" },
			q = { "<cmd>Telescope quickfix<CR>", "Show quickfix list" },
			l = { "<cmd>Telescope loclist<CR>", "Show window's location list" },
		},
		c = {
			name = "change to?",
			d = {
				"<cmd>lua require'telescope'.extensions.zoxide.list()<CR>",
				"List most visited directories",
			},
			g = {
				"<cmd>lua require'telescope'.extensions.repo.list()<CR>",
				"List git repositories",
			},
			n = {
				"<cmd>lua require'telescope'.extensions.notify.notify()<CR>",
				"List recent notifications",
			},
		},
		m = {
			name = "markdown stuff",
			d = { "<cmd>MarkdownPreview<CR>", "View markdown in browser" },
			s = { "<cmd>MarkdownPreviewStop<CR>", "Stop makrdown preview" },
			t = { "<cmd>MarkdownPreviewToggle<CR>", "Toggle makrdown preview" },
		},
		n = {
			name = "nvim-tree",
			t = { "<cmd>NvimTreeToggle<CR>", "Toggle nvim-tree" },
			r = { "<cmd>NvimTreeRefresh<CR>", "Refresh nvim-tree" },
			f = { "<cmd>NvimTreeFindFile<CR>", "Find file in nvim-tree" },
		},
		p = {
			name = "lsp stuff",
			e = {
				"<cmd>lua vim.diagnostic.open_float()<CR>",
				"Open float",
			},
			a = {
				"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",
				"Add workspace folder",
			},
			r = {
				"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
				"remove workspace folder",
			},
			l = {
				"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
				"List workspace folders",
			},
			d = {
				"<cmd>lua vim.lsp.buf.type_definition()<CR>",
				"type definition",
			},
			n = {
				"<cmd>lua vim.lsp.buf.rename()<CR>",
				"rename buffer?",
			},
			c = {
				"<cmd>lua vim.lsp.buf.code_action()<CR>",
				"perform code action",
			},
			q = {
				"<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>",
				"set location list",
			},
			p = {
				"<cmd>lua vim.lsp.buf.formatting()<CR>",
				"buffer formatting?",
			},

			["<leader>"] = {
				i = {
					"<cmd>source ~/.config/nvim/init.lua<CR>",
					"reload neovim",
				},
				s = {
					"<cmd>source ~/.config/nvim/lua/cfg/snippets/init.lua<CR>",
					"reload snippets",
				},
				f = {
					"<cmd>source %<CR>",
					"source current file",
				},
				w = {
					"<cmd>set wrap!<CR>",
					"set wrap",
				},
			},
		},
		s = {
			name = "custom stuff",
			n = {
				"<cmd>lua require('cfg.custom.telescope').search_nvimrc()<CR>",
				"Search my neovim config",
			},
			d = {
				"<cmd>lua require('cfg.custom.telescope').search_dotfiles()<CR>",
				"Search my dotfiles",
			},
			r = {
				"<cmd>lua require('cfg.custom.terminal').run_python_script()<CR>",
				"Run python script",
			},
		},
		w = {
			name = "writing stuff",
			c = { "<cmd>set spell!<CR>", "Turn spell check" },
			z = { "<cmd>ZenMode<CR>", "Toggle zen mode" },
			t = { "<cmd>Twilight<CR>", "Toggle twilight mode" },
			e = { "<cmd>TwilightEnable<CR>", "Turn on twilight mode" },
			d = { "<cmd>TwilightDisable<CR>", "Turn off twilight mode" },
		},
		v = {
			name = "builtins",
			h = { "<cmd>set hlsearch!<cr>", "Toggle highlight search" },
			p = { '"_d', "send to the void" },
		},
		x = {
			name = "hex colors",
			t = { "<cmd>HexokinaseToggle<CR>", "Toggle hex color highlighting" },
			n = { "<cmd>HexokinaseTurnOn<CR>", "Enable hex color highlighting" },
			f = { "<cmd>HexokinaseTurOff<CR>", "Disable hex color highlighting" },
		},
	},
	["g"] = {
		D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Go to declaration" },
		d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
		i = {
			"<cmd>lua vim.lsp.buf.implementation()<CR>",
			"Go to implementations?",
		},
		r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Go to references" },
		--[[ b = {
			c = {
				"<cmd>lua require('Comment.api').call('toggle_current_blockwise')<CR>",
				"Toggle comment blockwise",
			},
		},
		c = {
			c = {
				"<cmd>lua require('Comment.api').call('toggle_current_linewise')<CR>",
				"Toggle comment linewise",
			},
		}, ]]
	},
})

which_key.setup({})
