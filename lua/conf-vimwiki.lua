vim.cmd([[
	let g:vimwiki_list = [{ 'path': '~/Documents/VimWiki/Default/',
    	\ 'path_tasks': '~/Documents/VimWiki/Tasks/',
    	\ 'path_calendar': '~/Documents/VimWiki/Calendar/',
    	\ 'path_others': '~/Documents/VimWiki/Others',
    	\ 'path_learning': '~/Documents/VimWiki/Learning/',
    	\ 'path_podcasts': '~/Documents/VimWiki/Podcasts/',
    	\ 'path_random': '~/Documents/VimWiki/Random/',
    	\ 'path_review': '~/Documents/VimWiki/Review/',
    	\ 'path_worldbuilding': '~/Documents/VimWiki/Worldbuilding/',
    	\ 'path_journal': '~/Documents/VimWiki/Journal/'
	\ }]
]])

vim.g.vimwiki_global_ext = 0

-- TODO: How to translate the above to Lua. Too lazy to search for now.
-- vim.g.vimwiki_list = {
--     path = '~/Documents/VimWiki/Default/',
--     path_tasks = '~/Documents/VimWiki/Tasks/',
--     path_calendar = '~/Documents/VimWiki/Calendar/',
--     path_others = '~/Documents/VimWiki/Others',
--     path_learning = '~/Documents/VimWiki/Learning/',
--     path_podcasts = '~/Documents/VimWiki/Podcasts/',
--     path_random = '~/Documents/VimWiki/Random/',
--     path_review = '~/Documents/VimWiki/Review/',
--     path_worldbuilding = '~/Documents/VimWiki/Worldbuilding/',
-- }
