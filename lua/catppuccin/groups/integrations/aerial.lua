local M = {}

function M.get()
	return {
		AerialLine = { fg = C.yellow, bg = C.none },
		AerialGuide = { fg = C.overlay2 },
		AerialBooleanIcon = { link = "@boolean" },
		AerialClassIcon = { link = "@type" },
		AerialConstantIcon = { link = "@constant" },
		AerialConstructorIcon = { link = "@constructor" },
		AerialFieldIcon = { link = "@field" },
		AerialFunctionIcon = { link = "@function" },
		AerialMethodIcon = { link = "@method" },
		AerialNamespaceIcon = { link = "@namespace" },
		AerialNumberIcon = { link = "@number" },
		AerialOperatorIcon = { link = "@operator" },
		AerialTypeParameterIcon = { link = "@type" },
		AerialPropertyIcon = { link = "@property" },
		AerialStringIcon = { link = "@string" },
		AerialVariableIcon = { link = "@constant" },
		AerialEnumMemberIcon = { link = "@field" },
		AerialEnumIcon = { link = "@type" },
		AerialFileIcon = { link = "@text.uri" },
		AerialModuleIcon = { link = "@namespace" },
		AerialPackageIcon = { link = "@namespace" },
		AerialInterfaceIcon = { link = "@type" },
		AerialStructIcon = { link = "@type" },
		AerialEventIcon = { link = "@type" },
		AerialArrayIcon = { link = "@constant" },
		AerialObjectIcon = { link = "@type" },
		AerialKeyIcon = { link = "@type" },
		AerialNullIcon = { link = "@type" },
	}
end

return M
