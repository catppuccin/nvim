local M = {}

function M.get(cpt)
    return {
        WhichKey = {fg = cpt.cyan},
        WhichKeyGroup = {fg = cpt.blue},
        WhichKeyDesc = {fg = cpt.magenta},
        WhichKeySeperator = {fg = cpt.comment},
        WhichKeySeparator = {fg = cpt.comment},
        WhichKeyFloat = {bg = cpt.bg_sidebar},
        WhichKeyValue = {fg = cpt.comment}
    }
end

return M
