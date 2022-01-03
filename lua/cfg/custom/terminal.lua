local M = {}

-- TDOOOOOO: Works for now. Find a better way to do this.
-- Maybe run this on toggle term
M.run_python_script = function()
	vim.cmd([[
		function! Termpy()
			exec winheight(0)/4."split" | terminal python3 %
		endfunction

		call Termpy()
	]])
end

return M
