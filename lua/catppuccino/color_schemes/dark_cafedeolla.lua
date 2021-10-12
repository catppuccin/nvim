local util = require("catppuccino.utils.util")

local colors = {
	none = "NONE",
	bg = "#20202a", -- nvim bg
	fg = "#9daccd", -- fg color (text)
	fg_gutter = "#3e4058",
	black = "#323448",
	gray = "#2c2e3d",
	red = "#EBB9B9",
	green = "#B1DBA4",
	yellow = "#E6DFB8",
	blue = "#d0dbf7",
	magenta = "#F6BBE7",
	cyan = "#B8DCEB",
	white = "#e6e6f0",
	orange = "#E3CDAA",
	pink = "#F6BBE7",
	black_br = "#41445E",
	red_br = "#E19898",
	green_br = "#99D088",
	yellow_br = "#DBD199",
	blue_br = "#a4bdf4",
	magenta_br = "#F094D9",
	cyan_br = "#97cbe1",
	white_br = "#cdcde1",
	orange_br = "#D9BB8C",
	pink_br = "#DF97DB",
	comment = "#63718B",
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
