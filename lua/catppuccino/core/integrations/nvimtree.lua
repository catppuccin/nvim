local M = {}

function M.get(cp)
	local config = require("catppuccino.config").options

	local root_dir_color = cp.catppuccino5

	if config.integrations.nvimtree.show_root then
		root_dir_color = cp.catppuccino10
	end

	return {
		NvimTreeFolderName = { fg = cp.catppuccino10 },
		NvimTreeFolderIcon = { fg = cp.catppuccino10 },
		NvimTreeNormal = { fg = cp.catppuccino11, bg = cp.catppuccino14 },
		NvimTreeOpenedFolderName = { fg = cp.catppuccino10 },
		NvimTreeEmptyFolderName = { fg = cp.catppuccino10 },
		NvimTreeIndentMarker = { fg = cp.catppuccino12 },
		NvimTreeVertSplit = { fg = cp.black, bg = cp.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.catppuccino5 },
		NvimTreeStatuslineNc = { fg = cp.black, bg = cp.black },
		NvimTreeGitDirty = { fg = cp.catppuccino9 },
		NvimTreeGitNew = { fg = cp.catppuccino10 },
		NvimTreeGitDeleted = { fg = cp.catppuccino6 },
		NvimTreeSpecialFile = { fg = cp.catppuccino3 },
		NvimTreeImageFile = { fg = cp.catppuccino11 },
		NvimTreeOpenedFile = { fg = cp.catppuccino5 },
	}
end

return M
