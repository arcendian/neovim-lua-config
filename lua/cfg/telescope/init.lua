local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

telescope.setup({
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
			".cache",
			"%.git",
			"assets",
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

telescope.load_extension("fzf")
telescope.load_extension("zoxide")
telescope.load_extension("repo")
telescope.load_extension("file_browser")
