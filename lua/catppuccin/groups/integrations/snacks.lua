local M = {}

-- only applicable with `picker_style = "nvchad"`
-- ```lua
-- require("snacks").setup({
--   picker = {
--     layout = {
--       layout = require("catppuccin.groups.integrations.snacks").get_layout(),
--     },
--   },
-- })
-- ```
function M.get_layout()
	return {
		box = "horizontal",
		border = "none",
		{
			box = "vertical",
			{
				win = "input",
				title = " {source} {live} ",
				title_pos = "center",
				border = "solid",
				height = 1,
			},
			{
				win = "list",
				title = "  Results  ",
				title_pos = "center",
				border = "solid",
			},
		},
		{
			win = "preview",
			width = 0.45,
			title_pos = "center",
		},
	}
end

function M.get()
	local indent_scope_color = O.integrations.snacks.indent_scope_color
	local picker_style = O.integrations.snacks.picker_style
	local nvchad_style = picker_style == "nvchad"

	return {
		SnacksNormal = { link = "NormalFloat" },
		SnacksWinBar = { link = "Title" },
		SnacksBackdrop = { fg = C.overlay0 },
		SnacksNormalNC = { link = "NormalFloat" },
		SnacksWinBarNC = { link = "SnacksWinBar" },

		SnacksNotifierInfo = { fg = C.blue },
		SnacksNotifierIconInfo = { fg = C.blue },
		SnacksNotifierTitleInfo = { fg = C.blue, style = { "italic" } },
		SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
		SnacksNotifierBorderInfo = { fg = C.blue },
		SnacksNotifierWarn = { fg = C.yellow },
		SnacksNotifierIconWarn = { fg = C.yellow },
		SnacksNotifierTitleWarn = { fg = C.yellow, style = { "italic" } },
		SnacksNotifierBorderWarn = { fg = C.yellow },
		SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
		SnacksNotifierDebug = { fg = C.peach },
		SnacksNotifierIconDebug = { fg = C.peach },
		SnacksNotifierTitleDebug = { fg = C.peach, style = { "italic" } },
		SnacksNotifierBorderDebug = { fg = C.peach },
		SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
		SnacksNotifierError = { fg = C.red },
		SnacksNotifierIconError = { fg = C.red },
		SnacksNotifierTitleError = { fg = C.red, style = { "italic" } },
		SnacksNotifierBorderError = { fg = C.red },
		SnacksNotifierFooterError = { link = "DiagnosticError" },
		SnacksNotifierTrace = { fg = C.rosewater },
		SnacksNotifierIconTrace = { fg = C.rosewater },
		SnacksNotifierTitleTrace = { fg = C.rosewater, style = { "italic" } },
		SnacksNotifierBorderTrace = { fg = C.rosewater },
		SnacksNotifierFooterTrace = { link = "DiagnosticHint" },

		SnacksDashboardNormal = { link = "Normal" },
		SnacksDashboardDesc = { fg = C.blue },
		SnacksDashboardFile = { fg = C.lavender },
		SnacksDashboardDir = { link = "NonText" },
		SnacksDashboardFooter = { fg = C.yellow, style = { "italic" } },
		SnacksDashboardHeader = { fg = C.blue },
		SnacksDashboardIcon = { fg = C.pink, bold = true },
		SnacksDashboardKey = { fg = C.peach },
		SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
		SnacksDashboardSpecial = { link = "Special" },
		SnacksDashboardTitle = { link = "Title" },

		SnacksIndent = { fg = C.surface0 },
		SnacksIndentScope = { fg = C[indent_scope_color] or C.text },

		SnacksPicker = nvchad_style and {
			bg = O.transparent_background and C.none or C.mantle,
		} or { link = "NormalFloat" },
		SnacksPickerInputBorder = nvchad_style and {
			fg = O.transparent_background and C.blue or C.surface0,
			bg = O.transparent_background and C.none or C.surface0,
		} or { link = "SnacksPickerBorder" },
		SnacksPickerInput = nvchad_style and {
			fg = C.text,
			bg = O.transparent_background and C.none or C.surface0,
		} or {},
		SnacksPickerPrompt = nvchad_style and {
			fg = C.flamingo,
			bg = O.transparent_background and C.none or C.surface0,
		} or {},
		SnacksPickerPreviewTitle = nvchad_style and {
			fg = O.transparent_background and C.green or C.crust,
			bg = O.transparent_background and C.none or C.green,
		} or {},
		SnacksPickerInputTitle = nvchad_style and {
			fg = O.transparent_background and C.red or C.crust,
			bg = O.transparent_background and C.none or C.red,
		} or {},
		SnacksPickerListTitle = nvchad_style and {
			fg = O.transparent_background and C.lavender or C.crust,
			bg = O.transparent_background and C.none or C.lavender,
		} or {},

		SnacksPickerBorder = nvchad_style and {
			fg = O.transparent_background and C.blue or C.mantle,
			bg = O.transparent_background and C.none or C.mantle,
		} or { link = "FloatBorder" },
		SnacksPickerSelected = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		SnacksPickerMatch = { fg = C.blue },
	}
end

return M
