return function(flavour)
	local C = require("catppuccin.palettes").get_palette(flavour)
	local O = require("catppuccin").options

	local transparent_bg = O.transparent_background and C.none or C.mantle

	local dirname_color = O.integrations.barbecue.dim_dirname and C.overlay1 or C.text
	local basename_bold = O.integrations.barbecue.bold_basename
	local context_color = O.integrations.barbecue.dim_context and C.overlay1 or C.text
	local background_color = O.integrations.barbecue.alt_background and transparent_bg or C.none

	local M = {
		normal = { fg = C.text, bg = background_color },

		ellipsis = { fg = C.overlay1 },
		separator = { fg = C.overlay1 },
		modified = { fg = C.peach },

		dirname = { fg = dirname_color },
		basename = { fg = C.text, bold = basename_bold },
		context = { fg = context_color },

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
end
