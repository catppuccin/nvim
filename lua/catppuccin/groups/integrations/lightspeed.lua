local M = {}

function M.get()
	return {
		LightspeedLabel = { fg = C.red, style = { "bold", "underline" } },
		LightspeedLabelDistant = {
			fg = U.vary_color({ latte = C.blue }, C.sky),
			style = { "bold", "underline" },
		},
		LightspeedShortcut = {
			fg = "#ffffff",
			bg = U.increase_saturation(C.red, 0.7),
			style = { "bold" },
		},
		LightspeedMaskedChar = {
			fg = U.vary_color({ latte = U.lighten(C.pink, 0.7, C.text) }, U.darken(C.pink, 0.7, C.base)),
		},
		LightspeedUnlabeledMatch = { fg = C.text, style = { "bold" } },
		LightspeedGreyWash = { link = "Comment" },
		LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedOneCharMatch = { link = "LightspeedShortcut" },
		LightspeedPendingOpArea = { link = "IncSearch" },
		LightspeedCursor = { link = "Cursor" },
	}
end

return M
