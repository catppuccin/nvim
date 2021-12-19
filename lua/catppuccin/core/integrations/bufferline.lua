local M = {}

function M.get(cp)

	local inactive_bg = cp.catppuccin14

	return {
		BufferLineFill = { bg = cp.catppuccin13 },
		BufferLineBackground = { fg = cp.catppuccin10, bg = inactive_bg }, -- others
		BufferLineBufferVisible = { fg = cp.catppuccin12, bg = inactive_bg },
		BufferLineBufferSelected = { fg = cp.catppuccin10, bg = cp.catppuccin1, style = "bold,italic" }, -- current
		BufferLineTab = { fg = cp.catppuccin12, bg = cp.catppuccin1 },
		BufferLineTabSelected = { fg = cp.catppuccin5, bg = cp.catppuccin9 },
		BufferLineTabClose = { fg = cp.catppuccin5, bg = inactive_bg },
		BufferLineIndicatorSelected = { fg = cp.catppuccin6, bg = cp.catppuccin1 },
		-- separators
		BufferLineSeparator = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorVisible = { fg = inactive_bg, bg = inactive_bg },
		BufferLineSeparatorSelected = { fg = inactive_bg, bg = inactive_bg },
		-- close buttons
		BufferLineCloseButton = { fg = cp.catppuccin12, bg = inactive_bg },
		BufferLineCloseButtonVisible = { fg = cp.catppuccin12, bg = inactive_bg },
		BufferLineCloseButtonSelected = { fg = cp.catppuccin5, bg = cp.catppuccin1 },
	}
end

return M
