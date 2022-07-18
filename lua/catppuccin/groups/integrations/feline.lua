local M = {}

local lsp = require("feline.providers.lsp")
local lsp_severity = vim.diagnostic.severity
local b = vim.b

local clrs = require("catppuccin.palettes.init").get_palette()
local ucolors = require("catppuccin.utils.colors")
local latte = require("catppuccin.palettes.latte")

local assets = {
	left_separator = "",
	right_separator = "",
	bar = "█",
	mode_icon = ""
}

local sett = {
	text = ucolors.vary_color({ latte = latte.base }, clrs.surface0),
	bkg = ucolors.vary_color({ latte = latte.crust }, clrs.surface0),
	diffs = clrs.mauve,
	extras = clrs.overlay1,
	curr_file = clrs.maroon,
	curr_dir = clrs.flamingo,
	show_modified = false
}

local mode_colors = {
	["n"] = { "NORMAL", clrs.lavender },
	["no"] = { "N-PENDING", clrs.lavender },
	["i"] = { "INSERT", clrs.green },
	["ic"] = { "INSERT", clrs.green },
	["t"] = { "TERMINAL", clrs.green },
	["v"] = { "VISUAL", clrs.flamingo },
	["V"] = { "V-LINE", clrs.flamingo },
	[""] = { "V-BLOCK", clrs.flamingo },
	["R"] = { "REPLACE", clrs.maroon },
	["Rv"] = { "V-REPLACE", clrs.maroon },
	["s"] = { "SELECT", clrs.maroon },
	["S"] = { "S-LINE", clrs.maroon },
	[""] = { "S-BLOCK", clrs.maroon },
	["c"] = { "COMMAND", clrs.peach },
	["cv"] = { "COMMAND", clrs.peach },
	["ce"] = { "COMMAND", clrs.peach },
	["r"] = { "PROMPT", clrs.teal },
	["rm"] = { "MORE", clrs.teal },
	["r?"] = { "CONFIRM", clrs.mauve },
	["!"] = { "SHELL", clrs.green },
}

function M.setup(opts)
	if opts then
		opts.assets = opts.assets or {}
		opts.sett = opts.sett or {}
		opts.mode_colors = opts.mode_colors or {}
	else
		opts = {}
	end
	assets = vim.tbl_deep_extend("force", assets, opts.assets)
	sett = vim.tbl_deep_extend("force", sett, opts.sett)
	mode_colors = vim.tbl_deep_extend("force", mode_colors, opts.mode_colors)
end

