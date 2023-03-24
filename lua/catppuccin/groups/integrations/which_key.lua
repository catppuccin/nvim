local M = {}

local O = require("catppuccin").options
local helper = require("catppuccin.lib.helper")

local border = helper.is_floating_border({auto = false})

function M.get()
  return {
		WhichKey = { fg = C.flamingo },
		WhichKeyGroup = { fg = C.blue },
		WhichKeySeperator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
    WhichKeyBorder = { default = true, link = "FloatBorder" },
		WhichKeyValue = { fg = C.overlay0 },
	}
end

function M.get_opts(opts)
  local which_key = O.integrations.which_key

  if not helper.is_option_enabled(which_key) then
    return opts
  end

  if type(which_key) == "table"
    and which_key.border ~= nil then
    border = which_key.border
  end

  local defaults = {
    window = {
      border = border and "single" or "none", -- none, single, double, shadow
    }
  }

  return vim.tbl_deep_extend("keep", opts or {}, defaults)
end

return M
