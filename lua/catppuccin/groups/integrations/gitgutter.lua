-- vim-gitgutter
local M = {}

function M.get()
	return {
		GitGutterAdd = { fg = C.green },
		GitGutterChange = { fg = C.yellow },
		GitGutterDelete = { fg = C.red },
		GitGutterAddLineNr = { fg = C.green },
		GitGutterChangeLineNr = { fg = C.yellow },
		GitGutterDeleteLineNr = { fg = C.red },
	}
end

return M
