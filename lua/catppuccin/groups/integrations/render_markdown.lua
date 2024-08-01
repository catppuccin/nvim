local M = {}

-- markdown.nvim highlight groups:
-- https://github.com/MeanderingProgrammer/markdown.nvim?tab=readme-ov-file#colors

function M.get()
	local groups = {
		RenderMarkdownCode = { bg = C.surface0 },
		RenderMarkdownCodeInline = { bg = C.surface1 },
		RenderMarkdownBullet = { fg = C.sky },
		RenderMarkdownTableHead = { fg = C.blue },
		RenderMarkdownTableRow = { fg = C.lavender },
	}

	local syntax = require("catppuccin.groups.syntax").get()
	local base = not O.transparent_background and C.base or nil

	for i = 1, 6 do
		local color = syntax["rainbow" .. i].fg
		groups["RenderMarkdownH" .. i] = { fg = color }
		groups["RenderMarkdownH" .. i .. "Bg"] = { bg = U.darken(color, 0.30, base) }
	end

	return groups
end

return M
