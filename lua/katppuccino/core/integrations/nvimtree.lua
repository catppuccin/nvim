local M = {}

function M.get(cp)
	local config = require("catppuccino.config").options

	local root_dir_color = cp.katppuccino4

	if config.integrations.nvimtree.show_root then
		root_dir_color = cp.katppuccino9
	end

	return {
		NvimTreeFolderName = { fg = cp.katppuccino9 },
		NvimTreeFolderIcon = { fg = cp.katppuccino9 },
		NvimTreeNormal = { fg = cp.katppuccino10, bg = cp.katppuccino13 },
		NvimTreeOpenedFolderName = { fg = cp.katppuccino9 },
		NvimTreeEmptyFolderName = { fg = cp.katppuccino9 },
		NvimTreeIndentMarker = { fg = cp.katppuccino11 },
		NvimTreeVertSplit = { fg = cp.black, bg = cp.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.katppuccino4 },
		NvimTreeStatuslineNc = { fg = cp.black, bg = cp.black },
		NvimTreeGitDirty = { fg = cp.katppuccino8 },
		NvimTreeGitNew = { fg = cp.katppuccino9 },
		NvimTreeGitDeleted = { fg = cp.katppuccino5 },
		NvimTreeSpecialFile = { fg = cp.katppuccino2 },
		NvimTreeImageFile = { fg = cp.katppuccino10 },
		NvimTreeOpenedFile = { fg = cp.katppuccino4 },
	}
end

return M
