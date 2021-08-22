local M = {}

function M.get(cpt)
    return {
        Sneak = {fg = cpt.bg_highlight, bg = cpt.magenta},
        SneakScope = {bg = cpt.bg_visual}
    }
end

return M
