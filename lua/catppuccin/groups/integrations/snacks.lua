local M = {}

-- only applicable with `picker_style = "nvchad" or "nvchad_outlined"`
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
	local nvchad_style = picker_style == "nvchad" or picker_style == "nvchad_outlined"

	local hlgroups = {
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

		SnacksPickerSelected = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		SnacksPickerMatch = { fg = C.blue },
	}

	if nvchad_style then
		hlgroups["SnacksPicker"] = {
			bg = C.mantle,
		}
		hlgroups["SnacksPickerBorder"] = {
			fg = C.mantle,
			bg = C.mantle,
		}
		hlgroups["SnacksPickerInputBorder"] = {
			fg = C.mantle,
			bg = C.mantle,
		}
		hlgroups["SnacksPickerInput"] = {
			fg = C.text,
			bg = C.mantle,
		}
		hlgroups["SnacksPickerPrompt"] = {
			fg = C.flamingo,
			bg = C.none,
		}
		hlgroups["SnacksPickerTitle"] = {
			fg = C.crust,
			bg = C.mauve,
		}
		hlgroups["SnacksPickerPreviewTitle"] = {
			fg = C.crust,
			bg = C.green,
		}
		hlgroups["SnacksPickerInputTitle"] = {
			fg = C.crust,
			bg = C.red,
		}
		hlgroups["SnacksPickerListTitle"] = {
			fg = C.crust,
			bg = C.lavender,
		}

		if picker_style == 'nvchad_outlined' then
			hlgroups["SnacksPicker"] = {
				bg = C.none,
			}
			hlgroups["SnacksPickerBorder"] = {
				fg = C.surface2,
				bg = C.none,
			}
			hlgroups["SnacksPickerInputBorder"] = {
				fg = C.surface2,
				bg = C.none,
			}
			hlgroups["SnacksPickerInput"] = {
				fg = C.text,
				bg = C.none,
			}
		end
	else
		hlgroups["SnacksPicker"] = { link = "NormalFloat" }
		hlgroups["SnacksPickerBorder"] = { link = "FloatBorder" }
		hlgroups["SnacksPickerInputBorder"] = { link = "SnacksPickerBorder" }
		hlgroups["SnacksPickerInput"] = {
			fg = C.text,
			bg = C.none,
		}
		hlgroups["SnacksPickerPrompt"] = {
			fg = C.flamingo,
			bg = C.none,
		}
	end

	return hlgroups
end

return M
