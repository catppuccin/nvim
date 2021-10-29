local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)

	local inactive_clr = util.darken("#000000", 0.56)

	return {
		BufferLineFill = { catppuccino2 = util.brighten(cp.catppuccino2, 0.05) },
		BufferLineBackground = { fg = cp.catppuccino1, catppuccino2 = inactive_clr },
		BufferLineBufferVisible = { fg = cp.catppuccino1, catppuccino2 = inactive_clr },
		BufferLineBufferSelected = { fg = cp.fg, catppuccino2 = cp.catppuccino2 },
		BufferLineTab = { fg = cp.catppuccino1, catppuccino2 = cp.catppuccino2 },
		BufferLineTabSelected = { fg = cp.red, catppuccino2 = cp.blue },
		BufferLineTabClose = { fg = cp.red, catppuccino2 = inactive_clr },
		BufferLineIndicatorSelected = { fg = cp.catppuccino2, catppuccino2 = cp.catppuccino2 },
		-- separators
		BufferLineSeparator = { fg = inactive_clr, catppuccino2 = inactive_clr },
		BufferLineSeparatorVisible = { fg = inactive_clr, catppuccino2 = inactive_clr },
		BufferLineSeparatorSelected = { fg = inactive_clr, catppuccino2 = inactive_clr },
		-- close buttons
		BufferLineCloseButton = { fg = cp.catppuccino1, catppuccino2 = inactive_clr },
		BufferLineCloseButtonVisible = { fg = cp.catppuccino1, catppuccino2 = inactive_clr },
		BufferLineCloseButtonSelected = { fg = cp.red, catppuccino2 = cp.catppuccino2 },
	}
end

return M
