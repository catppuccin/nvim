local M = {}
local util = require("catppuccino.utils.util")

function M.get(cpt)

	local inactive_clr = util.darken("#000000", 0.56)

	return {
		BufferLineFill = { bg = util.brighten(cpt.bg, 0.05) },
		BufferLineBackground = { fg = cpt.gray, bg = inactive_clr },
		BufferLineBufferVisible = { fg = cpt.gray, bg = inactive_clr },
		BufferLineBufferSelected = { fg = cpt.fg, bg = cpt.bg },
		BufferLineTab = { fg = cpt.gray, bg = cpt.bg },
		BufferLineTabSelected = { fg = cpt.red, bg = cpt.blue },
		BufferLineTabClose = { fg = cpt.red, bg = inactive_clr },
		BufferLineIndicatorSelected = { fg = cpt.bg, bg = cpt.bg },
		-- separators
		BufferLineSeparator = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorVisible = { fg = inactive_clr, bg = inactive_clr },
		BufferLineSeparatorSelected = { fg = inactive_clr, bg = inactive_clr },
		-- close buttons
		BufferLineCloseButton = { fg = cpt.gray, bg = inactive_clr },
		BufferLineCloseButtonVisible = { fg = cpt.gray, bg = inactive_clr },
		BufferLineCloseButtonSelected = { fg = cpt.red, bg = cpt.bg },
	}
end

return M
