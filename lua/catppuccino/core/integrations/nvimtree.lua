local M = {}

function M.get(cpt)
    local config = require("catppuccino.config").options
    local rootFolderColor = cpt.black
    if
      config.integrations
      and config.integrations.nvimtree
      and type(config.integrations.nvimtree) == "table"
      and config.integrations.nvimtree.show_root
    then
      rootFolderColor = cpt.blue
    end

    return {
        NvimTreeFolderName = {fg = cpt.blue},
        NvimTreeFolderIcon = {fg = cpt.blue},
        NvimTreeNormal = {fg = cpt.fg, bg = cpt.bg_sidebar},
        NvimTreeOpenedFolderName = {fg = cpt.blue},
        NvimTreeEmptyFolderName = {fg = cpt.blue_br},
        NvimTreeIndentMarker = {fg = cpt.comment},
        NvimTreeVertSplit = {fg = cpt.black, bg = cpt.black},
        NvimTreeRootFolder = {fg = rootFolderColor, style = "bold"},
        NvimTreeSymlink = {fg = cpt.magenta},
        NvimTreeStatuslineNc = {fg = cpt.black, bg = cpt.black},
        NvimTreeGitDirty = {fg = cpt.git.change},
        NvimTreeGitNew = {fg = cpt.git.add},
        NvimTreeGitDeleted = {fg = cpt.git.delete},
        NvimTreeSpecialFile = {fg = cpt.cyan},
        NvimTreeImageFile = {fg = cpt.fg_sidebar},
        NvimTreeOpenedFile = {fg = cpt.magenta}
    }
end

return M
