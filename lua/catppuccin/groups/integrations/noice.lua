local M = {}

local virtual_text = O.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = C.text },
		NoiceCmdlineIcon = { fg = C.sky, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = C.yellow },
		NoiceCmdlinePopupBorder = { fg = C.lavender },
		NoiceCmdlinePopupBorderSearch = { fg = C.yellow },
		NoiceConfirmBorder = { fg = C.blue },
		NoiceMini = { fg = C.text, blend = 0 },
	}
end

return M
