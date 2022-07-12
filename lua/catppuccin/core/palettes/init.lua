local M = {}

local cnf = require("catppuccin.config").options

function M.get_palette()
	local flvr = vim.g.catppuccin_flavour

	local palette = require("catppuccin.core.palettes.mocha")
	if flvr == "mocha" or flvr == "latte" or flvr == "macchiato" or flvr == "frappe" then
		palette = require("catppuccin.core.palettes." .. flvr)
	end

	if type(cnf.color_overrides) == "table" then
		for _, pal in pairs({"all", flvr}) do
			if cnf.color_overrides[pal] ~= nil then
				for k, v in pairs(cnf.color_overrides[pal]) do
					if palette[k] then
						palette[k] = v
					else
						vim.api.nvim_echo(
							{ { 'Warning: "' .. k .. '" is not a valid catppucin palette color.', "WarningMsg" } },
							true,
							{}
						)
					end
				end
			end
		end
	end

	return palette
end

return M
