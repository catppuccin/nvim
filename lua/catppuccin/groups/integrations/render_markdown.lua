local M = {}

-- render-markdown.nvim highlight groups:
-- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#colors

function M.get()
	local groups = {
		RenderMarkdownCode = { bg = C.mantle },
		RenderMarkdownCodeInline = { bg = C.surface0 },
		RenderMarkdownBullet = { fg = C.sky },
		RenderMarkdownTableHead = { fg = C.blue },
		RenderMarkdownTableRow = { fg = C.lavender },
		RenderMarkdownSuccess = { fg = C.green },
		RenderMarkdownInfo = { fg = C.sky },
		RenderMarkdownHint = { fg = C.teal },
		RenderMarkdownWarn = { fg = C.yellow },
		RenderMarkdownError = { fg = C.red },
	}

	local syntax = require("catppuccin.groups.syntax").get()
	local darkening_percentage = O.transparent_background and U.vary_color({ latte = 0.15 }, 0.28) or 0.095

	for i = 1, 6 do
		local color = syntax["rainbow" .. i].fg
		groups["RenderMarkdownH" .. i] = { fg = color }
		groups["RenderMarkdownH" .. i .. "Bg"] = { bg = U.darken(color, darkening_percentage, C.base) }
	end

	return groups
end

return M
