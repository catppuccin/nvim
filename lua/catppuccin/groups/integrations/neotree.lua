local M = {}

function M.get()
	local transparent_background = cnf.transparent_background
	local active_bg = transparent_background and "NONE" or cp.mantle
	local inactive_bg = transparent_background and "NONE" or cp.base
	return {
		NeoTreeDirectoryName = { fg = cp.blue },
		NeoTreeDirectoryIcon = { fg = cp.blue },
		NeoTreeNormal = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		NeoTreeExpander = { fg = cp.overlay0 },
		NeoTreeIndentMarker = { fg = cp.overlay0 },
		NeoTreeRootName = { fg = cp.blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = cp.pink },

		NeoTreeGitAdded = { fg = cp.green },
		NeoTreeGitConflict = { fg = cp.red },
		NeoTreeGitDeleted = { fg = cp.red },
		NeoTreeGitIgnored = { fg = cp.overlay0 },
		NeoTreeGitModified = { fg = cp.yellow },
		NeoTreeGitUnstaged = { fg = cp.red },
		NeoTreeGitUntracked = { fg = cp.blue },
		NeoTreeGitStaged = { fg = cp.green },

		NeoTreeFileNameOpened = { fg = cp.pink },
		NeoTreeDimText = { fg = cp.overlay1 },
		NeoTreeFilterTerm = { fg = cp.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = cp.lavender, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = cp.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = cp.base, bg = cnf.transparent_background and cp.none or cp.base },
		NeoTreeStatusLineNC = { fg = cp.mantle, bg = cp.mantle },
	}
end

return M
