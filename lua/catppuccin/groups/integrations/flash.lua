local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.base
	return {
		FlashBackdrop = { fg = C.overlay0 },
		FlashLabel = { fg = C.green, bg = bg, style = { "bold" } },
		FlashMatch = { fg = C.lavender, bg = bg },
		FlashCurrent = { fg = C.peach, bg = bg },
		FlashPrompt = { link = "NormalFloat" },
	}
end

return M
