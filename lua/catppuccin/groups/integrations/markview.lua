local M = {}

-- markview.nvim highlight groups:
-- https://github.com/OXY2DEV/markview.nvim#-highlight-groups

function M.get()
	local darkening_percentage = 0.095

	local rainbow = {
		[0] = O.transparent_background and C.none or U.darken(C.overlay2, darkening_percentage, C.base),
		[1] = O.transparent_background and C.none or U.darken(C.red, darkening_percentage, C.base),
		[2] = O.transparent_background and C.none or U.darken(C.peach, darkening_percentage, C.base),
		[3] = O.transparent_background and C.none or U.darken(C.yellow, darkening_percentage, C.base),
		[4] = O.transparent_background and C.none or U.darken(C.green, darkening_percentage, C.base),
		[5] = O.transparent_background and C.none or U.darken(C.sapphire, darkening_percentage, C.base),
		[6] = O.transparent_background and C.none or U.darken(C.lavender, darkening_percentage, C.base),
		[7] = O.transparent_background and C.none or U.darken(C.mauve, darkening_percentage, C.base),
	}

	return {
		MarkviewPalette0   = { fg = C.overlay2, bg = rainbow[0] },
		MarkviewPalette0Fg = { fg = C.overlay2 },
		MarkviewPalette0Bg = { bg = rainbow[0] },
		MarkviewPalette1   = { fg = C.red, bg = rainbow[1] },
		MarkviewPalette1Fg = { fg = C.red },
		MarkviewPalette1Bg = { bg = rainbow[1] },
		MarkviewPalette2   = { fg = C.peach, bg = rainbow[2] },
		MarkviewPalette2Fg = { fg = C.peach },
		MarkviewPalette2Bg = { bg = rainbow[2] },
		MarkviewPalette3   = { fg = C.yellow, bg = rainbow[3] },
		MarkviewPalette3Fg = { fg = C.yellow },
		MarkviewPalette3Bg = { bg = rainbow[3] },
		MarkviewPalette4   = { fg = C.green, bg = rainbow[4] },
		MarkviewPalette4Fg = { fg = C.green },
		MarkviewPalette4Bg = { bg = rainbow[4] },
		MarkviewPalette5   = { fg = C.sapphire, bg = rainbow[5] },
		MarkviewPalette5Fg = { fg = C.sapphire },
		MarkviewPalette5Bg = { bg = rainbow[5] },
		MarkviewPalette6   = { fg = C.lavender, bg = rainbow[6] },
		MarkviewPalette6Fg = { fg = C.lavender },
		MarkviewPalette6Bg = { bg = rainbow[6] },
		MarkviewPalette7   = { fg = C.mauve, bg = rainbow[7] },
		MarkviewPalette7Fg = { fg = C.mauve },
		MarkviewPalette7Bg = { bg = rainbow[7] },

		MarkviewBlockQuoteDefault = { fg = C.overlay2, bg = C.mantle },
		MarkviewBlockQuoteError = { fg = C.red, bg = C.mantle },
		MarkviewBlockQuoteNote = { fg = C.sky, bg = C.mantle },
		MarkviewBlockQuoteOk = { fg = C.green, bg = C.mantle },
		MarkviewBlockQuoteSpecial = { fg = C.pink, bg = C.mantle },
		MarkviewBlockQuoteWarn = { fg = C.yellow, bg = C.mantle },

		MarkviewHyperlink  = { link = "@markup.link.url" },

		MarkviewCode       = { bg = C.mantle },
		MarkviewCodeInfo   = { fg = C.overlay2, bg = C.mantle },
		MarkviewCodeFg     = { fg = C.teal },
		MarkviewInlineCode = { bg = C.surface0 },

		MarkviewIcon0      = { fg = C.overlay2, bg = C.mantle },
		MarkviewIcon1      = { fg = C.red, bg = C.mantle },
		MarkviewIcon2      = { fg = C.sapphire, bg = C.mantle },
		MarkviewIcon3      = { fg = C.green, bg = C.mantle },
		MarkviewIcon4      = { fg = C.yellow, bg = C.mantle },
		MarkviewIcon5      = { fg = C.peach, bg = C.mantle },

		MarkviewTableHeader = { fg = C.blue },
	}
end

return M
