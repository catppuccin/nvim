local M = {}

function M.get()
	return {
		NotifierIcon = { fg = C.mauve },
		NotifierContent = { fg = C.overlay2, blend = 0, style = { "italic" } },
		NotifierContentDim = { fg = C.overlay1, blend = 0, style = { "italic" } },
	}
end

return M
