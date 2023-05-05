local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.mantle
	local inactive_bg = O.transparent_background and C.none or C.base
	return {
		NeoTreeDirectoryName = { fg = C.blue },
		NeoTreeDirectoryIcon = { fg = C.blue },
		NeoTreeNormal = { fg = C.text, bg = active_bg },
		NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		NeoTreeExpander = { fg = C.overlay0 },
		NeoTreeIndentMarker = { fg = C.overlay0 },
		NeoTreeRootName = { fg = C.blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.pink },

		NeoTreeGitAdded = { fg = C.green },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.red },
		NeoTreeGitIgnored = { fg = C.overlay0 },
		NeoTreeGitModified = { fg = C.yellow },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.blue },
		NeoTreeGitStaged = { fg = C.green },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },

		NeoTreeFileNameOpened = { fg = C.pink },
		NeoTreeDimText = { fg = C.overlay1 },
		NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.lavender, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.base, bg = inactive_bg },
		NeoTreeStatusLineNC = { fg = C.mantle, bg = C.mantle },
	}
end

return M
