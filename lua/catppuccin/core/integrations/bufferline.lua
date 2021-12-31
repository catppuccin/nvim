local M = {}

function M.get(cp)

	local inactive_bg = cp.black1

	return {
		BufferLineFill = { bg = cp.black0 },
		BufferLineBackground = { fg = cp.white, bg = inactive_bg }, -- others
		BufferLineBufferVisible = { fg = cp.black4, bg = inactive_bg },
		BufferLineBufferSelected = { fg = cp.white, bg = cp.black2, style = "bold,italic" }, -- current
		BufferLineTab = { fg = cp.black4, bg = cp.black2 },
		BufferLineTabSelected = { fg = cp.red, bg = cp.blue },
		BufferLineTabClose = { fg = cp.red, bg = inactive_bg },
		BufferLineIndicatorSelected = { fg = cp.peach, bg = cp.black2 },
		-- separators
		BufferLineSeparator = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorVisible = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorSelected = { fg = inactive_bg, bg = inactive_bg },
		-- close buttons
		BufferLineCloseButton = { fg = cp.black4, bg = inactive_bg },
		BufferLineCloseButtonVisible = { fg = cp.black4, bg = inactive_bg },
		BufferLineCloseButtonSelected = { fg = cp.red, bg = cp.black2 },
	}
end

return M
