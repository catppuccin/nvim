local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

function M.get()
	local sidebar_bg = O.transparent_background and C.none or C.mantle  -- #242837
	local active_bg = sidebar_bg
	local inactive_bg = sidebar_bg
	return {
		-- Main tree display
		NeoTreeDirectoryName = { fg = C.blue },
		NeoTreeDirectoryIcon = { fg = C.blue },
		NeoTreeNormal = { fg = C.text, bg = active_bg },
		NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		NeoTreeExpander = { fg = C.overlay0 },
		NeoTreeIndentMarker = { fg = C.overlay0 },
		NeoTreeRootName = { fg = C.blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.pink },
		NeoTreeModified = { fg = C.peach },
		NeoTreeFileName = { fg = C.text },
		NeoTreeFileIcon = { fg = C.text },
		NeoTreeFileNameOpened = { fg = C.pink },
		NeoTreeDimText = { fg = C.overlay1 },
		NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		NeoTreeDotfile = { fg = C.overlay1 },

		-- Additional background fixes
		NeoTreeCursorLine = { bg = C.surface0 },
		NeoTreeSignColumn = { fg = C.text, bg = active_bg },
		NeoTreeFoldColumn = { fg = C.overlay0, bg = active_bg },
		NeoTreeLineNr = { fg = C.overlay0, bg = active_bg },
		NeoTreeCursorLineNr = { fg = C.text, bg = active_bg },

		-- Git status
		NeoTreeGitAdded = { fg = C.green },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.red },
		NeoTreeGitIgnored = { fg = C.overlay0 },
		NeoTreeGitModified = { fg = C.yellow },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.mauve },
		NeoTreeGitStaged = { fg = C.green },

		-- Float/popup styles
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.base, bg = C.blue },

		-- Tabs
		NeoTreeTabActive = { bg = active_bg, fg = C.text, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },

		-- Window and buffer areas - use sidebar background
		NeoTreeVertSplit = { fg = C.mantle, bg = active_bg },
		NeoTreeWinSeparator = { fg = C.mantle, bg = active_bg },
		NeoTreeStatusLine = { fg = C.text, bg = active_bg },
		NeoTreeStatusLineNC = { fg = C.overlay0, bg = active_bg },
		NeoTreeEndOfBuffer = { fg = C.mantle, bg = active_bg },
		
		-- Additional window management
		NeoTreeBufferName = { fg = C.text, bg = active_bg },
		NeoTreeBufferNumber = { fg = C.overlay0, bg = active_bg },
		NeoTreeCursorColumn = { bg = active_bg },
		NeoTreeColorColumn = { bg = active_bg },
		
		-- Ensure neo-tree sidebar has correct background
		NeoTreeSidebar = { bg = active_bg },
		NeoTreeWindow = { bg = active_bg },
	}
end

return M