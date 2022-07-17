local M = {}

function M.get()
	local error = cp.red
	local warning = cp.yellow
	local info = cp.sky
	local hint = cp.teal

	return {
		-- These groups are for the coc.nvim, the documentation is here (https://github.com/neoclide/coc.nvim/blob/master/doc/coc.txt#L2365).
		CocErrorHighlight = { fg = error },
		CocErrorSign = { fg = error },
		CocErrorVirtualText = { fg = error },
		CocHintHighlight = { fg = hint },
		CocHintSign = { fg = hint },
		CocHintVirtualText = { fg = hint },
		CocInfoHighlight = { fg = info },
		CocInfoSign = { fg = info },
		CocInfoVirtualText = { fg = info },
		CocWarningHighlight = { fg = warning },
		CocWarningSign = { fg = warning },
	}
end

return M
