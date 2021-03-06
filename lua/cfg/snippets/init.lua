local ls = require("luasnip")

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
    ls.parser.parse_snippet("lf", "local ${1:myFunction} = function(${2:args})\n    $0\nend"),
    ls.parser.parse_snippet("mf", "$1.$2 = function($3)\n  $0\nend"),
  },

  sh = {
    ls.parser.parse_snippet("env", "#!/usr/bin/env $0"),
  },

  tex = {
    ls.parser.parse_snippet("begin", "\\begin{${1:env}}\n$0\n\\end{${1:env}}"),
  },

  c = {
    ls.parser.parse_snippet("struct", "struct ${1:myStruct} {\n\t$0\n};"),
  },

  cpp = {
    ls.parser.parse_snippet("class", "class ${1:myClass} {\n\t$0\n};"),
  },
}
