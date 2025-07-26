-- telescope.nvim
local M = {}

function M.get()
	if O.integrations.telescope.style == "nvchad" then
		return {
			TelescopeBorder = {
				fg = C.mantle,
				bg = C.mantle,
			},
			TelescopeMatching = { fg = C.blue },
			TelescopeNormal = {
				bg = C.mantle,
			},
			TelescopePromptBorder = {
				fg = C.surface0,
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
	elseif O.integrations.telescope.style == "nvchad_outlined" then
		return {
			TelescopeBorder = {
				fg = C.surface2,
				bg = C.none,
			},
			TelescopeMatching = { fg = C.blue },
			TelescopeNormal = {
				bg = C.none,
			},
			TelescopePromptBorder = {
				fg = C.surface2,
				bg = C.none,
			},
			TelescopePromptNormal = {
				fg = C.text,
				bg = C.none,
			},
			TelescopePromptPrefix = {
				fg = C.flamingo,
				bg = C.none,
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
		TelescopeNormal = { link = "NormalFloat" },
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
