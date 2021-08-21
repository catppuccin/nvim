local M = {}

function M.available_commands()
    return vim.tbl_keys(require("catppuccino.core.list_cs"))
end

return M
