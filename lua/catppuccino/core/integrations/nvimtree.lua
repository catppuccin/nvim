local M = {}

function M.get(cp)
	local config = require("catppuccino.config").options

	local root_dir_color = cp.bg_sidebar

	if config.integrations.nvimtree.show_root then
		root_dir_color = cp.blue
	end

	return {
		NvimTreeFolderName = { fg = cp.blue },
		NvimTreeFolderIcon = { fg = cp.blue },
		NvimTreeNormal = { fg = cp.fg, bg = cp.bg_sidebar },
		NvimTreeOpenedFolderName = { fg = cp.blue },
		NvimTreeEmptyFolderName = { fg = cp.blue_br },
		NvimTreeIndentMarker = { fg = cp.comment },
		NvimTreeVertSplit = { fg = cp.black, bg = cp.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.magenta },
		NvimTreeStatuslineNc = { fg = cp.black, bg = cp.black },
		NvimTreeGitDirty = { fg = cp.diff.change },
		NvimTreeGitNew = { fg = cp.diff.add },
		NvimTreeGitDeleted = { fg = cp.diff.delete },
		NvimTreeSpecialFile = { fg = cp.cyan },
		NvimTreeImageFile = { fg = cp.fg_sidebar },
		NvimTreeOpenedFile = { fg = cp.magenta },
	}
end

return M
