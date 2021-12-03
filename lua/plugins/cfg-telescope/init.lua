local tele = require("telescope")

tele.setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--hidden",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		file_ignore_patterns = {
			"node_modules",
			"__pycache__",
			".git",
			"%.png",
			"%.jpg",
			"%.svg",
			"%.cat",
			"%.pdf",
			"%.epub",
			"%.djvu",
			"%.mkv",
			"%.mp4",
			"%.mp3",
			"%.m4a",
			"%.webm",
			"%.wav",
			"%.ttf",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

-- load extensions
tele.load_extension("fzf")
tele.load_extension("zoxide")
