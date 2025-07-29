local M = {}

M.url = "https://github.com/kristijanhusak/vim-dadbod-ui"

function M.get()
	return {
		NotificationInfo = { fg = C.blue, bg = C.mantle },
		NotificationWarning = { fg = C.yellow, bg = C.mantle },
		NotificationError = { fg = C.red, bg = C.mantle },
	}
end

return M
