local M = {}

local cnf = require("catppuccin.config").options
local echo = require("catppuccin.utils.echo")

function M.get_palette(flavour)
	local flvr = flavour or vim.g.catppuccin_flavour

	local null, palette = pcall(require, "catppuccin.palettes." .. flvr)
	if not null then
		return {}
	end

	if type(cnf.color_overrides) == "table" then
		for _, pal in pairs({ "all", flvr }) do
			if cnf.color_overrides[pal] ~= nil then
				for k, v in pairs(cnf.color_overrides[pal]) do
					if palette[k] then
						palette[k] = v
					else
						echo('"' .. k .. '" is not a valid catppucin palette color', "warn")
					end
				end
			end
		end
	end

	return palette
end

return M
