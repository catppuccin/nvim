local M = {}

local O = require("catppuccin").options

function M.is_floating_border(opts)
  local border = opts.auto or false;

  if O.floating_border == "on" then
    border = true
  elseif O.floating_border == "off" then
    border = false
  end

  return border
end

function M.is_option_enabled(opt)
  if opt == nil then
    return false
  end

  if type(opt) == "boolean" then
    return opt
  end

  if type(opt) == "table" then
    return opt.enabled
  end
end

function M.is_catppucin_selected()
  return vim.g.colors_name == "catppuccin"
end

return M
