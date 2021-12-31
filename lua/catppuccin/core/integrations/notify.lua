local M = {}

function M.get(cp)
	return {
		NotifyERRORBorder = { fg = cp.red },
		NotifyERRORIcon = { fg = cp.red },
		NotifyERRORTitle = { fg = cp.red, style = "italic" },
		NotifyWARNBorder = { fg = cp.yellow },
		NotifyWARNIcon = { fg = cp.yellow },
		NotifyWARNTitle = { fg = cp.yellow, style = "italic" },
		NotifyINFOBorder = { fg = cp.blue },
		NotifyINFOIcon = { fg = cp.blue },
		NotifyINFOTitle = { fg = cp.blue, style = "italic" },
		NotifyDEBUGBorder = { fg = cp.peach },
		NotifyDEBUGIcon = { fg = cp.peach },
		NotifyDEBUGTitle = { fg = cp.peach, style = "italic" },
		NotifyTRACEBorder = { fg = cp.rosewater },
		NotifyTRACEIcon = { fg = cp.rosewater },
		NotifyTRACETitle = { fg = cp.rosewater, style = "italic" },
	}
end

return M
