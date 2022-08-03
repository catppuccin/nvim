local M = {}

local ucolors = require("catppuccin.utils.colors")

function M.get()
	return {
		LightspeedLabel = { fg = cp.red, style = { "bold", "underline" } },
		LightspeedLabelDistant = { fg = cp.sky },
		LightspeedShortcut = {
			fg = ucolors.brighten(cp.text, 0.7),
			bg = ucolors.increase_saturation(cp.red, 0.7),
			style = { "bold" },
		},
		LightspeedMaskedChar = { fg = cp.red },
		LightspeedUnlabeledMatch = { fg = cp.text, style = { "bold" } },
		LightspeedGreyWash = { link = "Comment" },
		LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedOneCharMatch = { link = "LightspeedShortcut" },
		LightspeedPendingOpArea = { link = "IncSearch" },
		LightspeedCursor = { link = "Cursor" },
	}
end

return M
