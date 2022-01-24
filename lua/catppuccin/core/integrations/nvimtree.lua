local M = {}

function M.get(cp)
	local config = require("catppuccin.config").options
	local nvimtree = config.integrations.nvimtree

	local root_dir_color = cp.pink

	if nvimtree.show_root then
		root_dir_color = cp.blue
	end

	return {
		NvimTreeFolderName = { fg = cp.blue },
		NvimTreeFolderIcon = { fg = cp.blue },
		NvimTreeNormal = { fg = cp.white, bg = nvimtree.transparent_panel and "NONE" or cp.black1 },
		NvimTreeOpenedFolderName = { fg = cp.blue },
		NvimTreeEmptyFolderName = { fg = cp.blue },
		NvimTreeIndentMarker = { fg = cp.gray0 },
		NvimTreeVertSplit = { fg = cp.black2, bg = cp.black2 },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.pink },
		NvimTreeStatuslineNc = { fg = cp.black1, bg = cp.black1 },
		NvimTreeGitDirty = { fg = cp.yellow },
		NvimTreeGitNew = { fg = cp.blue },
		NvimTreeGitDeleted = { fg = cp.red },
		NvimTreeSpecialFile = { fg = cp.flamingo },
		NvimTreeImageFile = { fg = cp.white },
		NvimTreeOpenedFile = { fg = cp.pink },
	}
end

return M
