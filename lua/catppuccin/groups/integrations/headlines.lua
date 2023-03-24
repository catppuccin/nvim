local M = {}

function M.get()
	return {
		Dash = { fg = C.overlay2, style = { "bold" } },
		Quote = { link = "@text.strong" },
		CodeBlock = { bg = C.mantle },
		Headline = { link = "Headline1" },
		Headline1 = { bg = C.surface0, fg = C.green },
		Headline2 = { bg = C.surface0, fg = C.blue },
		Headline3 = { bg = C.surface0, fg = C.red },
		Headline4 = { bg = C.surface0, fg = C.mauve },
		Headline5 = { bg = C.surface0, fg = C.yellow },
		Headline6 = { bg = C.surface0, fg = C.lavender },
	}
end

return M
