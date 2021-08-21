local good, color_scheme = require("catppuccino.core.cs").get_color_scheme(require("catppuccino.config").options["cptcheme"])

if not good then
    print(color_scheme) -- error message
    return
end

local cpt = color_scheme
local catppuccino = {}

catppuccino.normal = {
    left = {{cpt.black, cpt.blue}, {cpt.blue, cpt.bg}},
    middle = {{cpt.blue, cpt.fg_gutter}},
    right = {{cpt.fg_sidebar, cpt.bg_statusline}, {cpt.blue, cpt.bg}},
    error = {{cpt.black, cpt.error}},
    warning = {{cpt.black, cpt.warning}}
}

catppuccino.insert = {
    left = {{cpt.black, cpt.green}, {cpt.blue, cpt.bg}}
}

catppuccino.visual = {
    left = {{cpt.black, cpt.magenta}, {cpt.blue, cpt.bg}}
}

catppuccino.replace = {
    left = {{cpt.black, cpt.red}, {cpt.blue, cpt.bg}}
}

catppuccino.inactive = {
    left = {{cpt.blue, cpt.bg_statusline}, {cpt.comment, cpt.bg}},
    middle = {{cpt.fg_gutter, cpt.bg_statusline}},
    right = {{cpt.fg_gutter, cpt.bg_statusline}, {cpt.comment, cpt.bg}}
}

catppuccino.tabline = {
    left = {{cpt.comment, cpt.bg_highlight}, {cpt.comment, cpt.bg}},
    middle = {{cpt.fg_gutter, cpt.bg_statusline}},
    right = {{cpt.fg_gutter, cpt.bg_statusline}, {cpt.comment, cpt.bg}},
    tabsel = {{cpt.blue, cpt.fg_gutter}, {cpt.comment, cpt.bg}}
}

return catppuccino
