local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.surface1, fg = cp.text },
		BufferCurrentIndex = { bg = cp.surface1, fg = cp.blue },
		BufferCurrentMod = { bg = cp.surface1, fg = cp.yellow },
		BufferCurrentSign = { bg = cp.surface1, fg = cp.blue },
		BufferCurrentTarget = { bg = cp.surface1, fg = cp.red },
		BufferVisible = { bg = cp.base1, fg = cp.text },
		BufferVisibleIndex = { bg = cp.base1, fg = cp.blue },
		BufferVisibleMod = { bg = cp.base1, fg = cp.yellow },
		BufferVisibleSign = { bg = cp.base1, fg = cp.blue },
		BufferVisibleTarget = { bg = cp.base1, fg = cp.red },
		BufferInactive = { bg = cp.base1, fg = cp.overlay0 },
		BufferInactiveIndex = { bg = cp.base1, fg = cp.overlay0 },
		BufferInactiveMod = { bg = cp.base1, fg = cp.yellow },
		BufferInactiveSign = { bg = cp.base1, fg = cp.blue },
		BufferInactiveTarget = { bg = cp.base1, fg = cp.red },
		BufferTabpages = { bg = cp.base1, fg = cp.none },
		BufferTabpage = { bg = cp.base1, fg = cp.blue },
	}
end

return M
