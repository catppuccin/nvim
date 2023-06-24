local M = {}

-- Backwards compatibility
if type(O.integrations.telescope) == "boolean" then
	O.integrations.telescope = {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
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

function M.get()
	if O.integrations.telescope.style == 'classic' then
		-- Classic look
		return {
			-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
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

	if O.integrations.telescope.style == 'nvchad' then
		-- Flat look
		return {
			TelescopePromptPrefix = {
				bg = C.crust
			},
			TelescopeSelectionCaret = {
				fg = C.rosewater,
				bg = C.surface1,
				bold = true
			},
			TelescopePromptNormal = {
				bg = C.crust
			},
			TelescopeResultsNormal = {
				bg = C.mantle
			},
			TelescopePreviewNormal = {
				bg = C.mantle
			},
			TelescopePromptBorder = {
				bg = C.crust,
				fg = C.crust
			},
			TelescopeResultsBorder = {
				bg = C.mantle,
				fg = C.mantle
			},
			TelescopePreviewBorder = {
				bg = C.mantle,
				fg = C.mantle
			},
			TelescopePromptTitle = {
				bg = C.rosewater,
				fg = C.base,
				bold = true
			},
			TelescopeResultsTitle = {
				bg = C.rosewater,
				fg = C.base,
				bold = true
			},
			TelescopePreviewTitle = {
				bg = C.lavender,
				fg = C.base,
				bold = true
			},
		}
	end
end

return M
