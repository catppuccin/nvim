local M = {}
local util = require("catppuccino.utils.util")

function M.get(cp)

	local inactive_clr = util.darken("#000000", 0.56)

	return {
		BufferLineFill = { bg = util.brighten(cp.bg, 0.05) },
		BufferLineBackground = { fg = cp.gray, bg = inactive_clr },
		BufferLineBufferVisible = { fg = cp.gray, bg = inactive_clr },
		BufferLineBufferSelected = { fg = cp.fg, bg = cp.bg },
		BufferLineTab = { fg = cp.gray, bg = cp.bg },
		BufferLineTabSelected = { fg = cp.red, bg = cp.blue },
		BufferLineTabClose = { fg = cp.red, bg = inactive_clr },
		BufferLineIndicatorSelected = { fg = cp.bg, bg = cp.bg },
		-- separators
		BufferLineSeparator = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorVisible = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorSelected = { fg = inactive_clr, bg = inactive_clr },
		-- close buttons
		BufferLineCloseButton = { fg = cp.gray, bg = inactive_clr },
		BufferLineCloseButtonVisible = { fg = cp.gray, bg = inactive_clr },
		BufferLineCloseButtonSelected = { fg = cp.red, bg = cp.bg },
	}
end

return M
