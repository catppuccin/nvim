local M = {}

function M.get(cp)

	local inactive_bg = cp.mantle

	return {
		BufferLineFill = { bg = cp.crust },
		BufferLineBackcrust = { fg = cp.text, bg = inactive_bg }, -- others
		BufferLineBufferVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineBufferSelected = { fg = cp.text, bg = cp.base, style = "bold,italic" }, -- current
		BufferLineTab = { fg = cp.surface1, bg = cp.base },
		BufferLineTabSelected = { fg = cp.red, bg = cp.blue },
		BufferLineTabClose = { fg = cp.red, bg = inactive_bg },
		BufferLineIndicatorSelected = { fg = cp.peach, bg = cp.base },
		-- separators
		BufferLineSeparator = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorVisible = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorSelected = { fg = inactive_bg, bg = inactive_bg },
		-- close buttons
		BufferLineCloseButton = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonSelected = { fg = cp.red, bg = cp.base },
	}
end

return M
