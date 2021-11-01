local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.catppuccino13, fg = cp.catppuccino11 },
		BufferCurrentIndex = { bg = cp.catppuccino13, fg = cp.catppuccino10 },
		BufferCurrentMod = { bg = cp.catppuccino13, fg = cp.katppuccino8 },
		BufferCurrentSign = { bg = cp.catppuccino13, fg = cp.catppuccino10 },
		BufferCurrentTarget = { bg = cp.catppuccino13, fg = cp.katppuccino5 },
		BufferVisible = { bg = cp.catppuccino15, fg = cp.catppuccino11 },
		BufferVisibleIndex = { bg = cp.catppuccino15, fg = cp.catppuccino10 },
		BufferVisibleMod = { bg = cp.catppuccino15, fg = cp.katppuccino8 },
		BufferVisibleSign = { bg = cp.catppuccino15, fg = cp.catppuccino10 },
		BufferVisibleTarget = { bg = cp.catppuccino15, fg = cp.katppuccino5 },
		BufferInactive = { bg = cp.catppuccino15, fg = cp.catppuccino12 },
		BufferInactiveIndex = { bg = cp.catppuccino15, fg = cp.catppuccino12 },
		BufferInactiveMod = { bg = cp.catppuccino15, fg = cp.katppuccino8 },
		BufferInactiveSign = { bg = cp.catppuccino15, fg = cp.catppuccino10 },
		BufferInactiveTarget = { bg = cp.catppuccino15, fg = cp.katppuccino5 },
		BufferTabpages = { bg = cp.catppuccino15, fg = cp.none },
		BufferTabpage = { bg = cp.catppuccino15, fg = cp.catppuccino10 },
	}
end

return M
