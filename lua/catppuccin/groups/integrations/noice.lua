local M = {}

local virtual_text = O.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = C.text },
		NoiceCmdlineIcon = { fg = C.sky, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = C.yellow },
		NoiceCmdlinePopup = { fg = C.text, bg = O.transparent_background and C.none or C.base },
		NoiceCmdlinePopupBorder = { fg = C.lavender },
		NoiceCmdlinePopupBorderSearch = { fg = C.yellow },
		NoiceConfirm = { fg = C.text, bg = O.transparent_background and C.none or C.base },
		NoiceConfirmBorder = { fg = C.blue },
		NoiceMini = { fg = C.text },
		NoicePopup = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		NoicePopupBorder = { link = "FloatBorder" },
		NoicePopupmenu = { link = "Pmenu" },
		NoicePopupmenuBorder = { link = "FloatBorder" },
		NoicePopupmenuMatch = { link = "Special" },
		NoicePopupmenuSelected = { link = "PmenuSel" },
		NoiceScrollbar = { link = "PmenuSbar" },
		NoiceScrollbarThumb = { link = "PmenuThumb" },
		NoiceSplit = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		NoiceSplitBorder = { link = "FloatBorder" },
		NoiceVirtualText = { link = "DiagnosticVirtualTextInfo" },
	}
end

return M
