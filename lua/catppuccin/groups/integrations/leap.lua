local M = {}

function M.get()
	return {
		LeapMatch = {
			fg = O.transparent_background and C.pink or U.vary_color({ latte = "#222222" }, U.brighten(C.green, 0.3)),
			style = { "underline", "nocombine" },
			bold = O.transparent_background,
		},
		LeapLabelPrimary = {
			fg = O.transparent_background and C.green or U.vary_color({ latte = "#222222" }, C.base),
			bg = O.transparent_background and C.none
				or U.vary_color({ latte = U.brighten(C.red, 0.4) }, U.brighten(C.green, 0.3)),
			style = { "nocombine" },
			bold = O.transparent_background,
		},
		LeapLabelSecondary = {
			fg = O.transparent_background and C.blue or U.vary_color({ latte = "#222222" }, C.base),
			bg = O.transparent_background and C.none or U.vary_color({ latte = U.brighten(C.sky, 0.3) }, C.sky),
			style = { "nocombine" },
			bold = O.transparent_background,
		},
		LeapBackdrop = { fg = O.transparent_background and C.overlay0 or C.none },
	}
end

return M
