local M = {}
local B = bit or bit32 or {
	rshift = function(a, b) return a >> b end,
	bxor = function(a, b) return a ~ b end,
}

local hash_str = function(str) -- MurmurOAAT_32, https://stackoverflow.com/questions/7666509/hash-function-for-string
	local hash = 0x12345678
	local tbl = { string.byte(str, 1, #str) }
	for i = 1, #tbl do
		hash = B.bxor(hash, tbl[i])
		hash = hash * 0x5bd1e995
		hash = B.bxor(hash, B.rshift(hash, 15))
	end
	return hash
end

function M.hash(tbl) -- Xor hashing: https://codeforces.com/blog/entry/85900
	local t = type(tbl)
	if t == "boolean" then
		return hash_str(tbl and "1" or "0")
	elseif t == "string" then
		return hash_str(tbl)
	elseif t == "number" then
		return tostring(tbl)
	elseif t == "function" then
		return hash_str(string.dump(tbl))
	else
		local hash = 0
		for k, v in pairs(tbl) do
			hash = B.bxor(hash, hash_str(k .. ":" .. M.hash(v)))
		end
		return hash
	end
end

return M
