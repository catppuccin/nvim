local M = {}

function M.get()
	return {
		NvimTreeFolderName = { fg = cp.blue },
		NvimTreeFolderIcon = { fg = cp.blue },
		NvimTreeNormal = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		NvimTreeOpenedFolderName = { fg = cp.blue },
		NvimTreeEmptyFolderName = { fg = cp.blue },
		NvimTreeIndentMarker = { fg = cp.overlay0 },
		NvimTreeVertSplit = { fg = cp.base, bg = cnf.transparent_background and cp.none or cp.base },
		NvimTreeRootFolder = { fg = cp.blue, style = { "bold" } },
		NvimTreeSymlink = { fg = cp.pink },
		NvimTreeStatuslineNc = { fg = cp.mantle, bg = cp.mantle },
		NvimTreeGitDirty = { fg = cp.yellow },
		NvimTreeGitNew = { fg = cp.blue },
		NvimTreeGitDeleted = { fg = cp.red },
		NvimTreeSpecialFile = { fg = cp.flamingo },
		NvimTreeImageFile = { fg = cp.text },
		NvimTreeOpenedFile = { fg = cp.pink },
	}
end

return M
