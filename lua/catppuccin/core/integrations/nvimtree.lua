local M = {}

function M.get(cp)
	local config = require("catppuccin.config").options

	local root_dir_color = cp.catppuccin4

	if config.integrations.nvimtree.show_root then
		root_dir_color = cp.catppuccin9
	end

	return {
		NvimTreeFolderName = { fg = cp.catppuccin9 },
		NvimTreeFolderIcon = { fg = cp.catppuccin9 },
		NvimTreeNormal = { fg = cp.catppuccin10, bg = cp.catppuccin14 },
		NvimTreeOpenedFolderName = { fg = cp.catppuccin9 },
		NvimTreeEmptyFolderName = { fg = cp.catppuccin9 },
		NvimTreeIndentMarker = { fg = cp.catppuccin11 },
		NvimTreeVertSplit = { fg = cp.black, bg = cp.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.catppuccin4 },
		NvimTreeStatuslineNc = { fg = cp.black, bg = cp.black },
		NvimTreeGitDirty = { fg = cp.catppuccin8 },
		NvimTreeGitNew = { fg = cp.catppuccin9 },
		NvimTreeGitDeleted = { fg = cp.catppuccin5 },
		NvimTreeSpecialFile = { fg = cp.catppuccin2 },
		NvimTreeImageFile = { fg = cp.catppuccin10 },
		NvimTreeOpenedFile = { fg = cp.catppuccin4 },
	}
end

return M
