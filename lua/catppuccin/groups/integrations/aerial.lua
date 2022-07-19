local M = {}

function M.get()
	return {
		AerialLine = { fg = cp.yellow, bg = cp.none },
		AerialGuide = { fg = cp.overlay2 },
		AerialBooleanIcon = { link = "TSBoolean" },
		AerialClassIcon = { link = "TSType" },
		AerialConstantIcon = { link = "TSConstant" },
		AerialConstructorIcon = { link = "TSConstructor" },
		AerialFieldIcon = { link = "TSField" },
		AerialFunctionIcon = { link = "TSFunction" },
		AerialMethodIcon = { link = "TSMethod" },
		AerialNamespaceIcon = { link = "TSNamespace" },
		AerialNumberIcon = { link = "TSNumber" },
		AerialOperatorIcon = { link = "TSOperator" },
		AerialTypeParameterIcon = { link = "TSParameter" },
		AerialPropertyIcon = { link = "TSProperty" },
		AerialStringIcon = { link = "TSString" },
		AerialVariableIcon = { link = "TSConstant" },
		AerialEnumMemberIcon = { link = "TSField" },
		AerialEnumIcon = { link = "TSType" },
		AerialFileIcon = { link = "TSURI" },
		AerialModuleIcon = { link = "TSNamespace" },
		AerialPackageIcon = { link = "TSNamespace" },
		AerialInterfaceIcon = { link = "TSType" },
		AerialStructIcon = { link = "TSType" },
		AerialEventIcon = { link = "TSType" },
		AerialArrayIcon = { link = "TSConstant" },
		AerialObjectIcon = { link = "TSType" },
		AerialKeyIcon = { link = "TSType" },
		AerialNullIcon = { link = "TSType" },
	}
end

return M
