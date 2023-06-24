-- Reference(stripped down): https://github.com/davidm/lua-bit-numberlua/blob/master/lmod/bit/numberlua.lua
local M = {}

local floor = math.floor

local MOD = 2 ^ 32

local function memoize(f)
	local mt = {}
	local t = setmetatable({}, mt)
	function mt:__index(k)
		local v = f(k)
		t[k] = v
		return v
	end

	return t
end

local function make_bitop_uncached(t, m)
	local function bitop(a, b)
		local res, p = 0, 1
		while a ~= 0 and b ~= 0 do
			local am, bm = a % m, b % m
			res = res + t[am][bm] * p
			a = (a - am) / m
			b = (b - bm) / m
			p = p * m
		end
		res = res + (a + b) * p
		return res
	end

	return bitop
end

local function make_bitop(t)
	local op1 = make_bitop_uncached(t, 2 ^ 1)
	local op2 = memoize(function(a)
		return memoize(function(b) return op1(a, b) end)
	end)
	return make_bitop_uncached(op2, 2 ^ (t.n or 1))
end

M.bxor = make_bitop { [0] = { [0] = 0, [1] = 1 }, [1] = { [0] = 1, [1] = 0 }, n = 4 }
local bxor = M.bxor

local lshift, rshift

lshift = function(a, disp) -- Lua5.2 inspired
	if disp < 0 then return rshift(a, -disp) end
	return (a * 2 ^ disp) % 2 ^ 32
end

rshift = function(a, disp) -- Lua5.2 inspired
	if disp < 0 then return lshift(a, -disp) end
	return floor(a % 2 ^ 32 / 2 ^ disp)
end

local function bit_tobit(x)
	x = x % MOD
	if x >= 0x80000000 then x = x - MOD end
	return x
end

local function bit_bxor(a, b, c, ...)
	if c then
		return bit_bxor(bit_bxor(a, b), c, ...)
	elseif b then
		return bit_tobit(bxor(a % MOD, b % MOD))
	else
		return bit_tobit(a)
	end
end

return {
	bxor = bit_bxor,
	lshift = function(x, n) return bit_tobit(lshift(x % MOD, n % 32)) end,
}
