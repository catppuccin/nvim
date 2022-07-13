local M = {}

local cnf = require("catppuccin.config").options
local echo = require("catppuccin.utils.echo")

function M.get_palette()
	local flvr = vim.g.catppuccin_flavour

	local palette = require("catppuccin.palettes.mocha")
	if flvr == "mocha" or flvr == "latte" or flvr == "macchiato" or flvr == "frappe" then
		palette = require("catppuccin.palettes." .. flvr)
	end

	if type(cnf.color_overrides) == "table" then
		for _, pal in pairs({"all", flvr}) do
			if cnf.color_overrides[pal] ~= nil then
				for k, v in pairs(cnf.color_overrides[pal]) do
					if palette[k] then
						palette[k] = v
					else
						echo('"'..k .. '" is not a valid catppucin palette color', "warn")
					end
				end
			end
		end
	end

	return palette
end

return M
