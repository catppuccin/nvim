local M = {}

function M.get(user_config)
	user_config = user_config or {}
	-- Backward compatibility
	local cnf = require("catppuccin").options
	if cnf.integrations.bufferline then return {} end
	return function(defaults)
		local cp = require("catppuccin.palettes").get_palette()
		local transparent_background = cnf.transparent_background
		local bg_highlight = (transparent_background and cnf.dim_inactive.enabled and cp.dim)
			or (transparent_background and "NONE")
			or (cnf.dim_inactive.enabled and cp.dim)
			or cp.crust

		local active_bg = transparent_background and "NONE" or cp.base
		local inactive_bg = transparent_background and "NONE" or cp.mantle

		local styles = user_config.styles or { "bold", "italic" }

		local highlights = {
			-- buffers
			background = { bg = inactive_bg },
			buffer_visible = { fg = cp.surface1, bg = inactive_bg },
			buffer_selected = { fg = cp.text, bg = active_bg, style = styles }, -- current
			-- Duplicate
			duplicate_selected = { fg = cp.text, bg = active_bg, style = styles },
			duplicate_visible = { fg = cp.surface1, bg = inactive_bg, style = styles },
			duplicate = { fg = cp.surface1, bg = inactive_bg, style = styles },
			-- tabs
			tab = { fg = cp.surface1, bg = inactive_bg },
			tab_selected = { fg = cp.sky, bg = active_bg },
			tab_close = { fg = cp.red, bg = inactive_bg },
			indicator_selected = { fg = cp.peach, bg = active_bg, style = styles },
			-- separators
			separator = { fg = cp.crust, bg = inactive_bg },
			separator_visible = { fg = cp.crust, bg = inactive_bg },
			separator_selected = { fg = cp.crust, bg = active_bg },
			-- close buttons
			close_button = { fg = cp.surface1, bg = inactive_bg },
			close_button_visible = { fg = cp.surface1, bg = inactive_bg },
			close_button_selected = { fg = cp.red, bg = active_bg },
			-- Empty fill
			fill = { bg = bg_highlight },
			-- Numbers
			numbers = { fg = cp.subtext0, bg = inactive_bg },
			numbers_visible = { fg = cp.subtext0, bg = inactive_bg },
			numbers_selected = { fg = cp.subtext0, bg = active_bg, style = styles },
			-- Errors
			error = { fg = cp.red, bg = inactive_bg },
			error_visible = { fg = cp.red, bg = inactive_bg },
			error_selected = { fg = cp.red, bg = active_bg, style = styles },
			error_diagnostic = { fg = cp.red, bg = inactive_bg },
			error_diagnostic_visible = { fg = cp.red, bg = inactive_bg },
			error_diagnostic_selected = { fg = cp.red, bg = active_bg },
			-- Warnings
			warning = { fg = cp.yellow, bg = inactive_bg },
			warning_visible = { fg = cp.yellow, bg = inactive_bg },
			warning_selected = { fg = cp.yellow, bg = active_bg, style = styles },
			warning_diagnostic = { fg = cp.yellow, bg = inactive_bg },
			warning_diagnostic_visible = { fg = cp.yellow, bg = inactive_bg },
			warning_diagnostic_selected = { fg = cp.yellow, bg = active_bg },
			-- Infos
			info = { fg = cp.sky, bg = inactive_bg },
			info_visible = { fg = cp.sky, bg = inactive_bg },
			info_selected = { fg = cp.sky, bg = active_bg, style = styles },
			info_diagnostic = { fg = cp.sky, bg = inactive_bg },
			info_diagnostic_visible = { fg = cp.sky, bg = inactive_bg },
			info_diagnostic_selected = { fg = cp.sky, bg = active_bg },
			-- Hint
			hint = { fg = cp.teal, bg = inactive_bg },
			hint_visible = { fg = cp.teal, bg = inactive_bg },
			hint_selected = { fg = cp.teal, bg = active_bg, style = styles },
			hint_diagnostic = { fg = cp.teal, bg = inactive_bg },
			hint_diagnostic_visible = { fg = cp.teal, bg = inactive_bg },
			hint_diagnostic_selected = { fg = cp.teal, bg = active_bg },
			-- Diagnostics
			diagnostic = { fg = cp.subtext0, bg = inactive_bg },
			diagnostic_visible = { fg = cp.subtext0, bg = inactive_bg },
			diagnostic_selected = { fg = cp.subtext0, bg = active_bg, style = styles },
			-- Modified
			modified = { fg = cp.peach, bg = inactive_bg },
			modified_selected = { fg = cp.peach, bg = active_bg },
		}

		local user_highlights = user_config.custom or {}
		highlights = vim.tbl_deep_extend(
			"keep",
			user_highlights[vim.g.catppuccin_flavour] or {},
			user_highlights.all or {},
			highlights
		)

		for _, color in pairs(highlights) do
			if color.style then
				for _, style in ipairs(color.style) do
					color[style] = true
				end
			end
			color.style = nil
		end

		return highlights
	end
end

return M
