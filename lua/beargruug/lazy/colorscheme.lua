function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
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

			-- vim.cmd("colorscheme kanagawa-wave")
			-- ColorMyPencils("kanagawa-wave")
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

			ColorMyPencils()
		end,
	},
}