function M.get()
	local shortline = false

	local components = {
		active = {},
		inactive = {},
	}

	local function is_enabled(is_shortline, winid, min_width)
		if is_shortline then
			return true
		end

		winid = winid or 0
		return vim.api.nvim_win_get_width(winid) > min_width
	end

	table.insert(components.active, {}) -- (1) left
	table.insert(components.active, {}) -- (2) center
	table.insert(components.active, {}) -- (3) right

	-- global components
	local invi_sep = {
		str = " ",
		hl = {
			fg = sett.bkg,
			bg = sett.bkg,
		},
	}

	-- helpers
	local function any_git_changes()
		local gst = b.gitsigns_status_dict -- git stats
		if gst then
			if
				gst["added"] and gst["added"] > 0
				or gst["removed"] and gst["removed"] > 0
				or gst["changed"] and gst["changed"] > 0
			then
				return true
			end
		end
		return false
	end

	-- #################### STATUSLINE ->

	-- ######## Left

	-- Current vi mode ------>
	local vi_mode_hl = function()
		return {
			fg = sett.text,
			bg = mode_colors[vim.fn.mode()][2],
			style = "bold",
		}
	end

	components.active[1][1] = {
		provider = assets.bar,
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
				bg = sett.bkg,
			}
		end,
	}

	components.active[1][2] = {
		provider = assets.mode_icon,
		hl = function()
			return {
				fg = sett.text,
				bg = mode_colors[vim.fn.mode()][2],
			}
		end,
	}

	components.active[1][3] = {
		provider = function()
			return " " .. mode_colors[vim.fn.mode()][1] .. " "
		end,
		hl = vi_mode_hl,
	}

	-- there is a dilema: we need to hide Diffs if ther is no git info. We can do that, but this will
	-- leave the right_separator colored with purple, and since we can't change the color conditonally
	-- then the solution is to create two right_separators: one with a mauve sett.bkg and the other one normal
	-- sett.bkg; both have the same fg (vi mode). The mauve one appears if there is git info, else the one with
	-- the normal sett.bkg appears. Fixed :)

	-- enable if git diffs are not available
	components.active[1][4] = {
		provider = assets.right_separator,
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
				bg = sett.bkg,
			}
		end,
		enabled = function()
			return not any_git_changes()
		end,
	}

	-- enable if git diffs are available
	components.active[1][5] = {
		provider = assets.right_separator,
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
				bg = sett.diffs,
			}
		end,
		enabled = function()
			return any_git_changes()
		end,
	}
	-- Current vi mode ------>

	-- Diffs ------>
	components.active[1][6] = {
		provider = "git_diff_added",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = "  ",
	}

	components.active[1][7] = {
		provider = "git_diff_changed",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = "  ",
	}

	components.active[1][8] = {
		provider = "git_diff_removed",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = "  ",
	}

	components.active[1][9] = {
		provider = assets.right_separator,
		hl = {
			fg = sett.diffs,
			bg = sett.bkg,
		},
		enabled = function()
			return any_git_changes()
		end,
	}
	-- Diffs ------>

	-- Extras ------>

	-- file progess
	components.active[1][10] = {
		provider = function()
			local current_line = vim.fn.line(".")
			local total_line = vim.fn.line("$")

			if current_line == 1 then
				return " Top "
			elseif current_line == vim.fn.line("$") then
				return " Bot "
			end
			local result, _ = math.modf((current_line / total_line) * 100)
			return " " .. result .. "%% "
		end,
		-- enabled = shortline or function(winid)
		-- 	return vim.api.nvim_win_get_width(winid) > 90
		-- end,
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		left_sep = invi_sep,
	}

	-- position
	components.active[1][11] = {
		provider = "position",
		-- enabled = shortline or function(winid)
		-- 	return vim.api.nvim_win_get_width(winid) > 90
		-- end,
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		left_sep = invi_sep,
	}
	-- Extras ------>

	-- ######## Left

	-- ######## Center

	-- Diagnostics ------>
	-- workspace loader
	components.active[2][1] = {
		provider = function()
			local Lsp = vim.lsp.util.get_progress_messages()[1]

			if Lsp then
				local msg = Lsp.message or ""
				local percentage = Lsp.percentage or 0
				local title = Lsp.title or ""
				local spinners = {
					"",
					"",
					"",
				}
				local success_icon = {
					"",
					"",
					"",
				}
				local ms = vim.loop.hrtime() / 1000000
				local frame = math.floor(ms / 120) % #spinners

				if percentage >= 70 then
					return string.format(" %%<%s %s %s (%s%%%%) ", success_icon[frame + 1], title, msg, percentage)
				end

				return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
			end

			return ""
		end,
		enabled = is_enabled(shortline, winid, 80),
		hl = {
			fg = clrs.rosewater,
			bg = sett.bkg,
		},
	}

	-- genral diagnostics (errors, warnings. info and hints)
	components.active[2][2] = {
		provider = "diagnostic_errors",
		enabled = function()
			return lsp.diagnostics_exist(lsp_severity.ERROR)
		end,

		hl = {
			fg = clrs.red,
			bg = sett.bkg,
		},
		icon = "  ",
	}

	components.active[2][3] = {
		provider = "diagnostic_warnings",
		enabled = function()
			return lsp.diagnostics_exist(lsp_severity.WARN)
		end,
		hl = {
			fg = clrs.yellow,
			bg = sett.bkg,
		},
		icon = "  ",
	}

	components.active[2][4] = {
		provider = "diagnostic_info",
		enabled = function()
			return lsp.diagnostics_exist(lsp_severity.INFO)
		end,
		hl = {
			fg = clrs.sky,
			bg = sett.bkg,
		},
		icon = "  ",
	}

	components.active[2][5] = {
		provider = "diagnostic_hints",
		enabled = function()
			return lsp.diagnostics_exist(lsp_severity.HINT)
		end,
		hl = {
			fg = clrs.rosewater,
			bg = sett.bkg,
		},
		icon = "  ",
	}
	-- Diagnostics ------>

	-- ######## Center

	-- ######## Right

	components.active[3][1] = {
		provider = "git_branch",
		enabled = is_enabled(shortline, winid, 70),
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		icon = "   ",
		left_sep = invi_sep,
		right_sep = invi_sep,
	}

	components.active[3][2] = {
		provider = function()
			if next(vim.lsp.buf_get_clients()) ~= nil then
				return " "
			else
				return ""
			end
		end,
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		right_sep = invi_sep,
	}

	components.active[3][3] = {
		provider = function()
			local filename = vim.fn.expand("%:t")
			local extension = vim.fn.expand("%:e")
			local icon = require("nvim-web-devicons").get_icon(filename, extension)
			if icon == nil then
				icon = "   "
				return icon
			end
			return (sett.show_modified and "%m" or "") .. " " .. icon .. " " .. filename .. " "
		end,
		enabled = is_enabled(shortline, winid, 70),
		hl = {
			fg = sett.text,
			bg = sett.curr_file,
		},
		left_sep = {
			str = assets.left_separator,
			hl = {
				fg = sett.curr_file,
				bg = sett.bkg,
			},
		},
	}

	components.active[3][4] = {
		provider = function()
			local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
			return "  " .. dir_name .. " "
		end,
		enabled = is_enabled(shortline, winid, 80),
		hl = {
			fg = sett.text,
			bg = sett.curr_dir,
		},
		left_sep = {
			str = assets.left_separator,
			hl = {
				fg = sett.curr_dir,
				bg = sett.curr_file,
			},
		},
	}
	-- ######## Right

	return components
end

return M
