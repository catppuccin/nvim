local M = {}

function M.get()
	local rounded = O.integrations.avante.windows_sidebar_header_rounded
	return {
		-- titles
		AvanteTitle = rounded and { bg = C.lavender, fg = C.base } or { fg = C.lavender },
		AvanteReversedTitle = rounded and { bg = C.none, fg = C.lavender } or { fg = C.lavender },

		AvanteSubtitle = rounded and { bg = C.peach, fg = C.base } or { fg = C.peach },
		AvanteReversedSubtitle = rounded and { bg = C.none, fg = C.peach } or { fg = C.peach },

		AvanteThirdTitle = rounded and { bg = C.blue, fg = C.base } or { fg = C.blue },
		AvanteReversedThirdTitle = rounded and { bg = C.none, fg = C.blue } or { fg = C.blue },

		-- hints
		AvanteInlineHint = { fg = C.overlay0 },
		AvantePopupHint = { fg = C.overlay0 },
		AvanteAnnotation = { fg = C.overlay0 },
		AvanteSuggestion = { fg = C.overlay0 },

		-- conflicts
		AvanteConflictCurrent = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.green,
		},
		AvanteConflictCurrentLabel = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.green,
		},

		AvanteConflictIncoming = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.blue,
		},
		AvanteConflictIncomingLabel = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.blue,
		},

		AvanteConflictAncestor = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.teal,
		},
		AvanteConflictAncestorLabel = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.teal,
		},

		AvanteToBeDeleted = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.red,
		},
	}
end

return M
