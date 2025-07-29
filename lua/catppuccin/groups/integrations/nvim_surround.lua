local M = {}

M.url = "https://github.com/kylechui/nvim-surround"

function M.get()
	return {
		NvimSurroundHighlight = { sp = C.peach, style = { "underline" } },
	}
end

return M
