local M = {}

M.url = "https://github.com/s1n7ax/nvim-window-picker"

function M.get()
	return {
		WindowPickerStatusLine = { fg = C.red, style = { "bold" } },
		WindowPickerStatusLineNC = { fg = C.red, style = { "bold" } },
		WindowPickerWinBar = { fg = C.red, style = { "bold" } },
		WindowPickerWinBarNC = { fg = C.red, style = { "bold" } },
	}
end

return M
