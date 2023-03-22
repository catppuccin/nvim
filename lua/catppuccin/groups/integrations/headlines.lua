local M = {}

function M.get()
	return {
		Dash = { fg = C.peach, style = { "bold" } },
		Quote = { fg = C.peach },
		CodeBlock = { bg = C.mantle },
		Headline1 = { bg = C.green },
		Headline2 = { bg = C.blue },
		Headline3 = { bg = C.red },
		Headline4 = { bg = C.mauve },
		Headline5 = { bg = C.yellow },
		Headline6 = { bg = C.lavender },
	}
end

return M
