-- TODO: private _G.vim
vim.command [[command! CatppuccinCompile lua require('catppuccin').compile() print("Catppuccin (info): compiled cache!")]]

vim.o = setmetatable({}, {
	__index = function(_, k)
		if k == "background" then return vim.eval "&background" end
	end,
})

vim.fn.stdpath = function(what)
	if what ~= "cache" then return end
	if package.config:sub(1, 1) == "\\" then
		return vim.fn.expand "%localappdata%" .. [[Temp\vim]]
	else
		return (os.getenv "XDG_CACHE_HOME" or vim.fn.expand "$HOME/.cache") .. "/vim"
	end
end

vim.env = setmetatable({}, {
	__index = function(_, k) return os.getenv(k) end,
})

-- Reference: https://github.com/neovim/neovim/blob/master/runtime/lua/vim/shared.lua
local function tbl_isempty(t)
	assert(type(t) == "table", string.format("Expected table, got %s", type(t)))
	return next(t) == nil
end

local function tbl_islist(t)
	if type(t) ~= "table" then return false end

	local count = 0

	for k, _ in pairs(t) do
		if type(k) == "number" then
			count = count + 1
		else
			return false
		end
	end

	if count > 0 then
		return true
	else
		-- TODO(bfredl): in the future, we will always be inside nvim
		-- then this check can be deleted.
		if vim._empty_dict_mt == nil then return false end
		return getmetatable(t) ~= vim._empty_dict_mt
	end
end

local function can_merge(v) return type(v) == "table" and (tbl_isempty(v) or not tbl_islist(v)) end

local function tbl_extend(behavior, deep_extend, ...)
	if behavior ~= "error" and behavior ~= "keep" and behavior ~= "force" then
		error('invalid "behavior": ' .. tostring(behavior))
	end

	if select("#", ...) < 2 then
		error("wrong number of arguments (given " .. tostring(1 + select("#", ...)) .. ", expected at least 3)")
	end

	local ret = {}
	if vim._empty_dict_mt ~= nil and getmetatable(select(1, ...)) == vim._empty_dict_mt then ret = vim.empty_dict() end

	for i = 1, select("#", ...) do
		local tbl = select(i, ...)
		if tbl then
			for k, v in pairs(tbl) do
				if deep_extend and can_merge(v) and can_merge(ret[k]) then
					ret[k] = tbl_extend(behavior, true, ret[k], v)
				elseif behavior ~= "force" and ret[k] ~= nil then
					if behavior == "error" then error("key found in more than one map: " .. k) end -- Else behavior is "keep".
				else
					ret[k] = v
				end
			end
		end
	end
	return ret
end

function vim.tbl_deep_extend(behavior, ...) return tbl_extend(behavior, true, ...) end
