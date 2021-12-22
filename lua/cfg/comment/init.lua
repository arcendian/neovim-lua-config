local status_ok, commentPlugin = pcall(require, "Comment")
if not status_ok then
	return
end

commentPlugin.setup({
	ignore = "^$",
})
