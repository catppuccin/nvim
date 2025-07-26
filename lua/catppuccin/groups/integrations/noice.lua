-- noice.nvim
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
		NoiceMini = { fg = C.subtext0, blend = 0 },
		NoiceFormatProgressDone = {
			bg = O.transparent_background and C.none or U.darken(C.sky, 0.30, C.base),
			fg = C.subtext0,
		},
		NoiceFormatProgressTodo = {
			bg = O.transparent_background and C.none
				or U.vary_color({ latte = U.lighten(C.mantle, 0.70, C.base) }, U.darken(C.surface0, 0.64, C.base)),
			fg = C.subtext0,
		},
	}
end

return M
