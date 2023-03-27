local M = {}

local O = require("catppuccin").options
local helper = require("catppuccin.lib.helper")

local border = helper.is_floating_border({auto = false})

function M.get()
  local which_key = O.integrations.which_key

  local opts = {
		WhichKey = { fg = C.flamingo },
		WhichKeyGroup = { fg = C.blue },
		WhichKeySeperator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
		WhichKeyValue = { fg = C.overlay0 },
	}

  if type(which_key) == "table"
    and which_key.border ~= nil then
    border = which_key.border
  end

  if border then
    opts.WhichKeyBorder = { default = true, link = "FloatBorder" }
  else
    opts.WhichKeyBorder = { fg = C.none, bg = C.none }
  end

  return opts
end

return M
