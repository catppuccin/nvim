local M = {}

function M.get()
	return {
		NeoTreeDirectoryName = { fg = cp.blue },
		NeoTreeDirectoryIcon = { fg = cp.blue },
		NeoTreeNormal = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		NeoTreeIndentMarker = { fg = cp.overlay0 },
		NeoTreeRootName = { fg = cp.pink, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = cp.pink },
		NeoTreeGitModified = { fg = cp.yellow },
		NeoTreeUntracked = { fg = cp.blue },
		NeoTreeFileNameOpened = { fg = cp.pink },
	}
end

return M
