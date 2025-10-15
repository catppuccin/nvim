local M = {}

local function hash_string(str)
	local hash = 0
	for i = 1, #str do
		hash = ((hash * 32) - hash + str:byte(i)) % 0x100000000
	end
	return hash
end

local function hash_table(t, seen)
	seen = seen or {}
	if seen[t] then return 0 end
	seen[t] = true
	
	local hash = 0
	for k, v in pairs(t) do
		local key_hash = type(k) == "string" and hash_string(k) or tonumber(k) or 0
		local val_hash
		if type(v) == "table" then
			val_hash = hash_table(v, seen)
		elseif type(v) == "string" then
			val_hash = hash_string(v)
		else
			val_hash = tonumber(v) or 0
		end
		hash = (hash + key_hash + val_hash) % 0x100000000
	end
	return hash
end

function M.hash(config)
	if type(config) == "table" then
		return tostring(hash_table(config))
	elseif type(config) == "string" then
		return tostring(hash_string(config))
	else
		return tostring(config or "")
	end
end

return M