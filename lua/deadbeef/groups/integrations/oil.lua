local M = {}

function M.get()
	return {
		OilDir = { fg = C.blue, bg = C.surface0 },
		OilDirIcon = { fg = C.blue, bg = C.surface0 },
		OilFile = { fg = C.text, bg = C.surface0 },
		OilFileIcon = { fg = C.text, bg = C.surface0 },
		OilLink = { fg = C.teal, bg = C.surface0 },
		OilLinkTarget = { fg = C.teal, bg = C.surface0 },
		OilCopy = { fg = C.yellow, bg = C.surface0 },
		OilMove = { fg = C.peach, bg = C.surface0 },
		OilChange = { fg = C.green, bg = C.surface0 },
		OilCreate = { fg = C.green, bg = C.surface0 },
		OilDelete = { fg = C.red, bg = C.surface0 },
		OilPermissionRead = { fg = C.green, bg = C.surface0 },
		OilPermissionWrite = { fg = C.yellow, bg = C.surface0 },
		OilPermissionExecute = { fg = C.red, bg = C.surface0 },
		OilTypeDir = { fg = C.blue, bg = C.surface0 },
		OilTypeFifo = { fg = C.mauve, bg = C.surface0 },
		OilTypeFile = { fg = C.text, bg = C.surface0 },
		OilTypeLink = { fg = C.teal, bg = C.surface0 },
		OilTypeSocket = { fg = C.pink, bg = C.surface0 },
	}
end

return M