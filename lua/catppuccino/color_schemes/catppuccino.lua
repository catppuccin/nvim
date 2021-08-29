local util = require("catppuccino.utils.util")

local colors = {
	none = "NONE",
	bg = "#0e171c", -- nvim bg
	fg = "#abb2bf", -- fg color (text)
	fg_gutter = "#3b4261",
	black = "#393b44",
	gray = "#2a2e36",
	red = "#c94f6d",
	green = "#97c374",
	yellow = "#dbc074",
	blue = "#61afef",
	magenta = "#c678dd",
	cyan = "#63cdcf",
	white = "#dfdfe0",
	orange = "#F4A261",
	pink = "#D67AD2",
	black_br = "#7f8c98",
	red_br = "#e06c75",
	green_br = "#58cd8b",
	yellow_br = "#FFE37E",
	blue_br = "#84CEE4",
	magenta_br = "#B8A1E3",
	cyan_br = "#59F0FF",
	white_br = "#FDEBC3",
	orange_br = "#F6A878",
	pink_br = "#DF97DB",
	comment = "#526175",
}

util.bg = colors.bg
colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
colors.bg_highlight = util.brighten(colors.bg, 0.05)
colors.fg_alt = util.darken(colors.fg, 0.80, "#000000")

colors.diff = { -- git and native diffs
	add = colors.blue,
	change = colors.yellow,
	delete = colors.red,
	text = colors.blue,
	conflict = colors.magenta,
}

colors.black = util.darken(colors.bg, 0.8, "#000000")
colors.border_highlight = colors.blue
colors.border = colors.black

-- Popups and statusline should always be darker
colors.bg_popup = colors.bg_alt
colors.bg_statusline = colors.bg_alt

-- Sidebar and Floats
colors.bg_sidebar = colors.bg_alt
colors.bg_float = colors.bg_alt

colors.bg_visual = util.darken(colors.blue, 0.2)
colors.bg_search = util.darken(colors.cyan, 0.3)
colors.fg_sidebar = colors.fg_alt

colors.error = colors.red_br
colors.warning = colors.yellow
colors.info = colors.blue
colors.hint = colors.white_br
colors.variable = colors.white

return colors
