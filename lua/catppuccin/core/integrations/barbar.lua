local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.black4, fg = cp.white },
		BufferCurrentIndex = { bg = cp.black4, fg = cp.blue },
		BufferCurrentMod = { bg = cp.black4, fg = cp.yellow },
		BufferCurrentSign = { bg = cp.black4, fg = cp.blue },
		BufferCurrentTarget = { bg = cp.black4, fg = cp.red },
		BufferVisible = { bg = cp.black1, fg = cp.white },
		BufferVisibleIndex = { bg = cp.black1, fg = cp.blue },
		BufferVisibleMod = { bg = cp.black1, fg = cp.yellow },
		BufferVisibleSign = { bg = cp.black1, fg = cp.blue },
		BufferVisibleTarget = { bg = cp.black1, fg = cp.red },
		BufferInactive = { bg = cp.black1, fg = cp.gray0 },
		BufferInactiveIndex = { bg = cp.black1, fg = cp.gray0 },
		BufferInactiveMod = { bg = cp.black1, fg = cp.yellow },
		BufferInactiveSign = { bg = cp.black1, fg = cp.blue },
		BufferInactiveTarget = { bg = cp.black1, fg = cp.red },
		BufferTabpages = { bg = cp.black1, fg = cp.none },
		BufferTabpage = { bg = cp.black1, fg = cp.blue },
	}
end

return M
