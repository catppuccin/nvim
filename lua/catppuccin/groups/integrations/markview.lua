local M = {}

-- markview.nvim highlight groups:
-- https://github.com/OXY2DEV/markview.nvim#-highlight-groups

function M.get()
	local darkening_percentage = 0.095

	local groups = {
		MarkviewBlockQuoteDefault = { fg = C.overlay2, bg = C.mantle },
		MarkviewBlockQuoteError = { fg = C.red, bg = C.mantle },
		MarkviewBlockQuoteNote = { fg = C.sky, bg = C.mantle },
		MarkviewBlockQuoteOk = { fg = C.green, bg = C.mantle },
		MarkviewBlockQuoteSpecial = { fg = C.pink, bg = C.mantle },
		MarkviewBlockQuoteWarn = { fg = C.yellow, bg = C.mantle },

		MarkviewHyperlink = { link = "@markup.link.url" },

		MarkviewCode = { bg = C.mantle },
		MarkviewCodeInfo = { fg = C.overlay2, bg = C.mantle },
		MarkviewCodeFg = { fg = C.teal },
		MarkviewInlineCode = { bg = C.surface0 },

		MarkviewTableHeader = { fg = C.blue },
	}

	local rainbow = {
		[0] = C.overlay2,
		[7] = C.mauve,
	}

	local syntax = require("catppuccin.groups.syntax").get()
	local base = not O.transparent_background and C.base or nil

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
