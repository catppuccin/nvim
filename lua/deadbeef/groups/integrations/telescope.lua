local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

function M.get()
	local normal_bg = O.transparent_background and C.none or C.surface0
	return {
		TelescopeNormal = { fg = C.text, bg = normal_bg },
		TelescopeBorder = { fg = C.overlay1, bg = normal_bg },
		TelescopeTitle = { fg = C.text, bg = normal_bg, style = { "bold" } },

		-- Prompt
		TelescopePromptNormal = { fg = C.text, bg = normal_bg },
		TelescopePromptBorder = { fg = C.overlay1, bg = normal_bg },
		TelescopePromptTitle = { fg = C.text, bg = normal_bg, style = { "bold" } },
		TelescopePromptPrefix = { fg = C.blue, bg = normal_bg },
		TelescopePromptCounter = { fg = C.overlay1, bg = normal_bg },

		-- Results
		TelescopeResultsNormal = { fg = C.text, bg = normal_bg },
		TelescopeResultsBorder = { fg = C.overlay1, bg = normal_bg },
		TelescopeResultsTitle = { fg = C.text, bg = normal_bg, style = { "bold" } },

		-- Preview
		TelescopePreviewNormal = { fg = C.text, bg = normal_bg },
		TelescopePreviewBorder = { fg = C.overlay1, bg = normal_bg },
		TelescopePreviewTitle = { fg = C.text, bg = normal_bg, style = { "bold" } },

		-- Selection and matching
		TelescopeSelection = { fg = C.text, bg = C.surface1, style = { "bold" } },
		TelescopeSelectionCaret = { fg = C.blue, bg = C.surface1 },
		TelescopeMultiSelection = { fg = C.teal, bg = C.surface1 },
		TelescopeMatching = { fg = C.yellow, style = { "bold" } },

		-- Various result types
		TelescopeResultsClass = { fg = C.mauve },
		TelescopeResultsConstant = { fg = C.red },
		TelescopeResultsField = { fg = C.teal },
		TelescopeResultsFunction = { fg = C.green },
		TelescopeResultsMethod = { fg = C.green },
		TelescopeResultsOperator = { fg = C.teal },
		TelescopeResultsStruct = { fg = C.mauve },
		TelescopeResultsVariable = { fg = C.blue },
		TelescopeResultsLineNr = { fg = C.overlay1 },
		TelescopeResultsIdentifier = { fg = C.blue },
		TelescopeResultsNumber = { fg = C.red },
		TelescopeResultsComment = { fg = C.overlay2, style = { "italic" } },
		TelescopeResultsSpecialComment = { fg = C.overlay2, style = { "italic" } },

		-- File browser
		TelescopeResultsDiffAdd = { fg = C.green },
		TelescopeResultsDiffChange = { fg = C.yellow },
		TelescopeResultsDiffDelete = { fg = C.red },
	}
end

return M