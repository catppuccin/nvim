local M = {}

function M.get()
	if O.integrations.telescope.style == "nvchad" then
		return {
			TelescopeBorder = {
				fg = C.mantle, -- Match border color with background
				bg = C.mantle,
			},
			TelescopeMatching = { fg = C.blue },
			TelescopeNormal = {
				bg = C.mantle,
			},
			TelescopePromptBorder = {
				fg = C.surface0, -- Match border color with background
				bg = C.surface0,
			},
			TelescopePromptNormal = {
				fg = C.text,
				bg = C.surface0,
			},
			TelescopePromptPrefix = {
				fg = C.flamingo,
				bg = C.surface0,
			},
			TelescopePreviewTitle = {
				fg = C.base,
				bg = C.green,
			},
			TelescopePromptTitle = {
				fg = C.base,
				bg = C.red,
			},
			TelescopeResultsTitle = {
				fg = C.mantle,
				bg = C.lavender,
			},
			TelescopeSelection = {
				fg = C.text,
				bg = C.surface0,
				style = { "bold" },
			},
			TelescopeSelectionCaret = { fg = C.flamingo },
		}
	end

	return {
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = C.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },
	}
end

return M
