local M = {}

local C = require("catppuccin.palettes").get_palette()
local lsp = require "feline.providers.lsp"

local assets = {
	left_separator = "",
	right_separator = "",
	mode_icon = "",
	dir = "󰉖",
	file = "󰈙",
	lsp = {
		server = "󰅡",
		error = "",
		warning = "",
		info = "",
		hint = "",
	},
	git = {
		branch = "",
		added = "",
		changed = "",
		removed = "",
	},
}

local sett = {
	text = C.mantle,
	bkg = C.mantle,
	diffs = C.mauve,
	extras = C.overlay1,
	curr_file = C.maroon,
	curr_dir = C.flamingo,
	show_modified = false,
}

if require("catppuccin").flavour == "latte" then
	local latte = require("catppuccin.palettes").get_palette "latte"
	sett.text = latte.base
	sett.bkg = latte.crust
end

if require("catppuccin").options.transparent_background then sett.bkg = "NONE" end

local mode_colors = {
	["n"] = { "NORMAL", C.lavender },
	["no"] = { "N-PENDING", C.lavender },
	["i"] = { "INSERT", C.green },
	["ic"] = { "INSERT", C.green },
	["t"] = { "TERMINAL", C.green },
	["v"] = { "VISUAL", C.flamingo },
	["V"] = { "V-LINE", C.flamingo },
	[""] = { "V-BLOCK", C.flamingo },
	["R"] = { "REPLACE", C.maroon },
	["Rv"] = { "V-REPLACE", C.maroon },
	["s"] = { "SELECT", C.maroon },
	["S"] = { "S-LINE", C.maroon },
	[""] = { "S-BLOCK", C.maroon },
	["c"] = { "COMMAND", C.peach },
	["cv"] = { "COMMAND", C.peach },
	["ce"] = { "COMMAND", C.peach },
	["r"] = { "PROMPT", C.teal },
	["rm"] = { "MORE", C.teal },
	["r?"] = { "CONFIRM", C.mauve },
	["!"] = { "SHELL", C.green },
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
		active = { {}, {}, {} }, -- left, center, right
		inactive = { {} },
	}

	local function is_enabled(min_width)
		if shortline then return true end

		return vim.api.nvim_win_get_width(0) > min_width
	end

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
		local gst = vim.b.gitsigns_status_dict -- git stats
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
		provider = " " .. assets.mode_icon .. " ",
		hl = function()
			return {
				fg = sett.text,
				bg = mode_colors[vim.fn.mode()][2],
			}
		end,
	}

	components.active[1][2] = {
		provider = function() return mode_colors[vim.fn.mode()][1] .. " " end,
		hl = vi_mode_hl,
	}

	-- there is a dilemma: we need to hide Diffs if there is no git info. We can do that, but this will
	-- leave the right_separator colored with purple, and since we can't change the color conditonally
	-- then the solution is to create two right_separators: one with a mauve sett.bkg and the other one normal
	-- sett.bkg; both have the same fg (vi mode). The mauve one appears if there is git info, else the one with
	-- the normal sett.bkg appears. Fixed :)

	-- enable if git diffs are not available
	components.active[1][3] = {
		provider = assets.right_separator,
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
				bg = sett.bkg,
			}
		end,
		enabled = function() return not any_git_changes() end,
	}

	-- enable if git diffs are available
	components.active[1][4] = {
		provider = assets.right_separator,
		hl = function()
			return {
				fg = mode_colors[vim.fn.mode()][2],
				bg = sett.diffs,
			}
		end,
		enabled = function() return any_git_changes() end,
	}
	-- Current vi mode ------>

	-- Diffs ------>
	components.active[1][5] = {
		provider = "git_diff_added",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = " " .. assets.git.added .. " ",
	}

	components.active[1][6] = {
		provider = "git_diff_changed",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = " " .. assets.git.changed .. " ",
	}

	components.active[1][7] = {
		provider = "git_diff_removed",
		hl = {
			fg = sett.text,
			bg = sett.diffs,
		},
		icon = " " .. assets.git.removed .. " ",
	}

	components.active[1][8] = {
		provider = " ",
		hl = {
			fg = sett.bkg,
			bg = sett.diffs,
		},
		enabled = function() return any_git_changes() end,
	}

	components.active[1][9] = {
		provider = assets.right_separator,
		hl = {
			fg = sett.diffs,
			bg = sett.bkg,
		},
		enabled = function() return any_git_changes() end,
	}
	-- Diffs ------>

	-- Extras ------>

	-- file progress
	components.active[1][10] = {
		provider = function()
			local current_line = vim.fn.line "."
			local total_line = vim.fn.line "$"

			if current_line == 1 then
				return "Top"
			elseif current_line == vim.fn.line "$" then
				return "Bot"
			end
			local result, _ = math.modf((current_line / total_line) * 100)
			return result .. "%%"
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

	-- macro
	components.active[1][12] = {
		provider = "macro",
		enabled = function() return vim.api.nvim_get_option "cmdheight" == 0 end,
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		left_sep = invi_sep,
	}

	-- search count
	components.active[1][13] = {
		provider = "search_count",
		enabled = function() return vim.api.nvim_get_option "cmdheight" == 0 end,
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
			if vim.lsp.status then return "" end
			local Lsp = vim.lsp.util.get_progress_messages()[1]

			if Lsp then
				local msg = Lsp.message or ""
				local percentage = Lsp.percentage
				if not percentage then return "" end
				local title = Lsp.title or ""
				local spinners = {
					"",
					"󰀚",
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
		enabled = is_enabled(80),
		hl = {
			fg = C.rosewater,
			bg = sett.bkg,
		},
	}

	-- general diagnostics (errors, warnings. info and hints)
	components.active[2][2] = {
		provider = "diagnostic_errors",
		enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.ERROR) end,

		hl = {
			fg = C.red,
			bg = sett.bkg,
		},
		icon = " " .. assets.lsp.error .. " ",
	}

	components.active[2][3] = {
		provider = "diagnostic_warnings",
		enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.WARN) end,
		hl = {
			fg = C.yellow,
			bg = sett.bkg,
		},
		icon = " " .. assets.lsp.warning .. " ",
	}

	components.active[2][4] = {
		provider = "diagnostic_info",
		enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.INFO) end,
		hl = {
			fg = C.sky,
			bg = sett.bkg,
		},
		icon = " " .. assets.lsp.info .. " ",
	}

	components.active[2][5] = {
		provider = "diagnostic_hints",
		enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.HINT) end,
		hl = {
			fg = C.rosewater,
			bg = sett.bkg,
		},
		icon = " " .. assets.lsp.hint .. " ",
	}
	-- Diagnostics ------>

	-- ######## Center

	-- ######## Right

	components.active[3][1] = {
		provider = "git_branch",
		enabled = is_enabled(70),
		hl = {
			fg = sett.extras,
			bg = sett.bkg,
		},
		icon = assets.git.branch .. " ",
		right_sep = invi_sep,
	}

	components.active[3][2] = {
		provider = function()
			if next(vim.lsp.buf_get_clients()) ~= nil then
				return assets.lsp.server .. " " .. "Lsp"
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
			local filename = vim.fn.expand "%:t"
			local extension = vim.fn.expand "%:e"
			local present, icons = pcall(require, "nvim-web-devicons")
			local icon = present and icons.get_icon(filename, extension) or assets.file
			return (sett.show_modified and "%m" or "") .. " " .. icon .. " " .. filename .. " "
		end,
		enabled = is_enabled(70),
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
			return " " .. assets.dir .. " " .. dir_name .. " "
		end,
		enabled = is_enabled(80),
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

	-- Inanctive components
	components.inactive[1][1] = {
		provider = function() return " " .. string.upper(vim.bo.ft) .. " " end,
		hl = {
			fg = C.overlay2,
			bg = C.mantle,
		},
	}

	return components
end

return M
