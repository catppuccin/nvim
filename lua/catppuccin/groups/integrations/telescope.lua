local M = {}

function M.get()
	return {
		TelescopeBorder = { fg = cp.blue },
		TelescopeSelectionCaret = { fg = cp.flamingo },
		TelescopeSelection = {
			fg = cnf.transparent_background and cp.flamingo or cp.text,
			bg = cnf.transparent_background and cp.none or cp.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = cp.blue },
		-- TelescopePromptPrefix = { bg = cp.crust },
		-- TelescopePromptNormal = { bg = cp.crust },
		-- TelescopeResultsNormal = { bg = cp.mantle },
		-- TelescopePreviewNormal = { bg = cp.crust },
		-- TelescopePromptBorder = { bg = cp.crust, fg = cp.crust },
		-- TelescopeResultsBorder = { bg = cp.mantle, fg = cp.crust },
		-- TelescopePreviewBorder = { bg = cp.crust, fg = cp.crust },
		-- TelescopePromptTitle = { fg = cp.crust },
		-- TelescopeResultsTitle = { fg = cp.text },
		-- TelescopePreviewTitle = { fg = cp.crust },
	}
end

return M
