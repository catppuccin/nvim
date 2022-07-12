local M = {}

function M.get(cp)
	local transparent_background = require("catppuccin.config").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or cp.base

	local inactive_bg = transparent_background and "NONE" or cp.mantle

	return {
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { style = "underline" },
		MiniCursorwordCurrent = { style = "underline" },

		MiniIndentscopeSymbol = { fg = cp.text },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = cp.overlay2, bg = cp.pink },

		MiniJump2dSpot = { bg = cp.base, fg = cp.peach, style = { "bold", "underline" } },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = cp.yellow, style = "italic" },
		MiniStarterHeader = { fg = cp.blue },
		MiniStarterInactive = { fg = cp.surface2, style = cnf.styles.comments },
		MiniStarterItem = { fg = cp.text },
		MiniStarterItemBullet = { fg = cp.blue },
		MiniStarterItemPrefix = { fg = cp.pink },
		MiniStarterSection = { fg = cp.flamingo },
		MiniStarterQuery = { fg = cp.green },

		MiniStatuslineDevinfo = { fg = cp.subtext1, bg = cp.surface1 },
		MiniStatuslineFileinfo = { fg = cp.subtext1, bg = cp.surface1 },
		MiniStatuslineFilename = { fg = cp.text, bg = cp.mantle },
		MiniStatuslineInactive = { fg = cp.blue, bg = cp.mantle },
		MiniStatuslineModeCommand = { fg = cp.base, bg = cp.peach, style = "bold" },
		MiniStatuslineModeInsert = { fg = cp.base, bg = cp.green, style = "bold" },
		MiniStatuslineModeNormal = { fg = cp.mantle, bg = cp.blue, style = "bold" },
		MiniStatuslineModeOther = { fg = cp.base, bg = cp.teal, style = "bold" },
		MiniStatuslineModeReplace = { fg = cp.base, bg = cp.red, style = "bold" },
		MiniStatuslineModeVisual = { fg = cp.base, bg = cp.mauve, style = "bold" },

		MiniSurround = { bg = cp.pink, fg = cp.surface1 },

		MiniTablineCurrent = { fg = cp.text, bg = cp.base, style = { "bold", "italic" } },
		MiniTablineFill = { bg = bg_highlight },
		MiniTablineHidden = { fg = cp.text, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = cp.base, bg = cp.text, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = inactive_bg, bg = cp.text },
		MiniTablineModifiedVisible = { fg = cp.surface1, bg = cp.subtext1 },
		MiniTablineTabpagesection = { fg = cp.surface1, bg = cp.base },
		MiniTablineVisible = { fg = cp.subtext1, bg = cp.surface1 },

		MiniTestEmphasis = { style = "bold" },
		MiniTestFail = { fg = cp.red, style = "bold" },
		MiniTestPass = { fg = cp.green, style = "bold" },

		MiniTrailspace = { bg = cp.red },
	}
end

return M
