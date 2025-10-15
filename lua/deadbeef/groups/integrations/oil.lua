local M = {}

function M.get()
	return {
		OilDir = { fg = C.blue, bg = C.base },
		OilDirIcon = { fg = C.blue, bg = C.base },
		OilFile = { fg = C.text, bg = C.base },
		OilFileIcon = { fg = C.text, bg = C.base },
		OilLink = { fg = C.teal, bg = C.base },
		OilLinkTarget = { fg = C.teal, bg = C.base },
		OilCopy = { fg = C.yellow, bg = C.base },
		OilMove = { fg = C.peach, bg = C.base },
		OilChange = { fg = C.green, bg = C.base },
		OilCreate = { fg = C.green, bg = C.base },
		OilDelete = { fg = C.red, bg = C.base },
		OilPermissionRead = { fg = C.green, bg = C.base },
		OilPermissionWrite = { fg = C.yellow, bg = C.base },
		OilPermissionExecute = { fg = C.red, bg = C.base },
		OilTypeDir = { fg = C.blue, bg = C.base },
		OilTypeFifo = { fg = C.mauve, bg = C.base },
		OilTypeFile = { fg = C.text, bg = C.base },
		OilTypeLink = { fg = C.teal, bg = C.base },
		OilTypeSocket = { fg = C.pink, bg = C.base },
	}
end

return M