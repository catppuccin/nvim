local M = {}

-- markview.nvim highlight groups:
-- https://github.com/OXY2DEV/markview.nvim#-highlight-groups

function M.get()
	local darkening_percentage = O.transparent_background and 0.28 or 0.095

	local blockquote_bg = not O.transparent_background and C.mantle or nil

	local groups = {
		MarkviewBlockQuoteDefault = { fg = C.overlay2, bg = C.mantle },
		MarkviewBlockQuoteError = { fg = C.red, bg = U.darken(C.red, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteNote = { fg = C.blue, bg = U.darken(C.blue, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteOk = { fg = C.green, bg = U.darken(C.green, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteSpecial = { fg = C.mauve, bg = U.darken(C.pink, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteWarn = { fg = C.yellow, bg = U.darken(C.yellow, darkening_percentage, blockquote_bg) },

		MarkviewHyperlink = { link = "@markup.link.url" },

		MarkviewCode = { bg = C.mantle },
		MarkviewCodeFg = { fg = C.mantle },
		MarkviewCodeInfo = { fg = C.overlay2, bg = C.mantle },
		MarkviewInlineCode = { bg = C.surface0 },

		MarkviewTableHeader = { fg = C.blue },
	}

	local rainbow = {
		[0] = C.overlay2,
		[7] = C.mauve,
	}

	local syntax = require("catppuccin.groups.syntax").get()
	local base = not O.transparent_background and C.base or C.crust

	for i = 0, 7 do
		local color = rainbow[i] or syntax["rainbow" .. i].fg
		local bg = U.darken(color, darkening_percentage, base)
		groups["MarkviewPalette" .. i] = { fg = color, bg = bg }
		groups["MarkviewPalette" .. i .. "Fg"] = { fg = color }
		groups["MarkviewPalette" .. i .. "Bg"] = { bg = bg }
		groups["MarkviewIcon" .. i] = { fg = color, bg = C.mantle }
	end

	return groups
end

return M
