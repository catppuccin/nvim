local M = {}

function M.get()
	return {
		WindowPickerStatusLine = { C.red, style = { "bold" } },
		WindowPickerStatusLineNC = { C.red, style = { "bold" } },
		WindowPickerWinBar = { C.red, style = { "bold" } },
		WindowPickerWinBarNC = { C.red, style = { "bold" } },
	}
end

return M
