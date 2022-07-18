if vim.g.loaded_catppuccin then
  return
end
vim.g.loaded_catppuccin = true

-- setup modules
require("catppuccin").make_commands()
