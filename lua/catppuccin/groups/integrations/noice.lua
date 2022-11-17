local M = {}

local virtual_text = cnf.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = cp.text },
		NoiceCmdlineIcon = { fg = cp.sky, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = cp.yellow },
		NoiceCmdlinePopup = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base },
		NoiceCmdlinePopupBorder = { fg = cp.lavender },
		NoiceCmdlinePopupBorderSearch = { fg = cp.yellow },
		NoiceConfirm = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base },
		NoiceConfirmBorder = { fg = cp.blue },
		NoiceCursor = { fg = cp.text },
		NoiceMini = { fg = cp.text },
		NoicePopup = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		NoicePopupBorder = { link = "FloatBorder" },
		NoicePopupmenu = { link = "Pmenu" },
		NoicePopupmenuBorder = { link = "FloatBorder" },
		NoicePopupmenuMatch = { link = "Special" },
		NoicePopupmenuSelected = { link = "PmenuSel" },
		NoiceScrollbar = { link = "PmenuSbar" },
		NoiceScrollbarThumb = { link = "PmenuThumb" },
		NoiceSplit = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		NoiceSplitBorder = { link = "FloatBorder" },
		NoiceVirtualText = { link = "DiagnosticVirtualTextInfo" },
	}
end

return M
