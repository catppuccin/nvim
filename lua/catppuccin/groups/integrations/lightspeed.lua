local M = {}

local ucolors = require("catppuccin.utils.colors")

function M.get()
	return {
		LightspeedLabel = { fg = cp.red, style = { "bold", "underline" } },
		LightspeedLabelDistant = {
			fg = ucolors.vary_color({ latte = cp.blue }, cp.sky),
			style = { "bold", "underline" },
		},
		LightspeedShortcut = {
			fg = "#ffffff",
			bg = ucolors.increase_saturation(cp.red, 0.7),
			style = { "bold" },
		},
		LightspeedMaskedChar = {
			fg = ucolors.vary_color(
				{ latte = ucolors.lighten(cp.pink, 0.7, cp.text) },
				ucolors.darken(cp.pink, 0.7, cp.base)
			),
		},
		LightspeedUnlabeledMatch = { fg = cp.text, style = { "bold" } },
		LightspeedGreyWash = { link = "Comment" },
		LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedOneCharMatch = { link = "LightspeedShortcut" },
		LightspeedPendingOpArea = { link = "IncSearch" },
		LightspeedCursor = { link = "Cursor" },
	}
end

return M
