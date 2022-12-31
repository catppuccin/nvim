local C = require("catppuccin.palettes").get_palette()

local M = {
	normal = { fg = C.text, bg = "none" },

	ellipsis = { fg = C.overlay1 },
	separator = { fg = C.overlay1 },
	modified = { fg = C.peach },

	dirname = { fg = C.overlay1 },
	basename = { fg = C.text, bold = true },
	context = { fg = C.text },

	-- Same keys as navic
	context_file = { fg = C.blue },
	context_module = { fg = C.blue },
	context_namespace = { fg = C.blue },
	context_package = { fg = C.blue },
	context_class = { fg = C.yellow },
	context_method = { fg = C.blue },
	context_property = { fg = C.green },
	context_field = { fg = C.green },
	context_constructor = { fg = C.blue },
	context_enum = { fg = C.green },
	context_interface = { fg = C.yellow },
	context_function = { fg = C.blue },
	context_variable = { fg = C.flamingo },
	context_constant = { fg = C.peach },
	context_string = { fg = C.green },
	context_number = { fg = C.peach },
	context_boolean = { fg = C.peach },
	context_array = { fg = C.blue },
	context_object = { fg = C.blue },
	context_key = { fg = C.flamingo },
	context_null = { fg = C.peach },
	context_enum_member = { fg = C.red },
	context_struct = { fg = C.blue },
	context_event = { fg = C.blue },
	context_operator = { fg = C.blue },
	context_type_parameter = { fg = C.blue },
}

return M
