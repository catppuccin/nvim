local M = {}

function M.get()
	return {
		SnacksNormal = { fg = C.text, bg = C.base },
		SnacksBorder = { fg = C.overlay0, bg = C.base },
		SnacksTitle = { fg = C.text, bg = C.base, style = { "bold" } },
		SnacksFooter = { fg = C.overlay0, bg = C.base },
		SnacksBackdrop = { fg = C.base, bg = C.base },
		
		-- Notifier highlights
		SnacksNotifierInfo = { fg = C.blue, bg = C.base },
		SnacksNotifierWarn = { fg = C.peach, bg = C.base },
		SnacksNotifierError = { fg = C.red, bg = C.base },
		SnacksNotifierDebug = { fg = C.teal, bg = C.base },
		SnacksNotifierTrace = { fg = C.mauve, bg = C.base },
		SnacksNotifierTitle = { fg = C.text, bg = C.base, style = { "bold" } },
		SnacksNotifierBorder = { fg = C.overlay0, bg = C.base },
		SnacksNotifierIcon = { fg = C.text, bg = C.base },
		SnacksNotifierInfoTitle = { fg = C.blue, bg = C.base, style = { "bold" } },
		SnacksNotifierWarnTitle = { fg = C.peach, bg = C.base, style = { "bold" } },
		SnacksNotifierErrorTitle = { fg = C.red, bg = C.base, style = { "bold" } },
		SnacksNotifierDebugTitle = { fg = C.teal, bg = C.base, style = { "bold" } },
		SnacksNotifierTraceTitle = { fg = C.mauve, bg = C.base, style = { "bold" } },
		SnacksNotifierInfoBorder = { fg = C.blue, bg = C.base },
		SnacksNotifierWarnBorder = { fg = C.peach, bg = C.base },
		SnacksNotifierErrorBorder = { fg = C.red, bg = C.base },
		SnacksNotifierDebugBorder = { fg = C.teal, bg = C.base },
		SnacksNotifierTraceBorder = { fg = C.mauve, bg = C.base },
		SnacksNotifierInfoIcon = { fg = C.blue, bg = C.base },
		SnacksNotifierWarnIcon = { fg = C.peach, bg = C.base },
		SnacksNotifierErrorIcon = { fg = C.red, bg = C.base },
		SnacksNotifierDebugIcon = { fg = C.teal, bg = C.base },
		SnacksNotifierTraceIcon = { fg = C.mauve, bg = C.base },
		
		-- Dashboard highlights
		SnacksDashboard = { fg = C.text, bg = C.base },
		SnacksDashboardDesc = { fg = C.overlay0, bg = C.base },
		SnacksDashboardFile = { fg = C.blue, bg = C.base },
		SnacksDashboardDir = { fg = C.blue, bg = C.base },
		SnacksDashboardFooter = { fg = C.overlay0, bg = C.base },
		SnacksDashboardHeader = { fg = C.text, bg = C.base, style = { "bold" } },
		SnacksDashboardIcon = { fg = C.mauve, bg = C.base },
		SnacksDashboardKey = { fg = C.teal, bg = C.base },
		SnacksDashboardTerminal = { fg = C.green, bg = C.base },
		
		-- Lazygit integration
		SnacksLazygit = { fg = C.text, bg = C.base },
		SnacksLazygitBorder = { fg = C.overlay0, bg = C.base },
		SnacksLazygitNormal = { fg = C.text, bg = C.base },
		SnacksLazygitTitle = { fg = C.text, bg = C.base, style = { "bold" } },
		
		-- Additional terminal/lazygit support
		SnacksTerminal = { fg = C.text, bg = C.base },
		SnacksTerminalBorder = { fg = C.overlay0, bg = C.base },
		SnacksTerminalTitle = { fg = C.text, bg = C.base, style = { "bold" } },
		SnacksWin = { fg = C.text, bg = C.base },
		SnacksWinBar = { fg = C.text, bg = C.base },
		SnacksWinBarNC = { fg = C.overlay0, bg = C.base },
	}
end

return M