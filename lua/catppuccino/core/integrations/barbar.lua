local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.katppuccino12, fg = cp.katppuccino10 },
		BufferCurrentIndex = { bg = cp.katppuccino12, fg = cp.katppuccino9 },
		BufferCurrentMod = { bg = cp.katppuccino12, fg = cp.katppuccino8 },
		BufferCurrentSign = { bg = cp.katppuccino12, fg = cp.katppuccino9 },
		BufferCurrentTarget = { bg = cp.katppuccino12, fg = cp.katppuccino5 },
		BufferVisible = { bg = cp.katppuccino14, fg = cp.katppuccino10 },
		BufferVisibleIndex = { bg = cp.katppuccino14, fg = cp.katppuccino9 },
		BufferVisibleMod = { bg = cp.katppuccino14, fg = cp.katppuccino8 },
		BufferVisibleSign = { bg = cp.katppuccino14, fg = cp.katppuccino9 },
		BufferVisibleTarget = { bg = cp.katppuccino14, fg = cp.katppuccino5 },
		BufferInactive = { bg = cp.katppuccino14, fg = cp.katppuccino11 },
		BufferInactiveIndex = { bg = cp.katppuccino14, fg = cp.katppuccino11 },
		BufferInactiveMod = { bg = cp.katppuccino14, fg = cp.katppuccino8 },
		BufferInactiveSign = { bg = cp.katppuccino14, fg = cp.katppuccino9 },
		BufferInactiveTarget = { bg = cp.katppuccino14, fg = cp.katppuccino5 },
		BufferTabpages = { bg = cp.katppuccino14, fg = cp.none },
		BufferTabpage = { bg = cp.katppuccino14, fg = cp.katppuccino9 },
	}
end

return M
