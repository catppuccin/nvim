local M = {}

function M.get(cpt)
	local config = require("catppuccino.config").options

	local root_dir_color = cpt.bg_sidebar

	if config.integrations.nvimtree.show_root then
		root_dir_color = cpt.blue
	end

	return {
		NvimTreeFolderName = { fg = cpt.blue },
		NvimTreeFolderIcon = { fg = cpt.blue },
		NvimTreeNormal = { fg = cpt.fg, bg = cpt.bg_sidebar },
		NvimTreeOpenedFolderName = { fg = cpt.blue },
		NvimTreeEmptyFolderName = { fg = cpt.blue_br },
		NvimTreeIndentMarker = { fg = cpt.comment },
		NvimTreeVertSplit = { fg = cpt.black, bg = cpt.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cpt.magenta },
		NvimTreeStatuslineNc = { fg = cpt.black, bg = cpt.black },
		NvimTreeGitDirty = { fg = cpt.diff.change },
		NvimTreeGitNew = { fg = cpt.diff.add },
		NvimTreeGitDeleted = { fg = cpt.diff.delete },
		NvimTreeSpecialFile = { fg = cpt.cyan },
		NvimTreeImageFile = { fg = cpt.fg_sidebar },
		NvimTreeOpenedFile = { fg = cpt.magenta },
	}
end

return M
