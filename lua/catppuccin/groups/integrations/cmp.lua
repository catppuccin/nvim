local M = {}

local helper = require("catppuccin.lib.helper")
local O = require("catppuccin").options

local completion_border = helper.is_floating_border({auto = true})
local documentation_border = helper.is_floating_border({auto = false})

function M.get()
	return {
		CmpItemAbbr = { fg = C.overlay2 },
		CmpItemAbbrDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		CmpItemKind = { fg = C.blue },
		CmpItemMenu = { fg = C.text },
		CmpItemAbbrMatch = { fg = C.text, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.text, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.mauve },
		CmpItemKindKeyword = { fg = C.red },
		CmpItemKindText = { fg = C.teal },
		CmpItemKindMethod = { fg = C.blue },
		CmpItemKindConstructor = { fg = C.blue },
		CmpItemKindFunction = { fg = C.blue },
		CmpItemKindFolder = { fg = C.blue },
		CmpItemKindModule = { fg = C.blue },
		CmpItemKindConstant = { fg = C.peach },
		CmpItemKindField = { fg = C.green },
		CmpItemKindProperty = { fg = C.green },
		CmpItemKindEnum = { fg = C.green },
		CmpItemKindUnit = { fg = C.green },
		CmpItemKindClass = { fg = C.yellow },
		CmpItemKindVariable = { fg = C.flamingo },
		CmpItemKindFile = { fg = C.blue },
		CmpItemKindInterface = { fg = C.yellow },
		CmpItemKindColor = { fg = C.red },
		CmpItemKindReference = { fg = C.red },
		CmpItemKindEnumMember = { fg = C.red },
		CmpItemKindStruct = { fg = C.blue },
		CmpItemKindValue = { fg = C.peach },
		CmpItemKindEvent = { fg = C.blue },
		CmpItemKindOperator = { fg = C.blue },
		CmpItemKindTypeParameter = { fg = C.blue },
		CmpItemKindCopilot = { fg = C.teal },
	}
end

function M.get_opts(opts)
  local cmp = O.integrations.cmp

  if not helper.is_option_enabled(cmp) then
    return opts
  end

  if type(cmp) == "table"
    and cmp.border.completion ~= nil then
    completion_border = cmp.border.completion
  end

  if type(cmp) == "table"
    and cmp.border.documentation ~= nil then
    documentation_border = cmp.border.documentation
  end

  local defaults = {
    window = {
      completion = {
        border = completion_border and { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        winhighlight = "FloatBorder:FloatBorder",
      },
      documentation = {
        border = documentation_border and { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        winhighlight = "FloatBorder:FloatBorder",
      },
    },
  }

  return vim.tbl_deep_extend("keep", opts or {}, defaults)
end

return M
