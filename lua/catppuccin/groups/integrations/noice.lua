local M = {}

local virtual_text = cnf.integrations.native_lsp.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		Cmdline = { fg = cp.text },
		CmdlineIcon = { fg = cp.sky, style = virtual_text.information },
		CmdlineIconSearch = { fg = cp.yellow },
		CmdlinePopup = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base },
		CmdlinePopupBorder = { fg = cp.lavender },
		CmdlinePopupBorderSearch = { fg = cp.yellow },
		Confirm = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base },
		ConfirmBorder = { fg = cp.blue },
		Cursor = { fg = cp.text },
		Mini = { fg = cp.text },
		Popup = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		PopupBorder = { link = "FloatBorder" },
		Popupmenu = { link = "Pmenu" },
		PopupmenuBorder = { link = "FloatBorder" },
		PopupmenuMatch = { link = "Special" },
		PopupmenuSelected = { link = "PmenuSel" },
		Scrollbar = { link = "PmenuSbar" },
		ScrollbarThumb = { link = "PmenuThumb" },
		Split = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.mantle },
		SplitBorder = { link = "FloatBorder" },
		VirtualText = { link = "DiagnosticVirtualTextInfo" },
	}
end

return M
