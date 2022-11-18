local M = {}

function M.get()
	local error = C.red
	local warning = C.yellow
	local info = C.sky
	local hint = C.teal

	return {
		-- These groups are for the coc.nvim, see ":h coc-highlights"
		-- Diagnostics
		CocErrorHighlight = { fg = error },
		CocErrorSign = { fg = error },
		CocErrorVirtualText = { fg = error },
		CocHintHighlight = { fg = hint },
		CocHintSign = { fg = hint },
		CocHintVirtualText = { fg = hint },
		CocInfoHighlight = { fg = info },
		CocInfoSign = { fg = info },
		CocInfoVirtualText = { fg = info },
		CocWarningHighlight = { fg = warning },
		CocWarningSign = { fg = warning },
		CocWarningVirtualText = { fg = warning },
		-- Custom popup menu since coc v0.0.82
		CocMenuSel = { link = "PmenuSel" },
		CocPumSearch = { fg = info, style = { "bold" } },
		-- InlayHints
		CocInlayHint = { fg = hint },
	}
end

return M
