local status_ok, ls = pcall(require, "luasnip")
if not status_ok then
	return
end

-- local types = require("luasnip.util.types")

require("luasnip.loaders.from_vscode").load()

ls.config.set_config({
	-- Remember to keep around the last snippet so you can jump back into it
	-- even if you move outside of the selection
	history = true,

	-- update dynamic snippets as you type
	updateevents = "TextChanged, TextChangedI",

	-- autosnippets
	enable_autosnippets = true,
})

ls.snippets = {
	all = {
		ls.parser.parse_snippet("myname", "Michael Espeña"),
		ls.parser.parse_snippet("myemail", "michaelespena.public@gmail.com"),
	},

	lua = {
		ls.parser.parse_snippet("lf", "local ${1:myFunction} = function(${2:args})\n  $0\nend"),
		ls.parser.parse_snippet("mf", "$1.$2 = function($3)\n  $0\nend"),
	},

	sh = {
		ls.parser.parse_snippet("env", "#!/usr/bin/env $0"),
	},

	tex = {
		ls.parser.parse_snippet("begin", "\begin{$1}\n$0\n\\end{document}"),
	},
}
