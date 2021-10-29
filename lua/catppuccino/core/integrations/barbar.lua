local util = require("catppuccino.utils.util")

local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.fg_gutter, fg = cp.fg },
		BufferCurrentIndex = { bg = cp.fg_gutter, fg = cp.info },
		BufferCurrentMod = { bg = cp.fg_gutter, fg = cp.warning },
		BufferCurrentSign = { bg = cp.fg_gutter, fg = cp.info },
		BufferCurrentTarget = { bg = cp.fg_gutter, fg = cp.red },
		BufferVisible = { bg = cp.bg_statusline, fg = cp.fg },
		BufferVisibleIndex = { bg = cp.bg_statusline, fg = cp.info },
		BufferVisibleMod = { bg = cp.bg_statusline, fg = cp.warning },
		BufferVisibleSign = { bg = cp.bg_statusline, fg = cp.info },
		BufferVisibleTarget = { bg = cp.bg_statusline, fg = cp.red },
		BufferInactive = { bg = cp.bg_statusline, fg = cp.comment },
		BufferInactiveIndex = { bg = cp.bg_statusline, fg = cp.comment },
		BufferInactiveMod = { bg = cp.bg_statusline, fg = util.darken(cp.warning, 0.7) },
		BufferInactiveSign = { bg = cp.bg_statusline, fg = cp.border_highlight },
		BufferInactiveTarget = { bg = cp.bg_statusline, fg = cp.red },
		BufferTabpages = { bg = cp.bg_statusline, fg = cp.none },
		BufferTabpage = { bg = cp.bg_statusline, fg = cp.border_highlight },
	}
end

return M
