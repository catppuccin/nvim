local M = {}

local function color_is_bright(r, g, b)
	-- Counting the perceptive luminance - human eye favors green color
	local luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255
	if luminance > 0.5 then
		return true -- Bright colors, black font
	else
		return false -- Dark colors, white font
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

	if color_is_bright(tonumber(r), tonumber(g), tonumber(b)) == true then
		return true -- bright
	end

	return false -- dull
end

return M
