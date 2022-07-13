local M = {}

local hsluv = require("catppuccin.lib.hsluv")

M.bg = "#000000"
M.fg = "#ffffff"
M.day_brightness = 0.3

---@param hex_str string hexadecimal value of a color
local hex_to_rgb = function(hex_str)
	local hex = "[abcdef0-9][abcdef0-9]"
	local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
	hex_str = string.lower(hex_str)

	assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

	local red, green, blue = string.match(hex_str, pat)
	return { tonumber(red, 16), tonumber(green, 16), tonumber(blue, 16) }
end

---@param fg string forecrust color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(fg, bg, alpha)
	bg = hex_to_rgb(bg)
	fg = hex_to_rgb(fg)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
	return M.blend(hex, bg or M.bg, math.abs(amount))
end

function M.lighten(hex, amount, fg)
	return M.blend(hex, fg or M.fg, math.abs(amount))
end

function M.brighten(color, percentage)
	local hsl = hsluv.hex_to_hsluv(color)
	local larpSpace = 100 - hsl[3]
	if percentage < 0 then
		larpSpace = hsl[3]
	end
	hsl[3] = hsl[3] + larpSpace * percentage
	return hsluv.hsluv_to_hex(hsl)
end

function M.invertColor(color)
	if color ~= "NONE" then
		local hsl = hsluv.hex_to_hsluv(color)
		hsl[3] = 100 - hsl[3]
		if hsl[3] < 40 then
			hsl[3] = hsl[3] + (100 - hsl[3]) * M.day_brightness
		end
		return hsluv.hsluv_to_hex(hsl)
	end
	return color
end

function M.string_to_color(colors, value, default)
	if not value or value == "" then
		return default
	end

	-- If the value is a hex color code then return it
	local hex = "[abcdef0-9][abcdef0-9]"
	local pat = "^#" .. hex .. hex .. hex .. "$"
	if string.match(value, pat) then
		return value
	end

	local acceptable_colors = { "black", "red", "green", "blue", "magenta", "cyan", "text", "orange", "pink" }
	for _, ac in ipairs(acceptable_colors) do
		if string.match(value, ac) then
			return colors[value]
		end
	end

	-- Did not match anything to return default
	return default
end

function M.color_is_bright(r, g, b)
	-- Counting the perceptive luminance - human eye favors green color
	local luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255
	if luminance > 0.5 then
		return true -- Bright colors, black font
	else
		return false -- Dark colors, text font
	end
end

function M.hex2rgb(hex)
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

function M.assert_brightness(color)
	local hex = color:gsub("#", "")
	local r = M.hex2rgb(string.sub(hex, 1, 2))
	local g = M.hex2rgb(string.sub(hex, 3, 4))
	local b = M.hex2rgb(string.sub(hex, 5, 6))

	if M.color_is_bright(tonumber(r), tonumber(g), tonumber(b)) == true then
		return true -- bright
	end

	return false -- dull
end

function M.vary_color(palettes, default)
	local flvr = vim.g.catppuccin_flavour

	if palettes[flvr] ~= nil then
		return palettes[flvr]
	end
	return default
end

return M
