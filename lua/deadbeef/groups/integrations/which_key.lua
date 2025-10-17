local M = {}

M.url = "https://github.com/folke/which-key.nvim"

function M.get()
	local normal_bg = O.transparent_background and C.none or C.surface0
	return {
		WhichKey = { fg = C.blue },
		WhichKeyGroup = { fg = C.mauve },
		WhichKeyDesc = { fg = C.text },
		WhichKeySeperator = { fg = C.overlay1 },
		WhichKeySeparator = { fg = C.overlay1 },
		WhichKeyFloat = { fg = C.text, bg = normal_bg },
		WhichKeyBorder = { fg = C.overlay1, bg = normal_bg },
		WhichKeyValue = { fg = C.teal },
		WhichKeyIcon = { fg = C.mauve },
		WhichKeyIconAzure = { fg = C.blue },
		WhichKeyIconBlue = { fg = C.blue },
		WhichKeyIconCyan = { fg = C.teal },
		WhichKeyIconGreen = { fg = C.green },
		WhichKeyIconGrey = { fg = C.overlay1 },
		WhichKeyIconOrange = { fg = C.peach },
		WhichKeyIconPurple = { fg = C.mauve },
		WhichKeyIconRed = { fg = C.red },
		WhichKeyIconYellow = { fg = C.yellow },
		WhichKeyNormal = { fg = C.text, bg = normal_bg },
		WhichKeyTitle = { fg = C.text, bg = normal_bg, style = { "bold" } },

		-- Legacy support
		whichkey_key = { fg = C.blue },
		whichkey_group = { fg = C.mauve },
		whichkey_desc = { fg = C.text },
		whichkey_separator = { fg = C.overlay1 },
		whichkey_float = { fg = C.text, bg = normal_bg },
	}
end

return M