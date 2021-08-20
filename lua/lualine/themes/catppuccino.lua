local cpt = require("catppuccino.core.cs").get_color_scheme(require("catppuccino.config").options["colorscheme"])
local catppuccino = {}

catppuccino.normal = {
    a = {bg = cpt.blue, fg = cpt.black},
    b = {bg = cpt.fg_gutter, fg = cpt.blue},
    c = {bg = cpt.bg_statusline, fg = cpt.fg_sidebar}
}

catppuccino.insert = {
    a = {bg = cpt.green, fg = cpt.black},
    b = {bg = cpt.fg_gutter, fg = cpt.green}
}

catppuccino.command = {
    a = {bg = cpt.orange, fg = cpt.black},
    b = {bg = cpt.fg_gutter, fg = cpt.orange}
}

catppuccino.visual = {
    a = {bg = cpt.magenta, fg = cpt.black},
    b = {bg = cpt.fg_gutter, fg = cpt.magenta}
}

catppuccino.replace = {
    a = {bg = cpt.red_bg, fg = cpt.black},
    b = {bg = cpt.fg_gutter, fg = cpt.red_bg}
}

catppuccino.inactive = {
    a = {bg = cpt.bg_statusline, fg = cpt.blue},
    b = {bg = cpt.bg_statusline, fg = cpt.fg_gutter, gui = "bold"},
    c = {bg = cpt.bg_statusline, fg = cpt.fg_gutter}
}

return catppuccino
