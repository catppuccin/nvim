local M = {}

function M.get()
	local hlgroups = {
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeNormal = { link = "NormalFloat" },
		TelescopePreviewNormal = { link = "TelescopeNormal" },
		TelescopePromptNormal = { link = "TelescopeNormal" },
		TelescopeResultsNormal = { link = "TelescopeNormal" },
		TelescopeTitle = { link = "FloatTitle" },
		TelescopeSelectionCaret = { fg = C.flamingo, bg = C.surface0 },
		TelescopeSelection = {
			fg = C.flamingo,
			bg = C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },
		TelescopePromptPrefix = { fg = C.flamingo },
	}

	if O.float.solid then
		hlgroups["TelescopePreviewTitle"] = {
			fg = C.crust,
			bg = C.green,
		}
		hlgroups["TelescopePromptTitle"] = {
			fg = C.crust,
			bg = C.red,
		}
		hlgroups["TelescopeResultsTitle"] = {
			fg = C.crust,
			bg = C.lavender,
		}
	end

	return hlgroups
end

return M
