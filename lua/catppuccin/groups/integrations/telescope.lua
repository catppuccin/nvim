local M = {}

local helper = require("catppuccin.lib.helper")
local O = require("catppuccin").options

local border = helper.is_floating_border({auto = true})

function M.get()
  local telescope = O.integrations.telescope

  local opts = {
		TelescopeSelectionCaret = { fg = C.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },
		TelescopeNormal = { bg = C.mantle },
  }

  if type(telescope) == "table"
    and telescope.border ~= nil then
    border = telescope.border
  end

  if border then
    opts.TelescopeBorder = { default = true, link = "FloatBorder" }
  else
    opts.TelescopeBorder = { fg = C.mantle, bg = C.mantle }

    opts.TelescopePromptTitle = { fg = C.base, bg = C.red }
    opts.TelescopePromptBorder = { fg = C.surface0, bg = C.surface0 }
    opts.TelescopePromptNormal = { bg = C.surface0 }

    opts.TelescopeResultsTitle = { fg = C.base, bg = C.yellow }
    opts.TelescopeResultsBorder = { fg = C.mantle, bg = C.mantle }
    opts.TelescopeResultsNormal = { bg = C.mantle }

    opts.TelescopePreviewTitle = { fg = C.base, bg = C.green }
    opts.TelescopePreviewBorder = { fg = C.mantle, bg = C.mantle }
    opts.TelescopePreviewNormal = { bg = C.mantle }
  end

  return opts
end

return M
