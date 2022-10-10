-- Rerun tests only if their modification time changed.
cache = true
codes = true

-- Glorious list of warnings: https://luacheck.readthedocs.io/en/stable/warnings.html
ignore = {
	"631", -- Allow comment to be longer than max width
	"411", -- Redefining a local variable.
	"412", -- Redefining an argument.
	"422", -- Shadowing an argument
	"122", -- Indirectly setting a readonly global
}

-- Global objects defined by the C code
read_globals = { -- Borrow but returned
	"cnf",
	"cp",
	"ucolors",
	"vim",
}
