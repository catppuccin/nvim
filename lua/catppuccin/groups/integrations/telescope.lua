local M = {}

function M.get()
	return {
		TelescopeBorder = { fg = C.blue },
		TelescopeSelectionCaret = { fg = C.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },
		-- TelescopePromptPrefix = { bg = C.crust },
		-- TelescopePromptNormal = { bg = C.crust },
		-- TelescopeResultsNormal = { bg = C.mantle },
		-- TelescopePreviewNormal = { bg = C.crust },
		-- TelescopePromptBorder = { bg = C.crust, fg = C.crust },
		-- TelescopeResultsBorder = { bg = C.mantle, fg = C.crust },
		-- TelescopePreviewBorder = { bg = C.crust, fg = C.crust },
		-- TelescopePromptTitle = { fg = C.crust },
		-- TelescopeResultsTitle = { fg = C.text },
		-- TelescopePreviewTitle = { fg = C.crust },
	}
end

return M
