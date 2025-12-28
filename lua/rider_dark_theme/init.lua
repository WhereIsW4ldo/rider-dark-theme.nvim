local M = {}

function M.setup()
	local general_colors = {
		bg = "#181D1E",
	}

	local variable_type_colors = {
		string = "#C9A26D",
		stringEscape = "#D688D4",
		number = "#ED94C0",
	}

	local colors = {
		keyword = "#6C95EB",
		operator = "#BDBDBD",
		comment = "#85C45C",
		constant = "#66C3CC",
		variable = "#BDBDBD",
		property = "#BDBDBD",
		functionColor = "#39CC9B",
		namespace = "#C191FF",
		interface = "#C191FF",
		class = "#C191FF",
		enum = "#E1BFFF",
		struct = "#E1BFFF",
		field = "#66C3CC",
		attribute = "#C191FF",
		lspLens = "#70726C",
	}

	local highlights = {
		Normal = { bg = general_colors.bg, },

		Keyword = { fg = colors.keyword, },
		["@lsp.type.keyword"] = { link = "Keyword", },
		["@keyword"] = { link = "Keyword", },
		["@keyword.import"] = { link = "Keyword", },
		["@keyword.repeat"] = { link = "Keyword", },
		["@keyword.return"] = { link = "Keyword", },
		["@keyword.exception"] = { link = "Keyword", },
		["@keyword.conditional"] = { link = "Keyword", },
		["@lsp.type.controlKeyword"] = { link = "Keyword", },

		Operator = { fg = colors.operator, },
		["@lsp.type.operator"] = { link = "Operator", },
		["@operator"] = { link = "Operator", },

		Comment = { fg = colors.comment, },
		["@lsp.type.comment"] = { link = "Comment", },
		["@lsp.type.comment.c"] = { link = "Comment", },
		["@lsp.type.comment.cpp"] = { link = "Comment", },
		["@lsp.type.comment.csharp"] = { link = "Comment", },
		["@comment"] = { link = "Comment", },
		["@comment.note"] = { link = "Comment", },
		["@comment.todo"] = { link = "Comment", },
		["@comment.error"] = { link = "Comment", },
		["@comment.warning"] = { link = "Comment", },

		Constant = { fg = colors.constant, },
		["@lsp.typemod.variable.constant"] = { link = "Constant", },
		["@constant"] = { link = "Constant", },
		["@constant.macro"] = { link = "Constant", },
		["@constant.builtin"] = { link = "Constant", },

		Variable = { fg = colors.variable, },
		["@lsp.type.variable"] = { link = "Variable", },
		["@lsp.typemod.variable.readonly"] = { link = "Variable", },
		["@variable"] = { link = "Variable", },
		["@variable.member"] = { link = "Variable", },
		["@variable.builtin"] = { link = "Variable", },
		["@variable.parameter"] = { link = "Variable", },
		["@variable.parameter.builtin"] = { link = "Variable", },
		["@variable.parameter.reference"] = { link = "Variable", },

		Property = { fg = colors.field, },
		["@lsp.type.property"] = { link = "Property", },
		["@lsp.typemod.property.readonly"] = { link = "Property", },
		["@property"] = { link = "Property", },

		Function = { fg = colors.functionColor, },
		["@lsp.type.function"] = { link = "Function", },
		["@function"] = { link = "Function", },
		["@function.macro"] = { link = "Function", },
		["@function.method"] = { link = "Function", },
		["@function.builtin"] = { link = "Function", },

		Namespace = { fg = colors.namespace, },
		["@lsp.type.namespace"] = { link = "Namespace", },
		["@namespace"] = { link = "Namespace", },

		Interface = { fg = colors.interface, },
		["@lsp.type.interface"] = { link = "Interface", },
		["@interface"] = { link = "Interface", },

		Class = { fg = colors.class, },
		["@lsp.type.class"] = { link = "Class", },
		["@lsp.type.recordClass"] = { link = "Class", },

		Enum = { fg = colors.enum, },
		["@lsp.type.enum"] = { link = "Enum", },
		["@lsp.type.enumMember"] = { link = "Constant", },

		Struct = { fg = colors.struct, },
		["@lsp.type.struct"] = { link = "Struct", },

		Field = { fg = colors.field, },
		["@field"] = { link = "Field", },
		["@lsp.type.field.cs"] = { link = "Field", },

		Attribute = { fg = colors.attribute, },
		["@tag.attribute"] = { link = "Attribute", },
		["@attribute"] = { link = "Attribute", },
		["@attribute.builtin"] = { link = "Attribute", },

		["@lsp.type.extensionMethod"] = { link = "Function", },

		LspLens = { fg = colors.lspLens, },

		-- variable types
		String = { fg = variable_type_colors.string, },
		["@lsp.type.string"] = { link = "String", },
		["@String"] = { link = "String", },
		["@stringEscape"] = { fg = variable_type_colors.stringEscape, },
		["@string.escape"] = { link = "@stringEscape", },

		Number = { fg = variable_type_colors.number, },
		["@lsp.type.number"] = { link = "Number", },
		["@number"] = { link = "Number", },
		["@number.float"] = { link = "Number", },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	print("Rider Dark Theme loaded")
end

return M
