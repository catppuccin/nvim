local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

function M.get()
	return {
		NotifyBackground = { bg = (O.transparent_background and vim.o.winblend == 0) and "#000000" or C.mantle },

		NotifyERRORBorder = { fg = C.red },
		NotifyERRORIcon = { fg = C.red },
		NotifyERRORTitle = { fg = C.red, style = { "italic" } },
		NotifyWARNBorder = { fg = C.yellow },
		NotifyWARNIcon = { fg = C.yellow },
		NotifyWARNTitle = { fg = C.yellow, style = { "italic" } },
		NotifyINFOBorder = { fg = C.blue },
		NotifyINFOIcon = { fg = C.blue },
		NotifyINFOTitle = { fg = C.blue, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.peach },
		NotifyDEBUGIcon = { fg = C.peach },
		NotifyDEBUGTitle = { fg = C.peach, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.rosewater },
		NotifyTRACEIcon = { fg = C.rosewater },
		NotifyTRACETitle = { fg = C.rosewater, style = { "italic" } },
	}
end

return M
