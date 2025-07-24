local M = {}

function M.get()
	return {
		-- Respect fzf-lua's default float bg. Do not set `bg` or link to a group that sets `bg`.
		-- FzfLuaNormal = { link = "NormalFloat" },
		FzfLuaBorder = { fg = C.blue }, -- Match `FloatBorder` `fg`
		FzfLuaTitle = { fg = C.blue }, -- Match `FzfLuaBorder` `fg`
		FzfLuaHeaderBind = { fg = C.yellow },
		FzfLuaHeaderText = { fg = C.peach },
		FzfLuaDirPart = { link = "NonText" },
		FzfLuaFzfMatch = { fg = C.blue },
		FzfLuaFzfPrompt = { fg = C.blue },
		FzfLuaPathColNr = { fg = C.blue },
		FzfLuaPathLineNr = { fg = C.green },
		FzfLuaBufName = { fg = C.mauve },
		FzfLuaBufNr = { fg = C.yellow },
		FzfLuaBufFlagCur = { fg = C.peach },
		FzfLuaBufFlagAlt = { fg = C.blue },
		FzfLuaTabTitle = { fg = C.sky },
		FzfLuaTabMarker = { fg = C.yellow },
		FzfLuaLiveSym = { fg = C.peach },
	}
end

return M
