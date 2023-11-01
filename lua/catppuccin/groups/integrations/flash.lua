local M = {}

function M.get()
	local bg = O.transparent_background and C.none or C.base
	return {
		FlashBackdrop = { fg = C.overlay0 },
		FlashLabel = { fg = C.green, bg = bg, style = { "bold" } },
		FlashMatch = { fg = C.lavender, bg = bg },
		FlashCurrent = { fg = C.peach, bg = bg },
		FlashPrompt = { bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.mantle },
	}
end

return M
