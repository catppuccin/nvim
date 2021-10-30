local util = require("catppuccino.utils.util")

local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.catppuccino13, fg = cp.catppuccino11 },
		BufferCurrentIndex = { bg = cp.catppuccino13, fg = cp.info },
		BufferCurrentMod = { bg = cp.catppuccino13, fg = cp.warning },
		BufferCurrentSign = { bg = cp.catppuccino13, fg = cp.info },
		BufferCurrentTarget = { bg = cp.catppuccino13, fg = cp.catppuccino6 },
		BufferVisible = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino11 },
		BufferVisibleIndex = { bg = cp.catppuccino2_statusline, fg = cp.info },
		BufferVisibleMod = { bg = cp.catppuccino2_statusline, fg = cp.warning },
		BufferVisibleSign = { bg = cp.catppuccino2_statusline, fg = cp.info },
		BufferVisibleTarget = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino6 },
		BufferInactive = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino12 },
		BufferInactiveIndex = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino12 },
		BufferInactiveMod = { bg = cp.catppuccino2_statusline, fg = util.darken(cp.warning, 0.7) },
		BufferInactiveSign = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino10 },
		BufferInactiveTarget = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino6 },
		BufferTabpages = { bg = cp.catppuccino2_statusline, fg = cp.none },
		BufferTabpage = { bg = cp.catppuccino2_statusline, fg = cp.catppuccino10 },
	}
end

return M
