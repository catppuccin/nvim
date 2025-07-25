-- nvim-surround
local M = {}

function M.get()
	return {
		NvimSurroundHighlight = { sp = C.peach, style = { "underline" } },
	}
end

return M
