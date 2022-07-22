local M = {}

function M.get()
	local cnf = require("catppuccin.config").options
	local transparent_background = cnf.transparent_background
	local bg_highlight = (transparent_background and cnf.dim_inactive.enabled and cp.dim)
		or (transparent_background and "NONE")
		or (cnf.dim_inactive.enabled and cp.dim)
		or cp.crust

	local inactive_bg = transparent_background and "NONE" or cp.mantle

	return {
		-- buffers
		BufferLineBackground = { bg = cp.mantle },
		BufferLineBackcrust = { fg = cp.text, bg = inactive_bg }, -- others
		BufferLineBufferVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineBufferSelected = { fg = cp.text, bg = cp.base, style = { "bold", "italic" } }, -- current
		-- tabs
		BufferLineTab = { fg = cp.surface1, bg = cp.mantle },
		BufferLineTabSelected = { fg = cp.sky, bg = cp.base },
		BufferLineTabClose = { fg = cp.red, bg = inactive_bg },
		BufferLineIndicatorSelected = { fg = cp.peach, bg = cp.base },
		-- separators
		BufferLineSeparator = { fg = cp.crust, bg = inactive_bg },
		BufferLineSeparatorVisible = { fg = cp.crust, bg = inactive_bg },
		BufferLineSeparatorSelected = { fg = cp.crust, bg = cp.base },
		-- close buttons
		BufferLineCloseButton = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonSelected = { fg = cp.red, bg = cp.base },
		-- Empty fill
		BufferLineFill = { bg = bg_highlight },
	}
end

return M
