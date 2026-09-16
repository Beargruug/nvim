function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#000000" })
end

return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		config = function()
			require("kanagawa").setup({
				undercurl = true,
				commentStyle = { italic = false },
				functionStyle = { italic = false },
				keywordStyle = { italic = false },
				statementStyle = { bold = true, italic = false },
				typeStyle = {},
				variablebuiltinStyle = { italic = false },
				specialReturn = true,
				specialException = true,
				transparent = false,
				dimInactive = false,
				globalStatus = false,
				terminalColors = true,
			})

			vim.cmd("colorscheme kanagawa")
			ColorMyPencils("kanagawa")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "diff",
				callback = function()
					vim.cmd("syntax enable")
					vim.bo.syntax = "diff"
				end,
			})

			-- ColorMyPencils()
		end,
	},
}
