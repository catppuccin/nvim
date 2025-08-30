local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

function M.get()
	return {
		Dash = { fg = C.overlay2, style = { "bold" } },
		Quote = { link = "@markup.strong" },
		CodeBlock = { bg = C.mantle },
		Headline = { link = "Headline1" },
		Headline1 = { bg = C.surface0, fg = C.red },
		Headline2 = { bg = C.surface0, fg = C.peach },
		Headline3 = { bg = C.surface0, fg = C.yellow },
		Headline4 = { bg = C.surface0, fg = C.green },
		Headline5 = { bg = C.surface0, fg = C.sapphire },
		Headline6 = { bg = C.surface0, fg = C.lavender },
	}
end

return M
