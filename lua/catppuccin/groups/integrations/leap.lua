local M = {}

function M.get()
	return {
		LeapMatch = {
			fg = U.vary_color({ latte = "#222222" }, U.brighten(C.green, 0.3)),
			style = { "underline", "nocombine" },
		},
		LeapLabelPrimary = {
			fg = U.vary_color({ latte = "#222222" }, C.base),
			bg = U.vary_color({ latte = U.brighten(C.red, 0.4) }, U.brighten(C.green, 0.3)),
			style = { "nocombine" },
		},
		LeapLabelSecondary = {
			fg = U.vary_color({ latte = "#222222" }, C.base),
			bg = U.vary_color({ latte = U.brighten(C.sky, 0.3) }, C.sky),
			style = { "nocombine" },
		},
	}
end

return M
