local M = {}

local ucolors = require("catppuccin.utils.colors")

function M.get()
	return {
		LeapMatch = { fg = ucolors.brighten(cp.green, 0.3), style = { "underline", "nocombine" } },
		LeapLabelPrimary = {
			fg = cp.base,
			bg = ucolors.brighten(cp.green, 0.3),
			style = { "nocombine" },
		},
		LeapLabelSecondary = { fg = cp.base, bg = cp.sky, style = { "nocombine" } },
	}
end

return M
