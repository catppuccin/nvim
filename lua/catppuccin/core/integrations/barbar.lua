local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.catppuccin12, fg = cp.catppuccin10 },
		BufferCurrentIndex = { bg = cp.catppuccin12, fg = cp.catppuccin9 },
		BufferCurrentMod = { bg = cp.catppuccin12, fg = cp.catppuccin8 },
		BufferCurrentSign = { bg = cp.catppuccin12, fg = cp.catppuccin9 },
		BufferCurrentTarget = { bg = cp.catppuccin12, fg = cp.catppuccin5 },
		BufferVisible = { bg = cp.catppuccin14, fg = cp.catppuccin10 },
		BufferVisibleIndex = { bg = cp.catppuccin14, fg = cp.catppuccin9 },
		BufferVisibleMod = { bg = cp.catppuccin14, fg = cp.catppuccin8 },
		BufferVisibleSign = { bg = cp.catppuccin14, fg = cp.catppuccin9 },
		BufferVisibleTarget = { bg = cp.catppuccin14, fg = cp.catppuccin5 },
		BufferInactive = { bg = cp.catppuccin14, fg = cp.catppuccin11 },
		BufferInactiveIndex = { bg = cp.catppuccin14, fg = cp.catppuccin11 },
		BufferInactiveMod = { bg = cp.catppuccin14, fg = cp.catppuccin8 },
		BufferInactiveSign = { bg = cp.catppuccin14, fg = cp.catppuccin9 },
		BufferInactiveTarget = { bg = cp.catppuccin14, fg = cp.catppuccin5 },
		BufferTabpages = { bg = cp.catppuccin14, fg = cp.none },
		BufferTabpage = { bg = cp.catppuccin14, fg = cp.catppuccin9 },
	}
end

return M
