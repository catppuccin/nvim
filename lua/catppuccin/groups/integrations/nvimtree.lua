local M = {}

function M.get()
	return {
		NvimTreeFolderName = { fg = C.blue },
		NvimTreeFolderIcon = { fg = C.blue },
		NvimTreeNormal = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		NvimTreeOpenedFolderName = { fg = C.blue },
		NvimTreeEmptyFolderName = { fg = C.blue },
		NvimTreeIndentMarker = { fg = C.overlay0 },
		NvimTreeWinSeparator = {
			fg = O.transparent_background and C.surface1 or C.base,
			bg = O.transparent_background and C.none or C.base,
		},
		NvimTreeRootFolder = { fg = C.lavender, style = { "bold" } },
		NvimTreeSymlink = { fg = C.pink },
		NvimTreeStatuslineNc = { fg = C.mantle, bg = C.mantle },
		NvimTreeGitDirty = { fg = C.yellow },
		NvimTreeGitNew = { fg = C.blue },
		NvimTreeGitDeleted = { fg = C.red },
		NvimTreeSpecialFile = { fg = C.flamingo },
		NvimTreeImageFile = { fg = C.text },
		NvimTreeOpenedFile = { fg = C.pink },
	}
end

return M
