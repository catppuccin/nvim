local M = {}

function M.get()
	local rounded = O.integrations.avante.windows_sidebar_header_rounded
	return {
		AvanteTitle = rounded and { bg = C.lavender, fg = C.base } or { fg = C.lavender },
		AvanteReversedTitle = rounded and { bg = C.none, fg = C.lavender } or { fg = C.lavender },
		AvanteSubtitle = rounded and { bg = C.peach, fg = C.base } or { fg = C.peach },
		AvanteReversedSubtitle = rounded and { bg = C.none, fg = C.peach } or { fg = C.peach },
		AvanteThirdTitle = rounded and { bg = C.blue, fg = C.base } or { fg = C.blue },
		AvanteReversedThirdTitle = rounded and { bg = C.none, fg = C.blue } or { fg = C.blue },
		AvanteConflictCurrent = { fg = C.red, bg = C.none },
		AvanteConflictIncoming = { fg = C.peach, bg = C.none },
		AvanteConflictCurrentLabel = { fg = C.red, bg = C.none },
		AvanteConflictIncomingLabel = { fg = C.peach, bg = C.none },
		AvantePopupHint = { fg = C.overlay0 },
		AvanteInlineHint = { fg = C.overlay0 },
	}
end

return M
