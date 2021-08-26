local util = require("catppuccino.utils.util")

local M = {}

function M.get(cpt)
	return {
		BufferCurrent = { bg = cpt.fg_gutter, fg = cpt.fg },
		BufferCurrentIndex = { bg = cpt.fg_gutter, fg = cpt.info },
		BufferCurrentMod = { bg = cpt.fg_gutter, fg = cpt.warning },
		BufferCurrentSign = { bg = cpt.fg_gutter, fg = cpt.info },
		BufferCurrentTarget = { bg = cpt.fg_gutter, fg = cpt.red },
		BufferVisible = { bg = cpt.bg_statusline, fg = cpt.fg },
		BufferVisibleIndex = { bg = cpt.bg_statusline, fg = cpt.info },
		BufferVisibleMod = { bg = cpt.bg_statusline, fg = cpt.warning },
		BufferVisibleSign = { bg = cpt.bg_statusline, fg = cpt.info },
		BufferVisibleTarget = { bg = cpt.bg_statusline, fg = cpt.red },
		BufferInactive = { bg = cpt.bg_statusline, fg = cpt.comment },
		BufferInactiveIndex = { bg = cpt.bg_statusline, fg = cpt.comment },
		BufferInactiveMod = { bg = cpt.bg_statusline, fg = util.darken(cpt.warning, 0.7) },
		BufferInactiveSign = { bg = cpt.bg_statusline, fg = cpt.border_highlight },
		BufferInactiveTarget = { bg = cpt.bg_statusline, fg = cpt.red },
		BufferTabpages = { bg = cpt.bg_statusline, fg = cpt.none },
		BufferTabpage = { bg = cpt.bg_statusline, fg = cpt.border_highlight },
	}
end

return M
