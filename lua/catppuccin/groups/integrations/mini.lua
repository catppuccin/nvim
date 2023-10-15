local M = {}

function M.get()
	local transparent_background = require("catppuccin").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.base

	local inactive_bg = transparent_background and "NONE" or C.mantle

	local indentscope_color = O.integrations.mini.indentscope_color
	return {
		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { style = { "underline" } },
		MiniCursorwordCurrent = { style = { "underline" } },

		MiniIndentscopeSymbol = { fg = C[indentscope_color] or C.text },
		MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible

		MiniJump = { fg = C.overlay2, bg = C.pink },

		MiniJump2dSpot = { bg = C.base, fg = C.peach, style = { "bold", "underline" } },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.yellow, style = { "italic" } },
		MiniStarterHeader = { fg = C.blue },
		MiniStarterInactive = { fg = C.surface2, style = O.styles.comments },
		MiniStarterItem = { fg = C.text },
		MiniStarterItemBullet = { fg = C.blue },
		MiniStarterItemPrefix = { fg = C.pink },
		MiniStarterSection = { fg = C.flamingo },
		MiniStarterQuery = { fg = C.green },

		MiniStatuslineDevinfo = { fg = C.subtext1, bg = C.surface1 },
		MiniStatuslineFileinfo = { fg = C.subtext1, bg = C.surface1 },
		MiniStatuslineFilename = { fg = C.text, bg = C.mantle },
		MiniStatuslineInactive = { fg = C.blue, bg = C.mantle },
		MiniStatuslineModeCommand = { fg = C.base, bg = C.peach, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.base, bg = C.green, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.mantle, bg = C.blue, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.base, bg = C.teal, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.base, bg = C.red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.base, bg = C.mauve, style = { "bold" } },

		MiniSurround = { bg = C.pink, fg = C.surface1 },

		MiniTablineCurrent = { fg = C.text, bg = C.base, sp = C.red, style = { "bold", "italic", "underline" } },
		MiniTablineFill = { bg = bg_highlight },
		MiniTablineHidden = { fg = C.text, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = C.red, bg = C.none, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.red, bg = C.none },
		MiniTablineModifiedVisible = { fg = C.red, bg = C.none },
		MiniTablineTabpagesection = { fg = C.surface1, bg = C.base },
		MiniTablineVisible = { bg = C.none },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.red, style = { "bold" } },
		MiniTestPass = { fg = C.green, style = { "bold" } },

		MiniTrailspace = { bg = C.red },
	}
end

return M
