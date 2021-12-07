local M = {}

function M.get(cp)

	local inactive_clr = cp.catppuccin14

	return {
		BufferLineFill = { bg = cp.catppuccin13 },
		BufferLineBackground = { fg = cp.catppuccin10, bg = inactive_clr },
		BufferLineBufferVisible = { fg = cp.catppuccin12, bg = inactive_clr },
		BufferLineBufferSelected = { fg = cp.catppuccin0, bg = cp.catppuccin1, style = "bold,italic" },
		BufferLineTab = { fg = cp.catppuccin12, bg = cp.catppuccin1 },
		BufferLineTabSelected = { fg = cp.catppuccin5, bg = cp.catppuccin9 },
		BufferLineTabClose = { fg = cp.catppuccin5, bg = inactive_clr },
		BufferLineIndicatorSelected = { fg = cp.catppuccin6, bg = cp.catppuccin1 },
		-- separators
		BufferLineSeparator = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorVisible = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorSelected = { fg = inactive_clr, bg = inactive_clr },
		-- close buttons
		BufferLineCloseButton = { fg = cp.catppuccin12, bg = inactive_clr },
		BufferLineCloseButtonVisible = { fg = cp.catppuccin12, bg = inactive_clr },
		BufferLineCloseButtonSelected = { fg = cp.catppuccin5, bg = cp.catppuccin1 },
	}
end

return M
