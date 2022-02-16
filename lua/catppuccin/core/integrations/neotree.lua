local M = {}

function M.get(cp)
	local config = require("catppuccin.config").options
	local neotree = config.integrations.neotree

	local root_dir_color = cp.pink

	if neotree.show_root then
		root_dir_color = cp.blue
	end

	return {
		NeoTreeDirectoryName = { fg = cp.blue },
		NeoTreeDirectoryIcon = { fg = cp.blue },
		NeoTreeNormal = { fg = cp.white, bg = neotree.transparent_panel and "NONE" or cp.black1 },
		NeoTreeIndentMarker = { fg = cp.gray0 },
		NeoTreeRootName = { fg = root_dir_color, style = "bold" },
		NeoTreeSymbolicLinkTarget = { fg = cp.pink },
		NeoTreeGitModified = { fg = cp.yellow },
		NeoTreeUntracked = { fg = cp.blue },
		NeoTreeFileNameOpened = { fg = cp.pink },
	}
end

return M
