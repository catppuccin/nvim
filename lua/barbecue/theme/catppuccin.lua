local c = require("catppuccin.palettes").get_palette()

local M = {
	normal = { bg = "none", fg = c.mantle },

	ellipsis = { fg = c.text },
	separator = { fg = c.text },
	modified = { fg = c.yellow },

	dirname = { fg = c.text },
	basename = { fg = c.blue, bold = true },
	context = { fg = c.blue },

	context_file = { fg = c.blue },
	context_module = { fg = c.blue },
	context_namespace = { fg = c.blue },
	context_package = { fg = c.blue },
	context_class = { fg = c.yellow },
	context_method = { fg = c.blue },
	context_property = { fg = c.green },
	context_field = { fg = c.green },
	context_constructor = { fg = c.blue },
	context_enum = { fg = c.green },
	context_interface = { fg = c.yellow },
	context_function = { fg = c.blue },
	context_variable = { fg = c.flamingo },
	context_constant = { fg = c.peach },
	context_string = { fg = c.green },
	context_number = { fg = c.peach },
	context_boolean = { fg = c.peach },
	context_array = { fg = c.peach },
	context_object = { fg = c.peach },
	context_key = { fg = c.pink },
	context_null = { fg = c.peach },
	context_enum_member = { fg = c.red },
	context_struct = { fg = c.blue },
	context_event = { fg = c.blue },
	context_operator = { fg = c.sky },
	context_type_parameter = { fg = c.blue },
}

return M
