-- ======================== HEADLINES ====================================== --
-- horizontal highlights for text filetypes, like markdown, rmd,
-- vimwiki and orgmode
local status_ok, headlines = pcall(require, "headlines")
if not status_ok then
	return
end

headlines.setup()
